using Microsoft.Extensions.Logging;
using System;
using System.Threading.Tasks;

namespace Czar.Cms.Core.Helper
{
    /// <summary>
    /// 委托帮助类
    /// </summary>
    public class DelegateHelper
    {
        private readonly ILogger<DelegateHelper> Logger;
        public DelegateHelper(ILogger<DelegateHelper> logger = null)
        {
            Logger = logger;
        }
       
        public void TryExecute(Action action, string funcName = null)
        {
            try
            {
                action();
            }
            catch (Exception ex)
            {
                Logger.LogError(ex, $"{funcName}() Blow Up.");
            }
        }

        public T TryExecute<T>(Func<T> func, string funcName = null)
        {
            try
            {
                return func();
            }
            catch (Exception ex)
            {
                Logger.LogError( ex, $"{funcName}() Blow Up.");
                return default(T);
            }
        }

        public async Task<T> TryExecuteAsync<T>(Func<Task<T>> func, string funcName = null)
        {
            try
            {
                return await func();
            }
            catch (Exception ex)
            {
                Logger.LogError(ex, $"{funcName}() Blow Up.");
                return default(T);
            }
        }

    }
}
