using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace VOL.WebApi.Controllers.MqDataHandle
{

    /// <summary>
    /// Data处理
    /// </summary>
    public class DataHandle
    {
        /// <summary>
        /// 构造  可注入service服务Executedb
        /// </summary>
        public DataHandle()
        {

        }

        /// <summary>
        /// 报警Data处理
        /// </summary>
        /// <param name="data"></param>
        /// <returns></returns>
        internal static bool AlarmData(string data)
        {
            //dapper入库或Other业务Operation

            return true;
        }

    }
}
