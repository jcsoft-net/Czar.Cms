/**
*　描    述：后台管理员角色                                                    
*　作    者：zjf                                              
*　版    本：1.0   模板代码自动生成                                              
*　创建时间：2019-07-19 13:50:45                           
*　命名空间： Czar.Cms.IServices                                   
*　接口名称： IManagerRoleRepository                                      
*/
using Czar.Cms.Models;
using Czar.Cms.ViewModels;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace Czar.Cms.IServices
{
    public interface IManagerRoleService
    {
        /// <summary>
        /// 根据查询条件获取数据
        /// </summary>
        /// <param name="model">查询实体</param>
        /// <returns>table数据</returns>
        Task<TableDataModel> LoadDataAsync(ManagerRoleRequestModel model);

        /// <summary>
        /// 新增或者修改服务
        /// </summary>
        /// <param name="item">新增或者修改试图实体</param>
        /// <returns>结果实体</returns>
        Task<BaseResult> AddOrModifyAsync(ManagerRoleAddOrModifyModel item);

        /// <summary>
        /// 批量删除
        /// </summary>
        /// <param name="Ids">主键id数组</param>
        /// <returns>结果实体</returns>
        Task<BaseResult> DeleteIdsAsync(int[] roleId);

        /// <summary>
        /// 根据条件获取数据
        /// </summary>
        /// <param name="model">查询实体</param>
        /// <returns>table数据</returns>
        Task<List<ManagerRole>> GetListByConditionAsync(ManagerRoleRequestModel model);

        /// <summary>
        /// 通过角色ID获取角色分配的菜单列表
        /// </summary>
        /// <param name="roleId">角色主键</param>
        /// <returns></returns>
        Task<List<MenuNavView>> GetMenusByRoleIdAsync(int roleId);
    }
}