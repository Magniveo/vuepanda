using Newtonsoft.Json;
/*
 *代码由框架生成,任何更改都可能导致被代码生成器覆盖
 *如果数据库字段发生变化，请在代码生器重新生成此Model
 */
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using VOL.Entity.SystemModels;

namespace VOL.Entity.DomainModels
{
    [Entity(TableCnName = "UserManagement",TableName = "Sys_User",ApiInput = typeof(ApiSys_UserInput),ApiOutput = typeof(ApiSys_UserOutput))]
    public partial class Sys_User:BaseEntity
    {
        /// <summary>
       ///UserName
       /// </summary>
       [Display(Name ="UserName")]
       [MaxLength(100)]
       [Column(TypeName="nvarchar(100)")]
       [Editable(true)]
       [Required(AllowEmptyStrings=false)]
       public string UserName { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Key]
       [Display(Name ="User_Id")]
       [Column(TypeName="int")]
       [Required(AllowEmptyStrings=false)]
       public int User_Id { get; set; }

       /// <summary>
       ///Gender
       /// </summary>
       [Display(Name ="Gender")]
       [Column(TypeName="int")]
       [Editable(true)]
       public int? Gender { get; set; }

       /// <summary>
       ///HeadImageUrl
       /// </summary>
       [Display(Name ="HeadImageUrl")]
       [MaxLength(500)]
       [Column(TypeName="nvarchar(500)")]
       [Editable(true)]
       public string HeadImageUrl { get; set; }

       /// <summary>
       ///Dept_Id
       /// </summary>
       [Display(Name ="Dept_Id")]
       [Column(TypeName="int")]
       public int? Dept_Id { get; set; }

       /// <summary>
       ///Dept_Id
       /// </summary>
       [Display(Name ="Dept_Id")]
       [MaxLength(150)]
       [Column(TypeName="nvarchar(150)")]
       [Editable(true)]
       public string DeptName { get; set; }

       /// <summary>
       ///Role_Id
       /// </summary>
       [Display(Name ="Role_Id")]
       [Column(TypeName="int")]
       [Editable(true)]
       [Required(AllowEmptyStrings=false)]
       public int Role_Id { get; set; }

       /// <summary>
       ///Dept_Id
       /// </summary>
       [Display(Name ="Dept_Id")]
       [MaxLength(200)]
       [Column(TypeName="nvarchar(200)")]
       [Editable(true)]
       public string RoleName { get; set; }

       /// <summary>
       ///Token
       /// </summary>
       [Display(Name ="Token")]
       [MaxLength(500)]
       [Column(TypeName="nvarchar(500)")]
       [Editable(true)]
       public string Token { get; set; }

       /// <summary>
       ///AppType
       /// </summary>
       [Display(Name ="AppType")]
       [Column(TypeName="int")]
       [Editable(true)]
       public int? AppType { get; set; }

       /// <summary>
       ///DeptIds
       /// </summary>
       [Display(Name ="DeptIds")]
       [MaxLength(2000)]
       [Column(TypeName="nvarchar(2000)")]
       [Editable(true)]
       public string DeptIds { get; set; }

       /// <summary>
       ///UserTrueName
       /// </summary>
       [Display(Name ="UserTrueName")]
       [MaxLength(20)]
       [Column(TypeName="nvarchar(20)")]
       [Editable(true)]
       [Required(AllowEmptyStrings=false)]
       public string UserTrueName { get; set; }

       /// <summary>
       ///UserPwd
       /// </summary>
       [Display(Name ="UserPwd")]
       [MaxLength(200)]
       [JsonIgnore]
       [Column(TypeName="nvarchar(200)")]
       public string UserPwd { get; set; }

       /// <summary>
       ///CreateDate
       /// </summary>
       [Display(Name ="CreateDate")]
       [Column(TypeName="datetime")]
       public DateTime? CreateDate { get; set; }

       /// <summary>
       ///IsRegregisterPhone
       /// </summary>
       [Display(Name ="IsRegregisterPhone")]
       [Column(TypeName="int")]
       public int? IsRegregisterPhone { get; set; }

       /// <summary>
       ///PhoneNo
       /// </summary>
       [Display(Name ="PhoneNo")]
       [MaxLength(11)]
       [Column(TypeName="nvarchar(11)")]
       public string PhoneNo { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="Tel")]
       [MaxLength(20)]
       [Column(TypeName="nvarchar(20)")]
       public string Tel { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="CreateID")]
       [Column(TypeName="int")]
       public int? CreateID { get; set; }

       /// <summary>
       ///Creator
       /// </summary>
       [Display(Name ="Creator")]
       [MaxLength(200)]
       [Column(TypeName="nvarchar(200)")]
       public string Creator { get; set; }

       /// <summary>
       ///Enable
       /// </summary>
       [Display(Name ="Enable")]
       [Column(TypeName="tinyint")]
       [Editable(true)]
       [Required(AllowEmptyStrings=false)]
       public byte Enable { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="ModifyID")]
       [Column(TypeName="int")]
       public int? ModifyID { get; set; }

       /// <summary>
       ///Modifier
       /// </summary>
       [Display(Name ="Modifier")]
       [MaxLength(200)]
       [Column(TypeName="nvarchar(200)")]
       public string Modifier { get; set; }

       /// <summary>
       ///ModifyDate
       /// </summary>
       [Display(Name ="ModifyDate")]
       [Column(TypeName="datetime")]
       public DateTime? ModifyDate { get; set; }

       /// <summary>
       ///AuditStatus
       /// </summary>
       [Display(Name ="AuditStatus")]
       [Column(TypeName="int")]
       public int? AuditStatus { get; set; }

       /// <summary>
       ///Auditor
       /// </summary>
       [Display(Name ="Auditor")]
       [MaxLength(200)]
       [Column(TypeName="nvarchar(200)")]
       public string Auditor { get; set; }

       /// <summary>
       ///AuditDate
       /// </summary>
       [Display(Name ="AuditDate")]
       [Column(TypeName="datetime")]
       public DateTime? AuditDate { get; set; }

       /// <summary>
       ///LastLoginDate
       /// </summary>
       [Display(Name ="LastLoginDate")]
       [Column(TypeName="datetime")]
       public DateTime? LastLoginDate { get; set; }

       /// <summary>
       ///LastModifyPwdDate
       /// </summary>
       [Display(Name ="LastModifyPwdDate")]
       [Column(TypeName="datetime")]
       public DateTime? LastModifyPwdDate { get; set; }

       /// <summary>
       ///Address
       /// </summary>
       [Display(Name ="Address")]
       [MaxLength(200)]
       [Column(TypeName="nvarchar(200)")]
       [Editable(true)]
       public string Address { get; set; }

       /// <summary>
       ///Mobile
       /// </summary>
       [Display(Name ="Mobile")]
       [MaxLength(100)]
       [Column(TypeName="nvarchar(100)")]
       [Editable(true)]
       public string Mobile { get; set; }

       /// <summary>
       ///Email
       /// </summary>
       [Display(Name ="Email")]
       [MaxLength(100)]
       [Column(TypeName="nvarchar(100)")]
       [Editable(true)]
       public string Email { get; set; }

       /// <summary>
       ///Remark
       /// </summary>
       [Display(Name ="Remark")]
       [MaxLength(200)]
       [Column(TypeName="nvarchar(200)")]
       [Editable(true)]
       public string Remark { get; set; }

       /// <summary>
       ///OrderNo
       /// </summary>
       [Display(Name ="OrderNo")]
       [Column(TypeName="int")]
       [Editable(true)]
       public int? OrderNo { get; set; }

       
    }
}
