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
    [Entity(TableCnName = "审批节点",TableName = "Sys_WorkFlowTableStep")]
    public partial class Sys_WorkFlowTableStep:BaseEntity
    {
        /// <summary>
       ///
       /// </summary>
       [Key]
       [Display(Name ="Sys_WorkFlowTableStep_Id")]
       [Column(TypeName="uniqueidentifier")]
       [Required(AllowEmptyStrings=false)]
       public Guid Sys_WorkFlowTableStep_Id { get; set; }

       /// <summary>
       ///WorkFlowTable_Id
       /// </summary>
       [Display(Name ="WorkFlowTable_Id")]
       [Column(TypeName="uniqueidentifier")]
       [Required(AllowEmptyStrings=false)]
       public Guid WorkFlowTable_Id { get; set; }

       /// <summary>
       ///WorkFlow_Id
       /// </summary>
       [Display(Name ="WorkFlow_Id")]
       [Column(TypeName="uniqueidentifier")]
       public Guid? WorkFlow_Id { get; set; }

       /// <summary>
       ///StepId
       /// </summary>
       [Display(Name ="StepId")]
       [MaxLength(100)]
       [Column(TypeName="nvarchar(100)")]
       public string StepId { get; set; }

       /// <summary>
       ///节ExpertName
       /// </summary>
       [Display(Name ="节ExpertName")]
       [MaxLength(200)]
       [Column(TypeName="nvarchar(200)")]
       public string StepName { get; set; }

       /// <summary>
       ///审批AppType
       /// </summary>
       [Display(Name ="审批AppType")]
       [Column(TypeName="int")]
       public int? StepType { get; set; }

       /// <summary>
       ///StepType
       /// </summary>
       [Display(Name ="StepType")]
       [MaxLength(500)]
       [Column(TypeName="varchar(500)")]
       public string StepValue { get; set; }

       /// <summary>
       ///OrderId
       /// </summary>
       [Display(Name ="OrderId")]
       [Column(TypeName="int")]
       public int? OrderId { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="Remark")]
       [MaxLength(500)]
       [Column(TypeName="nvarchar(500)")]
       public string Remark { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="CreateDate")]
       [Column(TypeName="datetime")]
       public DateTime? CreateDate { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="CreateID")]
       [Column(TypeName="int")]
       public int? CreateID { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="Creator")]
       [MaxLength(30)]
       [Column(TypeName="nvarchar(30)")]
       public string Creator { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="Enable")]
       [Column(TypeName="tinyint")]
       public byte? Enable { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="Modifier")]
       [MaxLength(30)]
       [Column(TypeName="nvarchar(30)")]
       public string Modifier { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="ModifyDate")]
       [Column(TypeName="datetime")]
       public DateTime? ModifyDate { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="ModifyID")]
       [Column(TypeName="int")]
       public int? ModifyID { get; set; }

       /// <summary>
       ///AuditId
       /// </summary>
       [Display(Name ="AuditId")]
       [Column(TypeName="int")]
       public int? AuditId { get; set; }

       /// <summary>
       ///Auditor
       /// </summary>
       [Display(Name ="Auditor")]
       [MaxLength(50)]
       [Column(TypeName="nvarchar(50)")]
       public string Auditor { get; set; }

       /// <summary>
       ///AuditStatus
       /// </summary>
       [Display(Name ="AuditStatus")]
       [Column(TypeName="int")]
       public int? AuditStatus { get; set; }

       /// <summary>
       ///AuditDate
       /// </summary>
       [Display(Name ="AuditDate")]
       [Column(TypeName="datetime")]
       public DateTime? AuditDate { get; set; }

       /// <summary>
       ///StepAttrType(start、node、end))
       /// </summary>
       [Display(Name ="StepAttrType(start、node、end))")]
       [MaxLength(50)]
       [Column(TypeName="varchar(50)")]
       public string StepAttrType { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="ParentId")]
       [MaxLength(2000)]
       [Column(TypeName="varchar(2000)")]
       public string ParentId { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="NextStepId")]
       [MaxLength(100)]
       [Column(TypeName="varchar(100)")]
       public string NextStepId { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="Weight")]
       [Column(TypeName="int")]
       public int? Weight { get; set; }

       
    }
}