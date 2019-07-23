using Czar.Cms.Admin.Models;
using Czar.Cms.Core.Extensions;
using Czar.Cms.Core.Helper;
using Czar.Cms.IServices;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Diagnostics;
using System.Linq;
using System.Security.Claims;
using System.Threading.Tasks;

namespace Czar.Cms.Admin.Controllers
{
    public class HomeController : BaseController
    {
        private readonly IManagerRoleService _managerRoleService;

        public HomeController(IManagerRoleService managerRoleService)
        {
            _managerRoleService = managerRoleService;
        }

        /// <summary>
        /// 主界面
        /// </summary>
        /// <returns></returns>
        public IActionResult Index()
        {
            ViewData["NickName"] = User.Claims.FirstOrDefault(x => x.Type == "NickName")?.Value;
            ViewData["Avatar"] = User.Claims.FirstOrDefault(x => x.Type == "Avatar")?.Value;
            return View();
        }

        /// <summary>
        /// 控制中心
        /// </summary>
        /// <returns></returns>
        public IActionResult Main()
        {
            ViewData["LoginCount"] = User.Claims.FirstOrDefault(x => x.Type == "LoginCount")?.Value;
            ViewData["LoginLastIp"] = User.Claims.FirstOrDefault(x => x.Type == "LoginLastIp")?.Value;
            ViewData["LoginLastTime"] = User.Claims.FirstOrDefault(x => x.Type == "LoginLastTime")?.Value;
            return View();
        }

        [ActionName("GetMenu")]
        public async Task<string> GetMenuAsync()
        {
            var roleId = User.Claims.FirstOrDefault(x => x.Type == ClaimTypes.Role)?.Value;
            var navViewTree = (await _managerRoleService.GetMenusByRoleIdAsync(Int32.Parse(roleId))).GenerateTree(x => x.Id, x => x.ParentId);
            return JsonHelper.ObjectToJSON(navViewTree);
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }

    }
}
