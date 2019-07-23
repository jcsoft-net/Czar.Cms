using System;
using System.ComponentModel.DataAnnotations;

namespace Czar.Cms.Models
{
    public partial class TaskInfo
    {
        public int Id { get; set; }

        [Required]
        [StringLength(128)]
        public string Name { get; set; }

        [Required]
        [StringLength(128)]
        public string Group { get; set; }

        [StringLength(256)]
        public string Description { get; set; }

        [Required]
        [StringLength(256)]
        public string Assembly { get; set; }

        [Required]
        [StringLength(256)]
        public string ClassName { get; set; }

        public int Status { get; set; }

        [Required]
        [StringLength(128)]
        public string Cron { get; set; }

        public DateTime? StartTime { get; set; }

        public DateTime? EndTime { get; set; }

        public DateTime? NextTime { get; set; }

        public DateTime? AddTime { get; set; }

        public int AddManagerId { get; set; }

        public bool IsDelete { get; set; }
    }
}
