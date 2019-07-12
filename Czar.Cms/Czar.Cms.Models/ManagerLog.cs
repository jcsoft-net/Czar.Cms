using System;
using System.ComponentModel.DataAnnotations;

namespace Czar.Cms.Models
{
    public class ManagerLog
    {
        public int Id { get; set; }

        [StringLength(32)]
        public string ActionType { get; set; }

        public int AddManageId { get; set; }

        [StringLength(64)]
        public string AddManagerNickName { get; set; }

        public DateTime? AddTime { get; set; }

        [StringLength(64)]
        public string AddIp { get; set; }

        [StringLength(256)]
        public string Remark { get; set; }

        public virtual Manager Manager { get; set; }
    }
}
