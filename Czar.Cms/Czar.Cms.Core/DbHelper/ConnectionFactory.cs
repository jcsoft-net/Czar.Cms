using Czar.Cms.Core.Extensions;
using Czar.Cms.Core.Models;
using MySql.Data.MySqlClient;
using Npgsql;
using System;
using System.Data;
using System.Data.SqlClient;

namespace Czar.Cms.Core.DbHelper
{
    /// <summary>
    /// 数据库连接工厂
    /// </summary>
    public class ConnectionFactory
    {
        /// <summary>
        /// 获取数据库连接
        /// </summary>
        /// <param name="dbType">数据库类型</param>
        /// <param name="strConn">数据库连接字符串</param>
        /// <returns>数据库连接</returns>
        public static IDbConnection CreateConnection(string strType, string strConn)
        {

            if (strType.IsNullOrWhiteSpace())
                throw new ArgumentNullException("数据库类型不能为空！");
            if (strConn.IsNullOrWhiteSpace())
                throw new ArgumentNullException("数据库连接字符串不能为空！");

            var dbType = GetDataBaseType(strType);

            return CreateConnection(dbType, strConn);

        }

        /// <summary>
        /// 获取数据库连接
        /// </summary>
        /// <param name="dbType">数据库类型</param>
        /// <param name="strConn">数据库连接字符串</param>
        /// <returns>数据库连接</returns>
        public static IDbConnection CreateConnection(DatabaseType dbType, string strConn)
        {
            IDbConnection connection = null;
            if (strConn.IsNullOrWhiteSpace())
                throw new ArgumentNullException("数据库连接字符串不能为空！");

            switch (dbType)
            {
                case DatabaseType.SqlServer:
                    connection = new SqlConnection(strConn);
                    break;
                case DatabaseType.MySQL:
                    connection = new MySqlConnection(strConn);
                    break;
                case DatabaseType.PostgreSQL:
                    connection = new NpgsqlConnection(strConn);
                    break;
                default:
                    throw new ArgumentNullException($"还不支持的{dbType.ToString()}数据库类型");
            }

            if (connection.State == ConnectionState.Closed)
            {
                connection.Open();
            }

            return connection;
        }


        /// <summary>
        /// 转换数据库类型
        /// </summary>
        /// <param name="dbtype">数据库类型字符串</param>
        /// <returns>数据库类型</returns>
        public static DatabaseType GetDataBaseType(string strType)
        {
            if (strType.IsNullOrWhiteSpace())
                throw new ArgumentNullException("数据库类型不能为空！");

            DatabaseType returnValue = DatabaseType.SqlServer;

            foreach (DatabaseType dbType in Enum.GetValues(typeof(DatabaseType)))
            {
                if (dbType.ToString().Equals(strType, StringComparison.OrdinalIgnoreCase))
                {
                    returnValue = dbType;
                    break;
                }
            }

            return returnValue;
        }
    }
}
