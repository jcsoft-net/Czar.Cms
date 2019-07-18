using Czar.Cms.Core.Repository;
using Czar.Cms.IRepository;
using Czar.Cms.Models;
using System;

namespace Czar.Cms.Repository.SqlServer
{
    public class ArticleRepository : BaseRepository<Article, Int32>, IArticleRepository
    {

    }
}
