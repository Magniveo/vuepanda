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
    [Entity(TableCnName = "定时任务",TableName = "Sys_QuartzOptions")]
    public partial class Sys_QuartzOptions:BaseEntity
    {
        /// <summary>
       ///
       /// </summary>
       [Key]
       [Display(Name ="Id")]
       [Column(TypeName="uniqueidentifier")]
       [Required(AllowEmptyStrings=false)]
       public Guid Id { get; set; }

       /// <summary>
       ///TaskName
       /// </summary>
       [Display(Name ="TaskName")]
       [MaxLength(500)]
       [Column(TypeName="nvarchar(500)")]
       [Editable(true)]
       [Required(AllowEmptyStrings=false)]
       public string TaskName { get; set; }

       /// <summary>
       ///GroupName
       /// </summary>
       [Display(Name ="GroupName")]
       [MaxLength(500)]
       [Column(TypeName="nvarchar(500)")]
       [Editable(true)]
       [Required(AllowEmptyStrings=false)]
       public string GroupName { get; set; }

       /// <summary>
       ///Method
       /// </summary>
       [Display(Name ="Method")]
       [MaxLength(50)]
       [Column(TypeName="varchar(50)")]
       [Editable(true)]
       public string Method { get; set; }

       /// <summary>
       ///TimeOut
       /// </summary>
       [Display(Name ="TimeOut")]
       [Column(TypeName="int")]
       [Editable(true)]
       public int? TimeOut { get; set; }

       /// <summary>
       ///CronExpression
       /// </summary>
       [Display(Name ="CronExpression")]
       [MaxLength(100)]
       [Column(TypeName="varchar(100)")]
       [Editable(true)]
       [Required(AllowEmptyStrings=false)]
       public string CronExpression { get; set; }

       /// <summary>
       ///ApiUrl
       /// </summary>
       [Display(Name ="ApiUrl")]
       [MaxLength(2000)]
       [Column(TypeName="nvarchar(2000)")]
       [Editable(true)]
       public string ApiUrl { get; set; }

       /// <summary>
       ///PostData
       /// </summary>
       [Display(Name ="PostData")]
       [Column(TypeName="nvarchar(max)")]
       [Editable(true)]
       public string PostData { get; set; }

       /// <summary>
       ///AuthKey
       /// </summary>
       [Display(Name ="AuthKey")]
       [MaxLength(200)]
       [Column(TypeName="nvarchar(200)")]
       [Editable(true)]
       public string AuthKey { get; set; }

       /// <summary>
       ///AuthValue
       /// </summary>
       [Display(Name ="AuthValue")]
       [MaxLength(200)]
       [Column(TypeName="nvarchar(200)")]
       [Editable(true)]
       public string AuthValue { get; set; }

       /// <summary>
       ///Describe
       /// </summary>
       [Display(Name ="Describe")]
       [MaxLength(2000)]
       [Column(TypeName="nvarchar(2000)")]
       [Editable(true)]
       public string Describe { get; set; }

       /// <summary>
       ///LastRunTime
       /// </summary>
       [Display(Name ="LastRunTime")]
       [Column(TypeName="datetime")]
       [Editable(true)]
       public DateTime? LastRunTime { get; set; }

       /// <summary>
       ///Status
       /// </summary>
       [Display(Name ="Status")]
       [Column(TypeName="int")]
       [Editable(true)]
       public int? Status { get; set; }

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
       [Editable(true)]
       public string Creator { get; set; }

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
       [Display(Name ="ModifyID")]
       [Column(TypeName="int")]
       public int? ModifyID { get; set; }

       /// <summary>
       ///
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

       
    }
}