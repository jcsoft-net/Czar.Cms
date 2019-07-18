using Czar.Cms.Core.CodeGenerator;
using Czar.Cms.Core.Models;
using Czar.Cms.Core.Options;
using Czar.Cms.Core.Repository;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using System;

namespace Czar.Cms.Test
{
    public class Common
    {
        /// <summary>
        /// 构造依赖注入容器，然后传入参数
        /// </summary>
        /// <returns></returns>
        public static IServiceProvider BuildServiceForSqlServer()
        {
            var services = new ServiceCollection();

            services.Configure<CodeGenerateOption>(options =>
            {
                options.ConnectionString = "Data Source=.;Initial Catalog=CzarCms;User ID=Zjf;Password=zjf123456;Persist Security Info=True;Max Pool Size=50;Min Pool Size=0;Connection Lifetime=300;";
                options.DbType = DatabaseType.SqlServer.ToString();//数据库类型是SqlServer,其他数据类型参照枚举DatabaseType
                options.Author = "zjf";//作者名称
                options.OutputPath = "C:\\CzarCmsCodeGenerator";//模板代码生成的路径
                options.ModelsNamespace = "Czar.Cms.Models";//实体命名空间
                options.IRepositoryNamespace = "Czar.Cms.IRepository";//仓储接口命名空间
                options.RepositoryNamespace = "Czar.Cms.Repository.SqlServer";//仓储命名空间
                options.IServicesNamespace = "Czar.Cms.IServices";//服务接口命名空间
                options.ServicesNamespace = "Czar.Cms.Services";//服务命名空间


            });

            services.Configure<DbOption>("CzarCms", GetConfiguration().GetSection("DbOpion"));
            //services.AddScoped<IArticleRepository, ArticleRepository>();
            //services.AddScoped<IArticleCategoryRepository, IArticleCategoryRepository>();
            services.AddScoped<IUnitOfWork, UnitOfWork>();
            services.AddScoped<CodeGenerator>();

            return services.BuildServiceProvider(); //构建服务提供程序
        }

        public static IConfiguration GetConfiguration()
        {
            var builder = new ConfigurationBuilder()
               .SetBasePath(AppContext.BaseDirectory)
               .AddJsonFile("appsettings.json", optional: true, reloadOnChange: true)
               .AddEnvironmentVariables();
            return builder.Build();
        }
    }
}
