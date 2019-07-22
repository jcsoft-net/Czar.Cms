using System;

namespace Czar.Cms.ViewModels
{
    /// <summary>
    /// 页面显示的实体
    /// </summary>
    public class TaskInfoDto
    {
        public Int32 Id { get; set; }

        public String Name { get; set; }

        public String Group { get; set; }

        public String Description { get; set; }

        public String Assembly { get; set; }

        public String ClassName { get; set; }

        public Int32 Status { get; set; }

        public String Cron { get; set; }

    }
}
