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
    [Table("Sys_Dictionary")]
    [Entity(TableCnName = "字典数据",DetailTable =  new Type[] { typeof(Sys_DictionaryList)},DetailTableCnName = "字典明细")]
    public class Sys_Dictionary:BaseEntity
    {
        /// <summary>
       ///Dic_ID
       /// </summary>
       [Key]
       [Display(Name ="Dic_ID")]
       [Column(TypeName="int")]
       [Required(AllowEmptyStrings=false)]
       public int Dic_ID { get; set; }

       /// <summary>
       ///DicNo
       /// </summary>
       [Display(Name ="DicNo")]
       [MaxLength(100)]
       [Column(TypeName="nvarchar(100)")]
       [Editable(true)]
       [Required(AllowEmptyStrings=false)]
       public string DicNo { get; set; }

       /// <summary>
       ///DicName
       /// </summary>
       [Display(Name ="DicName")]
       [MaxLength(100)]
       [Column(TypeName="nvarchar(100)")]
       [Editable(true)]
       [Required(AllowEmptyStrings=false)]
       public string DicName { get; set; }

       /// <summary>
       ///ParentId
       /// </summary>
       [Display(Name ="ParentId")]
       [Column(TypeName="int")]
       [Editable(true)]
       [Required(AllowEmptyStrings=false)]
       public int ParentId { get; set; }

       /// <summary>
       ///Config
       /// </summary>
       [Display(Name ="Config")]
       [MaxLength(10000)]
       [Column(TypeName="nvarchar(10000)")]
       [Editable(true)]
       public string Config { get; set; }

       /// <summary>
       ///DbSql
       /// </summary>
       [Display(Name ="DbSql")]
       [MaxLength(10000)]
       [Column(TypeName="nvarchar(10000)")]
       [Editable(true)]
       public string DbSql { get; set; }

       /// <summary>
       ///DBServer
       /// </summary>
       [Display(Name ="DBServer")]
       [MaxLength(10000)]
       [Column(TypeName="nvarchar(10000)")]
       public string DBServer { get; set; }

       /// <summary>
       ///OrderNo
       /// </summary>
       [Display(Name ="OrderNo")]
       [Column(TypeName="int")]
       [Editable(true)]
       public int? OrderNo { get; set; }

       /// <summary>
       ///Remark
       /// </summary>
       [Display(Name ="Remark")]
       [MaxLength(2000)]
       [Column(TypeName="nvarchar(2000)")]
       [Editable(true)]
       public string Remark { get; set; }

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

       [Display(Name ="字典明细")]
       [ForeignKey("Dic_ID")]
       public List<Sys_DictionaryList> Sys_DictionaryList { get; set; }

    }
}