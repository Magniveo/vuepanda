using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace VOL.Entity
{
    public class EntityAttribute : Attribute
    {
        /// <summary>
        /// 真实WorkTable(Data库WorkTable，若没有填写默认实体为WorkTable)
        /// </summary>
        public string TableName { get; set; }
        /// <summary>
        /// WorkTableName
        /// </summary>
        public string TableCnName { get; set; }
        /// <summary>
        /// 子Table
        /// </summary>
        public Type[] DetailTable { get; set; }
        /// <summary>
        /// 子WorkTableName
        /// </summary>
        public string DetailTableCnName { get; set; }
        /// <summary>
        /// Data库
        /// </summary>
        public string DBServer { get; set; }

        //是否开启UserDataAuthority,true=User只能Operation自己(及下级Role_Id)创建的Data,如:Query、Del、修改等Operation
        public bool CurrentUserPermission { get; set; }

        public Type ApiInput { get; set; }
        public Type ApiOutput { get; set; }
    }
}
