﻿using AutoMapper;
using Czar.Cms.Models;
using Czar.Cms.ViewModels;

namespace Czar.Cms.Admin.Profiles
{
    public class MapperProfiles:Profile
    {
        public MapperProfiles()
        {
            #region ManagerRole
            CreateMap<ManagerRoleAddOrModifyModel, ManagerRole>();
            CreateMap<ManagerRole, ManagerRoleListModel>();
            #endregion

            #region Manager
            CreateMap<Manager, ManagerListModel>();
            CreateMap<ManagerAddOrModifyModel, Manager>();
            CreateMap<ChangeInfoModel, Manager>();
            #endregion
            
            #region Menu
            CreateMap<MenuAddOrModifyModel, Menu>();
            CreateMap<Menu, MenuNavView>();
            #endregion
          
            #region TaskInfo
            CreateMap<TaskInfoAddOrModifyModel, TaskInfo>();
            CreateMap<TaskInfo, TaskInfoDto>();
            #endregion

            #region Article
            CreateMap<Article, ArticleListModel>();
            #endregion
        }
    }
}
