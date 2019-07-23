using System.ComponentModel.DataAnnotations;

namespace Czar.Cms.Models
{
    public partial class RolePermission
    {
        public int Id { get; set; }

        public int RoleId { get; set; }

        public int MenuId { get; set; }

        [StringLength(128)]
        public string Permission { get; set; }

        public virtual ManagerRole ManagerRole { get; set; }

        public virtual Menu Menu { get; set; }
    }
}
