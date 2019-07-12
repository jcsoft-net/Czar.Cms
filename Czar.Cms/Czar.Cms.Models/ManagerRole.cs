using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace Czar.Cms.Models
{
    public class ManagerRole
    {
        public ManagerRole()
        {
            Managers = new List<Manager>();
            RolePermissions = new List<RolePermission>();
        }

        public int Id { get; set; }

        [Required]
        [StringLength(64)]
        public string RoleName { get; set; }

        public int RoleType { get; set; }

        public bool IsSystem { get; set; }

        public int AddManagerId { get; set; }

        public DateTime? AddTime { get; set; }

        public int? ModifyManagerId { get; set; }

        public DateTime? ModifyTime { get; set; }

        public bool IsDelete { get; set; }

        [StringLength(128)]
        public string Remark { get; set; }

        public virtual ICollection<Manager> Managers { get; set; }

        public virtual ICollection<RolePermission> RolePermissions { get; set; }
    }
}
