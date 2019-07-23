using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace Czar.Cms.Models
{
    public partial class Manager
    {
        public Manager()
        {
            ManagerLogs = new List<ManagerLog>();
        }

        public int Id { get; set; }

        public int RoleId { get; set; }

        [Required]
        [StringLength(32)]
        public string UserName { get; set; }

        [Required]
        [StringLength(128)]
        public string Password { get; set; }

        [StringLength(256)]
        public string Avatar { get; set; }

        [StringLength(32)]
        public string NickName { get; set; }

        [StringLength(16)]
        public string Mobile { get; set; }

        [StringLength(128)]
        public string Email { get; set; }

        public int? LoginCount { get; set; }

        [StringLength(64)]
        public string LoginLastIp { get; set; }

        public DateTime? LoginLastTime { get; set; }

        public int AddManagerId { get; set; }

        public DateTime? AddTime { get; set; }

        public int? ModifyManagerId { get; set; }

        public DateTime? ModifyTime { get; set; }

        public bool IsLock { get; set; }

        public bool IsDelete { get; set; }

        [StringLength(128)]
        public string Remark { get; set; }

        public virtual ManagerRole ManagerRole { get; set; }

        public virtual ICollection<ManagerLog> ManagerLogs { get; set; }
    }
}
