using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Czar.Cms.Models
{
    public partial class Article
    {
        public int Id { get; set; }

        public int CategoryId { get; set; }

        [Required]
        [StringLength(128)]
        public string Title { get; set; }

        [StringLength(128)]
        public string ImageUrl { get; set; }

        [Column(TypeName = "text")]
        [StringLength(65535)]
        public string Content { get; set; }

        public int ViewCount { get; set; }

        public int Sort { get; set; }

        [StringLength(64)]
        public string Author { get; set; }

        [StringLength(128)]
        public string Source { get; set; }

        [StringLength(128)]
        public string SeoTitle { get; set; }

        [StringLength(256)]
        public string SeoKeyword { get; set; }

        [StringLength(512)]
        public string SeoDescription { get; set; }

        public int AddManagerId { get; set; }

        public DateTime? AddTime { get; set; }

        public int? ModifyManagerId { get; set; }

        public DateTime? ModifyTime { get; set; }

        public bool IsTop { get; set; }

        public bool IsSlide { get; set; }

        public bool IsRed { get; set; }

        public bool IsPublish { get; set; }

        public bool IsDeleted { get; set; }

        public virtual ArticleCategory ArticleCategory { get; set; }
    }
}
