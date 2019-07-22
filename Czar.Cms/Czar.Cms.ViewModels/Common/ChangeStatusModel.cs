using System;

namespace Czar.Cms.ViewModels
{
    /// <summary>
    /// Manager改变锁定状态实体   
    /// </summary>
    public class ChangeStatusModel
    {
        /// <summary>
        /// 主键
        /// </summary>
        public Int32 Id { get; set; }

        /// <summary>
        /// 修改后的状态
        /// </summary>
        public Boolean Status { get; set; }
    }
}
