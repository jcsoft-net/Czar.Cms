using Czar.Cms.Core.Repository;
using Czar.Cms.IRepository;
using Czar.Cms.Models;
using System;
using System.Threading.Tasks;

namespace Czar.Cms.Repository.SqlServer
{
    public class ArticleCategoryRepository : BaseRepository<ArticleCategory, Int32>, IArticleCategoryRepository
    {
      
    }
}
