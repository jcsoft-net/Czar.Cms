using Alexinea.Autofac.Extensions.DependencyInjection;
using Autofac;
using AutoMapper;
using Czar.Cms.Admin.Filter;
using Czar.Cms.Admin.Validation;
using Czar.Cms.Core.Options;
using Czar.Cms.IServices;
using Czar.Cms.Quartz;
using Czar.Cms.Repository.SqlServer;
using Czar.Cms.Services;
using Czar.Cms.ViewModels;
using FluentValidation.AspNetCore;
using Microsoft.AspNetCore.Authentication.Cookies;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Logging;
using NLog;
using NLog.Extensions.Logging;
using NLog.Web;
using System;
using System.Linq;

namespace Czar.Cms.Admin
{
    public class Startup
    {
        private readonly Logger logger = LogManager.GetCurrentClassLogger();

        public Startup(IConfiguration configuration, IHostingEnvironment env)
        {
            env.ConfigureNLog("Nlog.config");
            Configuration = configuration;
        }

        public IConfiguration Configuration { get; }

        // This method gets called by the runtime. Use this method to add services to the container.
        //配置应用服务
        public IServiceProvider ConfigureServices(IServiceCollection services)
        {
  
            services.Configure<DbOption>("CzarCms", Configuration.GetSection("DbOpion"));

            services.AddMemoryCache();

            services.Configure<CookiePolicyOptions>(options =>
            {
                // This lambda determines whether user consent for non-essential cookies is needed for a given request.
                options.CheckConsentNeeded = context => false;
                options.MinimumSameSitePolicy = SameSiteMode.None;
            });

            services.AddAuthentication(CookieAuthenticationDefaults.AuthenticationScheme)
                .AddCookie(options =>
                {
                    options.LoginPath = "/Account/Index";
                    options.LogoutPath = "/Account/Logout";
                    options.ExpireTimeSpan = TimeSpan.FromMinutes(5);
                });

            services.AddSession(options =>
            {
                options.IdleTimeout = TimeSpan.FromMinutes(5);
                options.Cookie.HttpOnly = true;
            });

            services.AddAntiforgery(options =>
            {
                // Set Cookie properties using CookieBuilder properties†.
                options.FormFieldName = "AntiforgeryKey_yilezhu";
                options.HeaderName = "X-CSRF-TOKEN-yilezhu";
                options.SuppressXFrameOptionsHeader = false;
            });


            services.AddMvc(option =>
            {
                option.Filters.Add(new GlobalExceptionFilter());

            }).SetCompatibilityVersion(CompatibilityVersion.Version_2_2)
            .AddControllersAsServices()
            .AddFluentValidation(fv =>
            {
                //程序集方式引入
                fv.RegisterValidatorsFromAssemblyContaining<ManagerRoleValidation>();
                //去掉其他的验证，只使用FluentValidation的验证规则
                fv.RunDefaultMvcValidationAfterFluentValidationExecutes = false;
            });

            //DI了AutoMapper中需要用到的服务，其中包括AutoMapper的配置类 Profile

            services.AddAutoMapper();

            services.AddSingleton<ScheduleCenter>();

            var builder = new ContainerBuilder();

            builder.Populate(services);

            builder.RegisterAssemblyTypes(typeof(ManagerRoleRepository).Assembly)
                   .Where(t => t.Name.EndsWith("Repository"))
                   .AsImplementedInterfaces();

            builder.RegisterAssemblyTypes(typeof(ManagerRoleService).Assembly)
                 .Where(t => t.Name.EndsWith("Service"))
                 .AsImplementedInterfaces();

            return new AutofacServiceProvider(builder.Build());
        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        //使用此方法配置HTTP请求管道
        public void Configure(IApplicationBuilder app,
            IHostingEnvironment env,
            ILoggerFactory loggerFactory,
            IApplicationLifetime applicationLifetime)
        {
            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
            }
            else
            {
                app.UseExceptionHandler("/Home/Error");
                // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
                app.UseHsts();
            }

            try
            {
                var jobInfoAppService = app.ApplicationServices.GetRequiredService<ITaskInfoService>();
                var scheduleCenter = app.ApplicationServices.GetRequiredService<ScheduleCenter>();

                applicationLifetime.ApplicationStarted.Register(async () =>
                {
                    var list = await jobInfoAppService.GetListByJobStatuAsync((int)TaskInfoStatus.SystemStopped);
                    if (list?.Count() > 0)
                    {
                        list.ForEach(async x =>
                        {
                            await scheduleCenter.AddJobAsync(x.Name,
                                                    x.Group,
                                                    x.ClassName,
                                                    x.Assembly,
                                                    x.Cron);
                        });

                        await jobInfoAppService.ResumeSystemStoppedAsync();
                    }

                });

                applicationLifetime.ApplicationStopping.Register(async () =>
                {
                    var list = await jobInfoAppService.GetListByJobStatuAsync((int)TaskInfoStatus.Running);
                    if (list?.Count() > 0)
                    {
                        await jobInfoAppService.SystemStoppedAsync();
                        list.ForEach(async x =>
                        {
                            await scheduleCenter.DeleteJobAsync(x.Name, x.Group);
                        });
                    }


                });
            }
            catch (Exception ex)
            {

                logger.Error(ex, nameof(Startup));
            }

            app.UseStaticFiles();
            app.UseCookiePolicy();
            app.UseSession();

            //在一般的asp.net core web 项目中，我们一般把身份认证中间件放在 静态文件中间件之后，Mvc中间件之前
            //这样做的目的很简单，仅对需要认证的部分做认证
            //在http请求到达 mvc中间件之前，也就是进入我们写的逻辑代码之前，身份认证就结束了，也就是说，身份认证不能在 controller action中控制
            app.UseAuthentication();

            //add NLog to ASP.NET Core
            loggerFactory.AddNLog();

            app.UseMvc(routes =>
            {
                routes.MapRoute(
                    name: "default",
                    template: "{controller=Home}/{action=Index}/{id?}");
            });
        }
    }
}
