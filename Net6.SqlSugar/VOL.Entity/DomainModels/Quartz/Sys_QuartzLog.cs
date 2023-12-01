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
using SqlSugar;
using VOL.Entity.SystemModels;

namespace VOL.Entity.DomainModels
{
    [Entity(TableCnName = "执行记录",TableName = "Sys_QuartzLog")]
    public partial class Sys_QuartzLog:BaseEntity
    {
        /// <summary>
       ///
       /// </summary>
       [SugarColumn(IsPrimaryKey = true)]
       [Key]
       [Display(Name ="LogId")]
       [Column(TypeName="uniqueidentifier")]
       [Editable(true)]
       [Required(AllowEmptyStrings=false)]
       public Guid LogId { get; set; }

       /// <summary>
       ///任务id
       /// </summary>
       [Display(Name ="任务id")]
       [Column(TypeName="uniqueidentifier")]
       [Editable(true)]
       public Guid? Id { get; set; }

       /// <summary>
       ///TaskName
       /// </summary>
       [Display(Name ="TaskName")]
       [MaxLength(500)]
       [Column(TypeName="nvarchar(500)")]
       [Editable(true)]
       public string TaskName { get; set; }

       /// <summary>
       ///ElapsedTime
       /// </summary>
       [Display(Name ="ElapsedTime")]
       [Column(TypeName="int")]
       [Editable(true)]
       public int? ElapsedTime { get; set; }

       /// <summary>
       ///StratDate
       /// </summary>
       [Display(Name ="StratDate")]
       [Column(TypeName="datetime")]
       [Editable(true)]
       public DateTime? StratDate { get; set; }

       /// <summary>
       ///EndDate
       /// </summary>
       [Display(Name ="EndDate")]
       [Column(TypeName="datetime")]
       [Editable(true)]
       public DateTime? EndDate { get; set; }

       /// <summary>
       ///是否成功
       /// </summary>
       [Display(Name ="是否成功")]
       [Column(TypeName="int")]
       [Editable(true)]
       public int? Result { get; set; }

       /// <summary>
       ///ResponseContent
       /// </summary>
       [Display(Name ="ResponseContent")]
       [Column(TypeName="nvarchar(max)")]
       [Editable(true)]
       public string ResponseContent { get; set; }

       /// <summary>
       ///异常信息
       /// </summary>
       [Display(Name ="异常信息")]
       [Column(TypeName="nvarchar(max)")]
       public string ErrorMsg { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="CreateID")]
       [Column(TypeName="int")]
       [Editable(true)]
       public int? CreateID { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="Creator")]
       [MaxLength(30)]
       [Column(TypeName="nvarchar(30)")]
       [Editable(true)]
       public string Creator { get; set; }

       /// <summary>
       ///
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
       [Editable(true)]
       public int? ModifyID { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="Modifier")]
       [MaxLength(30)]
       [Column(TypeName="nvarchar(30)")]
       [Editable(true)]
       public string Modifier { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="ModifyDate")]
       [Column(TypeName="datetime")]
       [Editable(true)]
       public DateTime? ModifyDate { get; set; }

       
    }
}