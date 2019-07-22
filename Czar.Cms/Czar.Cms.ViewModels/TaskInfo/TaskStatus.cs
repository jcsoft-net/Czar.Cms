using System.ComponentModel;

namespace Czar.Cms.ViewModels
{
    /// <summary>
    /// 任务执行状态
    /// </summary>
    public enum TaskInfoStatus : byte
    {
        [Description("执行中")]
        Running,
        [Description("已完成")]
        Completed,
        [Description("已停止")]
        Stopped,
        [Description("系统停止")]
        SystemStopped,
    }
}
