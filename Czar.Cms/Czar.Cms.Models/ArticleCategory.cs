using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace Czar.Cms.Models
{

    public class ArticleCategory
    {

        public ArticleCategory()
        {
            Articles = new List<Article>();
        }

        public int Id { get; set; }

        [Required]
        [StringLength(128)]
        public string Title { get; set; }

        public int ParentId { get; set; }

        [StringLength(128)]
        public string ClassList { get; set; }

        public int? ClassLayer { get; set; }

        public int Sort { get; set; }

        [StringLength(128)]
        public string ImageUrl { get; set; }

        [StringLength(128)]
        public string SeoTitle { get; set; }

        [StringLength(256)]
        public string SeoKeywords { get; set; }

        [StringLength(512)]
        public string SeoDescription { get; set; }

        public bool IsDeleted { get; set; }

        public virtual ICollection<Article> Articles { get; set; }
    }
}
