using System;
using System.Collections.Generic;
using System.Text;
using VOL.Core.ManageUser;

namespace VOL.Core.Tenancy
{
    public static class TenancyManager<T> where T : class
    {
        /// <summary>
        /// Data库WorkTable
        /// </summary>
        /// <param name="tableName"></param>
        /// <returns></returns>
        public static string GetSearchQueryable(string tableName)
        {
            string multiTenancyString = $"select * from {tableName}";
            //SuperAdministrator不限制
            //if (UserContext.Current.IsSuperAdmin)
            //{
            //    return multiTenancyString;
            //}
            switch (tableName)
            {
                //例如：指定UserTable指定Query条件
                //case "Sys_User": 
                //    multiTenancyString += $" where UserId='{UserContext.Current.UserId}'";
                //    break;
                default:
                    //开启数租户Data隔离,User只能看到自己的TableData(自己根据需要写条件做租户Data隔离)
                    multiTenancyString += $" where CreateID='{UserContext.Current.UserId}'";
                    break;
            }
            return multiTenancyString;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="tableName">Data库WorkTable</param>
        /// <param name="ids">当前Operation的所有id</param>
        /// <param name="tableKey">主键字段</param>
        /// <returns></returns>
        public static string GetMultiTenancySql(string tableName, string ids, string tableKey)
        {
            //使用方法同上
            string multiTenancyString;
            switch (tableName)
            {
                default:
                    multiTenancyString = $"select count(*) FROM {tableName} " +
                       $" where CreateID='{UserContext.Current.UserId}'" +
                       $" and  { tableKey} in ({ids}) ";
                    break;
            }
            return multiTenancyString;
        }
    }
}
