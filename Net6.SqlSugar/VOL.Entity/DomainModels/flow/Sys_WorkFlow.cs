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
    [Entity(TableCnName = "审批流程配置",TableName = "Sys_WorkFlow",DetailTable =  new Type[] { typeof(Sys_WorkFlowStep)},DetailTableCnName = "审批步骤")]
    public partial class Sys_WorkFlow:BaseEntity
    {
        /// <summary>
       ///
       /// </summary>
       [SugarColumn(IsPrimaryKey = true)]
       [Key]
       [Display(Name ="WorkFlow_Id")]
       [Column(TypeName="uniqueidentifier")]
       [Required(AllowEmptyStrings=false)]
       public Guid WorkFlow_Id { get; set; }

       /// <summary>
       ///WorkName
       /// </summary>
       [Display(Name ="WorkName")]
       [MaxLength(200)]
       [Column(TypeName="nvarchar(200)")]
       [Editable(true)]
       [Required(AllowEmptyStrings=false)]
       public string WorkName { get; set; }

       /// <summary>
       ///WorkTable
       /// </summary>
       [Display(Name ="WorkTable")]
       [MaxLength(200)]
       [Column(TypeName="nvarchar(200)")]
       [Editable(true)]
       [Required(AllowEmptyStrings=false)]
       public string WorkTable { get; set; }

       /// <summary>
       ///WorkTableName
       /// </summary>
       [Display(Name ="WorkTableName")]
       [MaxLength(200)]
       [Column(TypeName="nvarchar(200)")]
       [Editable(true)]
       public string WorkTableName { get; set; }

       /// <summary>
       ///Weight(相同条件Weight大的优先匹配)
       /// </summary>
       [Display(Name ="Weight(相同条件Weight大的优先匹配)")]
       [Column(TypeName="int")]
       [Editable(true)]
       public int? Weight { get; set; }

       /// <summary>
       ///是否启用
       /// </summary>
       [Display(Name ="是否启用")]
       [Column(TypeName="tinyint")]
       [Editable(true)]
       public byte? Enable { get; set; }

       /// <summary>
       ///审核中数据是否可以编辑
       /// </summary>
       [Display(Name ="审核中数据是否可以编辑")]
       [Column(TypeName="int")]
       [Editable(true)]
       public int? AuditingEdit { get; set; }

       /// <summary>
       ///NodeConfig
       /// </summary>
       [Display(Name ="NodeConfig")]
       [Column(TypeName="nvarchar(max)")]
       [Editable(true)]
       public string NodeConfig { get; set; }

       /// <summary>
       ///LineConfig
       /// </summary>
       [Display(Name ="LineConfig")]
       [Column(TypeName="nvarchar(max)")]
       [Editable(true)]
       public string LineConfig { get; set; }

       /// <summary>
       ///Remark
       /// </summary>
       [Display(Name ="Remark")]
       [MaxLength(500)]
       [Column(TypeName="nvarchar(500)")]
       [Editable(true)]
       public string Remark { get; set; }

       /// <summary>
       ///
       /// </summary>
       [Display(Name ="CreateID")]
       [Column(TypeName="int")]
       public int? CreateID { get; set; }

       /// <summary>
       ///创建人
       /// </summary>
       [Display(Name ="创建人")]
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
       [Display(Name ="ModifyID")]
       [Column(TypeName="int")]
       public int? ModifyID { get; set; }

       /// <summary>
       ///修改人
       /// </summary>
       [Display(Name ="修改人")]
       [MaxLength(30)]
       [Column(TypeName="nvarchar(30)")]
       public string Modifier { get; set; }

       /// <summary>
       ///ModifyDate
       /// </summary>
       [Display(Name ="ModifyDate")]
       [Column(TypeName="datetime")]
       public DateTime? ModifyDate { get; set; }

       [Display(Name ="审批步骤")]
       [ForeignKey("WorkFlow_Id")]
       [Navigate(NavigateType.OneToMany,nameof(WorkFlow_Id),nameof(WorkFlow_Id))]
       public List<Sys_WorkFlowStep> Sys_WorkFlowStep { get; set; }

    }
}