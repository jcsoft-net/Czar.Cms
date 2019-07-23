/**
*　描    述：后台管理员角色                                                    
*　作    者：zjf                                              
*　版    本：1.0   模板代码自动生成                                              
*　创建时间：2019-07-22 15:47:55                            
*　命名空间: Czar.Cms.Models                                  
*　类    名：ManagerRole                                     
*/
using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Czar.Cms.Models
{
	/// <summary>
	/// zjf
	/// 2019-07-22 15:47:55
	/// 后台管理员角色
	/// </summary>
	public partial class ManagerRole
	{
        /// <summary>
        /// 菜单ID数组  
        /// </summary>
        public virtual int[] MenuIds { get; set; }
    }
}
