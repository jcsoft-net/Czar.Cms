using Czar.Cms.ViewModels;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Filters;
using NLog;
using System.Net;

namespace Czar.Cms.Admin.Filter
{
    /// <summary>
    /// 全局异常过滤k
    /// </summary>
    public class GlobalExceptionFilter : IExceptionFilter
    {
        public static Logger logger = LogManager.GetCurrentClassLogger();

        public void OnException(ExceptionContext context)
        {
            //logger.Error(context.Exception);


            var result = new BaseResult()
            {
                ResultCode = ResultCodeAddMsgKeys.CommonExceptionCode,//系统异常代码
                ResultMsg = ResultCodeAddMsgKeys.CommonExceptionMsg,//系统异常信息
            };

            context.Result = new ObjectResult(result);
            context.HttpContext.Response.StatusCode = (int)HttpStatusCode.InternalServerError;
            context.ExceptionHandled = true;
        }
    }
}
