using Czar.Cms.Core.Repository;
using Czar.Cms.Models;
using System;
using System.Threading.Tasks;

namespace Czar.Cms.IRepository
{
    /// <summary>
    /// 文章分类
    /// </summary>
    public interface IArticleCategoryRepository : IBaseRepository<ArticleCategory, Int32>
    {
    

    }
}
