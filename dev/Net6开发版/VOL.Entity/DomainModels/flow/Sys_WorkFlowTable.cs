/*
 *代码由框架生成,任何更改都可能导致被CodeGenerationDevice覆盖
 *如果Data库字段发生变化，请在代码生Device重新生成此Model
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
    [Entity(TableCnName = "ApprovalProcess",TableName = "Sys_WorkFlowTable",DetailTable =  new Type[] { typeof(Sys_WorkFlowTableStep)},DetailTableCnName = "ApprovalNode")]
    public partial class Sys_WorkFlowTable:BaseEntity
    {
        /// <summary>
       ///
       /// </summary>
       [Key]
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
       ///WorkName
       /// </summary>
       [Display(Name ="WorkName")]
       [MaxLength(200)]
       [Column(TypeName="nvarchar(200)")]
       public string WorkName { get; set; }

       /// <summary>
       ///WorkTableKey
       /// </summary>
       [Display(Name ="WorkTableKey")]
       [MaxLength(200)]
       [Column(TypeName="nvarchar(200)")]
       public string WorkTableKey { get; set; }

       /// <summary>
       ///WorkTable
       /// </summary>
       [Display(Name ="WorkTable")]
       [MaxLength(200)]
       [Column(TypeName="nvarchar(200)")]
       public string WorkTable { get; set; }

       /// <summary>
       ///WorkTableName
       /// </summary>
       [Display(Name ="WorkTableName")]
       [MaxLength(200)]
       [Column(TypeName="nvarchar(200)")]
       public string WorkTableName { get; set; }

       /// <summary>
       ///审核StepId
       /// </summary>
       [Display(Name ="审核StepId")]
       [MaxLength(100)]
       [Column(TypeName="nvarchar(100)")]
       public string CurrentStepId { get; set; }

       /// <summary>
       ///审核StepName
       /// </summary>
       [Display(Name ="审核StepName")]
       [MaxLength(500)]
       [Column(TypeName="nvarchar(500)")]
       public string StepName { get; set; }

       /// <summary>
       ///Dept_Id
       /// </summary>
       [Display(Name ="Dept_Id")]
       [Column(TypeName="int")]
       public int? CurrentOrderId { get; set; }

       /// <summary>
       ///AuditStatus
       /// </summary>
       [Display(Name ="AuditStatus")]
       [Column(TypeName="int")]
       public int? AuditStatus { get; set; }

       /// <summary>
       ///Creator
       /// </summary>
       [Display(Name ="Creator")]
       [MaxLength(30)]
       [Column(TypeName="nvarchar(30)")]
       public string Creator { get; set; }

       /// <summary>
       ///CreateDate
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

       [Display(Name ="ApprovalNode")]
       [ForeignKey("WorkFlowTable_Id")]
       public List<Sys_WorkFlowTableStep> Sys_WorkFlowTableStep { get; set; }

    }
}