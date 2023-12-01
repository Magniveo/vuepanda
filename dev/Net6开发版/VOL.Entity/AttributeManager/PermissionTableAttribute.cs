using System;

namespace VOL.Entity.AttributeManager
{
    public class PermissionTableAttribute : Attribute
    {
        /// <summary>
        /// 需要控制权限的WorkTable与Sys_Menu表的WorkTable必须一致
        /// </summary>
        public string Name { get; set; }
    }
}
