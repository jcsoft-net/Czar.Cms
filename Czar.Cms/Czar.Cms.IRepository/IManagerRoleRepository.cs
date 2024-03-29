/**
*　描    述：后台管理员角色                                                    
*　作    者：zjf                                              
*　版    本：1.0   模板代码自动生成                                              
*　创建时间：2019-07-19 13:50:45                           
*　命名空间： Czar.Cms.IRepository                                   
*　接口名称： IManagerRoleRepository                                      
*/
using Czar.Cms.Core.Repository;
using Czar.Cms.Models;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace Czar.Cms.IRepository
{
    public interface IManagerRoleRepository : IBaseRepository<ManagerRole, Int32>
    {
	     /// <summary>
        /// 逻辑删除返回影响的行数
        /// </summary>
        /// <param name="ids">需要删除的主键数组</param>
        /// <returns>影响的行数</returns>
        Int32 DeleteLogical(Int32[] ids);

        /// <summary>
        /// 逻辑删除返回影响的行数（异步操作）
        /// </summary>
        /// <param name="ids">需要删除的主键数组</param>
        /// <returns>影响的行数</returns>
        Task<Int32> DeleteLogicalAsync(Int32[] ids);

        /// <summary>
        /// 根据主键获取名称
        /// </summary>
        /// <param name="id">主键</param>
        /// <returns>名称</returns>
        string GetNameById(int id);
        /// <summary>
        /// 根据主键获取名称（异步操作）
        /// </summary>
        /// <param name="id">主键</param>
        /// <returns>名称</returns>
        Task<string> GetNameByIdAsync(int id);

        /// <summary>
        /// 事务新增,并保存关联表数据
        /// </summary>
        /// <param name="model">实体对象</param>
        /// <returns></returns>
        Task<int?> InsertByTransAsync(ManagerRole model);

        /// <summary>
        /// 事务修改，并保存关联表数据
        /// </summary>
        /// <param name="model">实体对象</param>
        /// <returns></returns>
        Task<int> UpdateByTransAsync(ManagerRole model);

        /// <summary>
        /// 通过角色ID获取角色分配的菜单列表
        /// </summary>
        /// <param name="roleId">角色主键</param>
        /// <returns></returns>
        Task<List<Menu>> GetMenusByRoleIdAsync(int roleId);
    }
}