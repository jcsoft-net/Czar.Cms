using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace Czar.Cms.Models
{
    public class Menu
    {
        public Menu()
        {
            RolePermissions = new List<RolePermission>();
        }

        public int Id { get; set; }

        public int ParentId { get; set; }

        [Required]
        [StringLength(32)]
        public string Name { get; set; }

        [StringLength(128)]
        public string DisplayName { get; set; }

        [StringLength(128)]
        public string IconUrl { get; set; }

        [StringLength(128)]
        public string LinkUrl { get; set; }

        public int? Sort { get; set; }

        [StringLength(256)]
        public string Permission { get; set; }

        public bool IsDisplay { get; set; }

        public bool IsSystem { get; set; }

        public int AddManagerId { get; set; }

        public DateTime? AddTime { get; set; }

        public int? ModifyManagerId { get; set; }

        public DateTime? ModifyTime { get; set; }

        public bool IsDelete { get; set; }

        public virtual ICollection<RolePermission> RolePermissions { get; set; }
    }
}
