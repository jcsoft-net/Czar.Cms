/**
*　描    述：文章分类                                                    
*　作    者：zjf                                            
*　版    本：1.0    模板代码自动生成                                                
*　创建时间：2019-07-19 13:50:45                             
*　命名空间： Czar.Cms.Services                                  
*　类    名： ArticleCategoryService                                    
*/
using Czar.Cms.IRepository;
using Czar.Cms.IServices;
using System;
using System.Collections.Generic;
using System.Text;

namespace Czar.Cms.Services
{
    public class ArticleCategoryService: IArticleCategoryService
    {
        private readonly IArticleCategoryRepository _repository;

        public ArticleCategoryService(IArticleCategoryRepository repository)
        {
            _repository = repository;
        }
    }
}