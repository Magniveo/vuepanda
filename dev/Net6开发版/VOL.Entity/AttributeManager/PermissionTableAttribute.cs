using System;

namespace VOL.Entity.AttributeManager
{
    public class PermissionTableAttribute : Attribute
    {
        /// <summary>
        /// 需要控制Authority的WorkTableWithSys_MenuTable的WorkTable必须一致
        /// </summary>
        public string Name { get; set; }
    }
}
