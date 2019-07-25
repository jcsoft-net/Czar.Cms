﻿using Czar.Cms.Admin.Validation;
using Czar.Cms.Core.Extensions;
using Czar.Cms.Core.Helper;
using Czar.Cms.IServices;
using Czar.Cms.ViewModels;
using FluentValidation.Results;
using Microsoft.AspNetCore.Authentication;
using Microsoft.AspNetCore.Authentication.Cookies;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.IO;
using System.Security.Claims;
using System.Threading.Tasks;


namespace Czar.Cms.Admin.Controllers
{
    public class AccountController : Controller
    {
        private readonly string CaptchaCodeSessionName = "CaptchaCode";
        private readonly string ManagerSignInErrorTimes = "ManagerSignInErrorTimes";
        private readonly int MaxErrorTimes = 3;
        private readonly IManagerService _service;

        public AccountController(IManagerService service)
        {
            _service = service;
        }

        public IActionResult Index()
        {
            return View();
        }

        [HttpPost, ValidateAntiForgeryToken, Route("Account/SignIn")]
        public async Task<string> SignInAsync(LoginModel model)
        {
            BaseResult result = new BaseResult();

            #region 判断验证码
            if (!ValidateCaptchaCode(model.CaptchaCode))
            {
                result.ResultCode = ResultCodeAddMsgKeys.SignInCaptchaCodeErrorCode;
                result.ResultMsg = ResultCodeAddMsgKeys.SignInCaptchaCodeErrorMsg;
                return JsonHelper.ObjectToJSON(result);
            }
            #endregion

            #region 判断错误次数
            var ErrorTimes = HttpContext.Session.GetInt32(ManagerSignInErrorTimes);

            if (ErrorTimes == null)
            {
                HttpContext.Session.SetInt32(ManagerSignInErrorTimes, 1);
                ErrorTimes = 1;
            }
            else
            {
                HttpContext.Session.SetInt32(ManagerSignInErrorTimes, ErrorTimes.Value + 1);
            }

            if (ErrorTimes > MaxErrorTimes)
            {
                result.ResultCode = ResultCodeAddMsgKeys.SignInErrorTimesOverTimesCode;
                result.ResultMsg = ResultCodeAddMsgKeys.SignInErrorTimesOverTimesMsg;
                return JsonHelper.ObjectToJSON(result);
            }
            #endregion

            #region 再次属性判断
            LoginModelValidation validation = new LoginModelValidation();
            ValidationResult results = validation.Validate(model);

            if (!results.IsValid)
            {
                result.ResultCode = ResultCodeAddMsgKeys.CommonModelStateInvalidCode;
                result.ResultMsg = results.ToString("||");
            }
            #endregion

            model.Ip = HttpContext.GetClientUserIp();
            var manager = await _service.SignInAsync(model);

            if (manager == null)
            {
                result.ResultCode = ResultCodeAddMsgKeys.SignInPasswordOrUserNameErrorCode;
                result.ResultMsg = ResultCodeAddMsgKeys.SignInPasswordOrUserNameErrorMsg;
            }
            else if (manager.IsLock)
            {
                result.ResultCode = ResultCodeAddMsgKeys.SignInUserLockedCode;
                result.ResultMsg = ResultCodeAddMsgKeys.SignInUserLockedMsg;
            }
            else
            {
                //.net core 认证信息
                var claims = new List<Claim>
                {
                    new Claim(ClaimTypes.Name, manager.UserName),
                    new Claim(ClaimTypes.Role, manager.RoleId.ToString()),
                    new Claim("Id",manager.Id.ToString()),
                    new Claim(ClaimTypes.Email,manager.Email??""),
                    new Claim(ClaimTypes.MobilePhone,manager.Mobile??""),
                    new Claim("LoginCount",manager.LoginCount.ToString()),
                    new Claim("LoginLastIp",manager.LoginLastIp),
                    new Claim("LoginLastTime",manager.LoginLastTime?.ToString("yyyy-MM-dd HH:mm:ss")),
                    new Claim("NickName",manager.NickName ?? "匿名"),
                    new Claim("Avatar",manager.Avatar ?? "/images/userface1.jpg"),
                };

                //.net core 生成认证
                var claimsIdentity = new ClaimsIdentity(claims, CookieAuthenticationDefaults.AuthenticationScheme);

                //.net core 认证持有者ClaimsPrincipal，生成Cookie
                await HttpContext.SignInAsync(CookieAuthenticationDefaults.AuthenticationScheme, new ClaimsPrincipal(claimsIdentity));
            }

            return JsonHelper.ObjectToJSON(result);
        }


        [Route("Account/SignOut")]
        public async Task<IActionResult> SignOutAsync()
        {
            await HttpContext.SignOutAsync(CookieAuthenticationDefaults.AuthenticationScheme);
            return RedirectToAction("Index");
        }

        public IActionResult GetCaptchaImage()
        {
            string captchaCode = CaptchaHelper.GenerateCaptchaCode();

            var result = CaptchaHelper.GetImage(116, 36, captchaCode);

            HttpContext.Session.SetString(CaptchaCodeSessionName, captchaCode);

            return new FileStreamResult(new MemoryStream(result.CaptchaByteData), "image/png");
        }

        private bool ValidateCaptchaCode(string userInputCaptcha)
        {
            var isValid = userInputCaptcha.Equals(HttpContext.Session.GetString(CaptchaCodeSessionName), StringComparison.OrdinalIgnoreCase);

            HttpContext.Session.Remove(CaptchaCodeSessionName);

            return isValid;
        }
    }
}