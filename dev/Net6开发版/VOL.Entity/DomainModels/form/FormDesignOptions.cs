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
    [Entity(TableCnName = "FormDesign",TableName = "FormDesignOptions")]
    public class FormDesignOptions:BaseEntity
    {
        /// <summary>
       ///
       /// </summary>
       [Key]
       [Display(Name ="FormId")]
       [Column(TypeName="uniqueidentifier")]
       [Required(AllowEmptyStrings=false)]
       public Guid FormId { get; set; }

       /// <summary>
       ///FormExpertName
       /// </summary>
       [Display(Name ="FormExpertName")]
       [MaxLength(1000)]
       [Column(TypeName="nvarchar(1000)")]
       [Editable(true)]
       [Required(AllowEmptyStrings=false)]
       public string Title { get; set; }

       /// <summary>
       ///DaraggeOptions
       /// </summary>
       [Display(Name ="DaraggeOptions")]
       [Column(TypeName="nvarchar(max)")]
       [Editable(true)]
       public string DaraggeOptions { get; set; }

       /// <summary>
       ///FormOptions
       /// </summary>
       [Display(Name ="FormOptions")]
       [Column(TypeName="nvarchar(max)")]
       [Editable(true)]
       public string FormOptions { get; set; }

       /// <summary>
       ///FormConfig
       /// </summary>
       [Display(Name ="FormConfig")]
       [Column(TypeName="nvarchar(max)")]
       [Editable(true)]
       public string FormConfig { get; set; }

       /// <summary>
       ///FormFields
       /// </summary>
       [Display(Name ="FormFields")]
       [Column(TypeName="nvarchar(max)")]
       [Editable(true)]
       public string FormFields { get; set; }

       /// <summary>
       ///TableConfig
       /// </summary>
       [Display(Name ="TableConfig")]
       [Column(TypeName="nvarchar(max)")]
       [Editable(true)]
       public string TableConfig { get; set; }

       /// <summary>
       ///Creator
       /// </summary>
       [Display(Name ="Creator")]
       [MaxLength(60)]
       [Column(TypeName="nvarchar(60)")]
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
       ///Modifier
       /// </summary>
       [Display(Name ="Modifier")]
       [MaxLength(60)]
       [Column(TypeName="nvarchar(60)")]
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

       
    }
}