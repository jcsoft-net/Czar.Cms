/**
*　描    述：角色权限表                                                    
*　作    者：zjf                                              
*　版    本：1.0   模板代码自动生成                                              
*　创建时间：2019-07-19 13:50:45                           
*　命名空间： Czar.Cms.IServices                                   
*　接口名称： IRolePermissionRepository                                      
*/
using System;
using System.Collections.Generic;
using System.Text;

namespace Czar.Cms.IServices
{
    public interface IRolePermissionService
    {
        /// <summary>
        /// 通过角色主键获取菜单主键数组
        /// </summary>
        /// <param name="RoleId"></param>
        /// <returns></returns>
        int[] GetIdsByRoleId(int RoleId);
    }
}