using Newtonsoft.Json;
/*
 *Author：jxx
 *Contact：283591387@qq.com
 *Date：2018-07-01
 * 此代码由框架生成，请勿随意更改
 */
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using VOL.Entity.SystemModels;

namespace VOL.Entity.DomainModels
{
    [Table("Sys_Role")]
    [EntityAttribute(TableCnName = "Role_Id管理")]
    public class Sys_Role : BaseEntity
    {
        /// <summary>
        ///Id
        /// </summary>
        [Key]
        [Display(Name = "Id")]
        [Column(TypeName = "int")]
        [Required(AllowEmptyStrings = false)]
        public int Role_Id { get; set; }

        /// <summary>
        ///ParentId
        /// </summary>
        [Display(Name = "ParentId")]
        [Column(TypeName = "int")]
        [Editable(true)]
        [Required(AllowEmptyStrings = false)]
        public int ParentId { get; set; }

        /// <summary>
        ///RoleName
        /// </summary>
        [Display(Name = "RoleName")]
        [MaxLength(50)]
        [Column(TypeName = "nvarchar(50)")]
        [Editable(true)]
        public string RoleName { get; set; }

        /// <summary>
        ///Dept_Id
        /// </summary>
        [Display(Name = "Dept_Id")]
        [Column(TypeName = "int")]
        [Editable(true)]
        public int? Dept_Id { get; set; }

        /// <summary>
        ///DeptName
        /// </summary>
        [Display(Name = "DeptName")]
        [MaxLength(50)]
        [Column(TypeName = "nvarchar(50)")]
        [Editable(true)]
        public string DeptName { get; set; }

        /// <summary>
        ///OrderNo
        /// </summary>
        [Display(Name = "OrderNo")]
        [Column(TypeName = "int")]
        [Editable(true)]
        public int? OrderNo { get; set; }

        /// <summary>
        ///Creator
        /// </summary>
        [Display(Name = "Creator")]
        [MaxLength(50)]
        [Column(TypeName = "nvarchar(50)")]
        [Editable(true)]
        public string Creator { get; set; }

        /// <summary>
        ///CreateDate
        /// </summary>
        [Display(Name = "CreateDate")]
        [Column(TypeName = "datetime")]
        [Editable(true)]
        public DateTime? CreateDate { get; set; }

        /// <summary>
        ///Modifier
        /// </summary>
        [Display(Name = "Modifier")]
        [MaxLength(50)]
        [Column(TypeName = "nvarchar(50)")]
        [Editable(true)]
        public string Modifier { get; set; }

        /// <summary>
        ///ModifyDate
        /// </summary>
        [Display(Name = "ModifyDate")]
        [Column(TypeName = "datetime")]
        [Editable(true)]
        public DateTime? ModifyDate { get; set; }

        /// <summary>
        ///
        /// </summary>
        [Display(Name = "DeleteBy")]
        [MaxLength(50)]
        [JsonIgnore]
        [Column(TypeName = "nvarchar(50)")]
        public string DeleteBy { get; set; }

        /// <summary>
        ///Enable
        /// </summary>
        [Display(Name = "Enable")]
        [Column(TypeName = "tinyint")]
        [Editable(true)]
        public byte? Enable { get; set; }
        [ForeignKey("Role_Id")]
        public List<Sys_RoleAuth> RoleAuths { get; set; }

    }
}

