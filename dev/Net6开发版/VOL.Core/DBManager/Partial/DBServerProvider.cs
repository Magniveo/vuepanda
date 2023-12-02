using System;
using System.Collections.Generic;
using System.Text;
using VOL.Core.Configuration;
using VOL.Core.Dapper;
using VOL.Core.Enums;

namespace VOL.Core.DBManager
{
    /// <summary>
    /// 2022.11.21增加OtherData库(sqlserver、mysql、pgsql、oracle)LineConfig说明
    /// 需要把两个DBServerProvider.cs文件都更新下
    /// </summary>
    public partial class DBServerProvider
    {
        ///// <summary>
        ///// Single独配置mysqlData库
        ///// </summary>
        //public static ISqlDapper SqlDapperMySql
        //{
        //    get
        //    {
        //        //读取appsettings.json中的配置
        //        string Data库连接字符串 = AppSetting.GetSettingString("key");
        //        return new SqlDapper(Data库连接字符串, DbCurrentType.MySql);

        //        //访问Data库方式
        //        //DBServerProvider.SqlDapperMySql.xx
        //    }
        //}


        ///// <summary>
        ///// 如果有多个不同的mysqlData库，这里再加一个配置
        ///// </summary>
        //public static ISqlDapper SqlDapperMySql2
        //{
        //    get
        //    {
        //        //读取appsettings.json中的配置
        //        string Data库连接字符串 = AppSetting.GetSettingString("key2");
        //        return new SqlDapper(Data库连接字符串, DbCurrentType.MySql);

        //        //访问Data库方式
        //        //DBServerProvider.SqlDapperMySql2.xx
        //    }
        //}

        ///// <summary>
        ///// Single独配置SqlServerData库
        ///// </summary>
        //public static ISqlDapper SqlDapperSqlServer
        //{
        //    get
        //    {
        //        //读取appsettings.json中的配置
        //        string Data库连接字符串 = AppSetting.GetSettingString("key");
        //        return new SqlDapper(Data库连接字符串, DbCurrentType.MsSql);

        //        //访问Data库方式
        //        //DBServerProvider.SqlDapperSqlServer.xx
        //    }
        //}
    }
}
