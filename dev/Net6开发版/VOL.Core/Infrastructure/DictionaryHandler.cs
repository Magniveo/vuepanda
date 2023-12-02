using Microsoft.AspNetCore.Http;
using System;
using System.Collections.Generic;
using System.Text;
using VOL.Core.Const;
using VOL.Core.Enums;
using VOL.Core.ManageUser;
using VOL.Core.UserManager;

namespace VOL.Core.Infrastructure
{
    public static class DictionaryHandler
    {
        /*2020.05.01增加根据User信息LoadDictionaryData源sql*/

        /// <summary>
        /// 获取CustomizeData源sql
        /// </summary>
        /// <param name="dicNo"></param>
        /// <param name="originalSql"></param>
        /// <returns></returns>
        public static string GetCustomDBSql(string dicNo, string originalSql)
        {
            switch (dicNo)
            {
                case "roles":
                //2020.05.24增加绑定tableTable时，获取所有的Role_IdList
                //注意，如果是2020.05.24之前获取的Data库脚本
                //请在DishSingle【Drop-down box binding settings】添加一个DicNo【t_roles】,除了DicNo，OtherContent随便填写
                case "t_roles":
                case "tree_roles":
                    originalSql = GetRolesSql(originalSql);
                    break;
                default:
                    break;
            }
            return originalSql;
        }

        /// <summary>
        /// 获取解决的Data源，只能看到自己With下级所有Role_Id
        /// </summary>
        /// <param name="context"></param>
        /// <param name="originalSql"></param>
        /// <returns></returns>
        public static string GetRolesSql(string originalSql)
        {
         
            if (UserContext.Current.IsSuperAdmin)
            {
                return originalSql;
            }

            int currnetRoleId = UserContext.Current.RoleId;
            List<int> roleIds = RoleContext.GetAllChildrenIds(currnetRoleId);
            roleIds.Add(currnetRoleId);
            if (DBType.Name == DbCurrentType.PgSql.ToString())
            {
                originalSql = $"SELECT \"Role_Id\" as key,\"Role_Id\" as id,\"RoleName\" as value,\"ParentId\" AS parentId from Sys_Role"
                   +$" where \"Role_Id\"  in ({string.Join(',', roleIds)})";
            }
            else {
                originalSql= $@"SELECT Role_Id as 'key',Role_Id AS id,ParentId AS parentId,RoleName as 'value' FROM Sys_Role 
                      WHERE Enable=1  and Role_Id in ({string.Join(',', roleIds)})"; 
            }
            return originalSql;
        }
    }
}
