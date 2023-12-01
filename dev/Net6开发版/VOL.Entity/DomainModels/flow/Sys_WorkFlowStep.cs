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
    [Entity(TableCnName = "审批节点配置",TableName = "Sys_WorkFlowStep")]
    public partial class Sys_WorkFlowStep:BaseEntity
    {
        /// <summary>
       ///
       /// </summary>
       [Key]
       [Display(Name ="WorkStepFlow_Id")]
       [Column(TypeName="uniqueidentifier")]
       [Required(AllowEmptyStrings=false)]
       public Guid WorkStepFlow_Id { get; set; }

       /// <summary>
       ///WorkFlow_Id
       /// </summary>
       [Display(Name ="WorkFlow_Id")]
       [Column(TypeName="uniqueidentifier")]
       [Editable(true)]
       public Guid? WorkFlow_Id { get; set; }

       /// <summary>
       ///StepId
       /// </summary>
       [Display(Name ="StepId")]
       [MaxLength(100)]
       [Column(TypeName="varchar(100)")]
       [Editable(true)]
       public string StepId { get; set; }

       /// <summary>
       ///StepName
       /// </summary>
       [Display(Name ="StepName")]
       [MaxLength(200)]
       [Column(TypeName="nvarchar(200)")]
       [Editable(true)]
       public string StepName { get; set; }

       /// <summary>
       ///StepType
       /// </summary>
       [Display(Name ="StepType")]
       [Column(TypeName="int")]
       [Editable(true)]
       public int? StepType { get; set; }

       /// <summary>
       ///StepValue
       /// </summary>
       [Display(Name ="StepValue")]
       [MaxLength(500)]
       [Column(TypeName="varchar(500)")]
       [Editable(true)]
       public string StepValue { get; set; }

       /// <summary>
       ///Remark
       /// </summary>
       [Display(Name ="Remark")]
       [MaxLength(500)]
       [Column(TypeName="nvarchar(500)")]
       [Editable(true)]
       public string Remark { get; set; }

       /// <summary>
       ///OrderId
       /// </summary>
       [Display(Name ="OrderId")]
       [Column(TypeName="int")]
       [Editable(true)]
       public int? OrderId { get; set; }

       /// <summary>
       ///CreateDate
       /// </summary>
       [Display(Name ="CreateDate")]
       [Column(TypeName="datetime")]
       [Editable(true)]
       public DateTime? CreateDate { get; set; }

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
       ///Modifier
       /// </summary>
       [Display(Name ="Modifier")]
       [MaxLength(30)]
       [Column(TypeName="nvarchar(30)")]
       public string Modifier { get; set; }

       /// <summary>
       ///ModifyDate
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
       ///NextStepIds
       /// </summary>
       [Display(Name ="NextStepIds")]
       [MaxLength(500)]
       [Column(TypeName="varchar(500)")]
       [Editable(true)]
       public string NextStepIds { get; set; }

       /// <summary>
       ///ParentId
       /// </summary>
       [Display(Name ="ParentId")]
       [MaxLength(2000)]
       [Column(TypeName="varchar(2000)")]
       [Editable(true)]
       public string ParentId { get; set; }

       /// <summary>
       ///AuditRefuse
       /// </summary>
       [Display(Name ="AuditRefuse")]
       [Column(TypeName="int")]
       [Editable(true)]
       public int? AuditRefuse { get; set; }

       /// <summary>
       ///AuditBack
       /// </summary>
       [Display(Name ="AuditBack")]
       [Column(TypeName="int")]
       [Editable(true)]
       public int? AuditBack { get; set; }

       /// <summary>
       ///AuditMethod
       /// </summary>
       [Display(Name ="AuditMethod")]
       [Column(TypeName="int")]
       [Editable(true)]
       public int? AuditMethod { get; set; }

       /// <summary>
       ///SendMail
       /// </summary>
       [Display(Name ="SendMail")]
       [Column(TypeName="int")]
       [Editable(true)]
       public int? SendMail { get; set; }

       /// <summary>
       ///Filters
       /// </summary>
       [Display(Name ="Filters")]
       [MaxLength(4000)]
       [Column(TypeName="nvarchar(4000)")]
       [Editable(true)]
       public string Filters { get; set; }

       /// <summary>
       ///StepAttrType(start、node、end))
       /// </summary>
       [Display(Name ="StepAttrType(start、node、end))")]
       [MaxLength(50)]
       [Column(TypeName="varchar(50)")]
       [Editable(true)]
       public string StepAttrType { get; set; }

       /// <summary>
       ///Weight(相同条件Weight大的优先匹配)
       /// </summary>
       [Display(Name ="Weight(相同条件Weight大的优先匹配)")]
       [Column(TypeName="int")]
       [Editable(true)]
       public int? Weight { get; set; }

       
    }
}