using System;
using System.Collections.Generic;
using System.Text;

namespace VOL.Core.Filters
{
    public class ActionPermissionRequirement
    {
        /// <summary>
        /// 控制Device要Operation的Table
        /// </summary>
        public string TableName { get; set; } = string.Empty;
        /// <summary>
        /// 对Table的Operation/Del/Query等
        /// </summary>
        public string TableAction { get; set; } = string.Empty;
        /// <summary>
        /// 是否为框架定义的控制Device
        /// </summary>
        public bool SysController { get; set; }
        /// <summary>
        /// 限制只能由某些Role_Id访问
        /// </summary>
        public int[] RoleIds { get; set; }

        public bool IsApi { get; set; }
    }
}
