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
    [Table("App_News")]
    [Entity(TableCnName = "新闻列表",TableName = "App_News")]
    public class App_News:BaseEntity
    {
        /// <summary>
       ///Id
       /// </summary>
       [Key]
       [Display(Name ="Id")]
       [Column(TypeName="int")]
       [Required(AllowEmptyStrings=false)]
       public int Id { get; set; }

       /// <summary>
       ///Title
       /// </summary>
       [Display(Name ="Title")]
       [MaxLength(50)]
       [Column(TypeName="nvarchar(50)")]
       [Editable(true)]
       [Required(AllowEmptyStrings=false)]
       public string Title { get; set; }

       /// <summary>
       ///Content
       /// </summary>
       [Display(Name ="Content")]
       [Column(TypeName="nvarchar(max)")]
       [Editable(true)]
       public string Content { get; set; }

       /// <summary>
       ///Author
       /// </summary>
       [Display(Name ="Author")]
       [MaxLength(50)]
       [Column(TypeName="nvarchar(50)")]
       public string Author { get; set; }

       /// <summary>
       ///ReleaseDate
       /// </summary>
       [Display(Name ="ReleaseDate")]
       [Column(TypeName="datetime")]
       public DateTime? ReleaseDate { get; set; }

       /// <summary>
       ///ImageUrl
       /// </summary>
       [Display(Name ="ImageUrl")]
       [MaxLength(500)]
       [Column(TypeName="nvarchar(500)")]
       [Editable(true)]
       public string ImageUrl { get; set; }

       /// <summary>
       ///BigImageUrls
       /// </summary>
       [Display(Name ="BigImageUrls")]
       [MaxLength(500)]
       [Column(TypeName="nvarchar(500)")]
       public string BigImageUrls { get; set; }

       /// <summary>
       ///DetailUrl
       /// </summary>
       [Display(Name ="DetailUrl")]
       [MaxLength(200)]
       [Column(TypeName="nvarchar(200)")]
       [Editable(true)]
       public string DetailUrl { get; set; }

       /// <summary>
       ///ViewCount
       /// </summary>
       [Display(Name ="ViewCount")]
       [Column(TypeName="int")]
       [Editable(true)]
       public int? ViewCount { get; set; }

       /// <summary>
       ///NewsType
       /// </summary>
       [Display(Name ="NewsType")]
       [Column(TypeName="int")]
       [Editable(true)]
       [Required(AllowEmptyStrings=false)]
       public int NewsType { get; set; }

       /// <summary>
       ///是否今日推荐
       /// </summary>
       [Display(Name ="是否今日推荐")]
       [Column(TypeName="sbyte")]
       [Editable(true)]
       [Required(AllowEmptyStrings=false)]
       public sbyte DailyRecommend { get; set; }

       /// <summary>
       ///推荐OrderNo
       /// </summary>
       [Display(Name ="推荐OrderNo")]
       [Column(TypeName="int")]
       [Editable(true)]
       public int? OrderNo { get; set; }

       /// <summary>
       ///Enable
       /// </summary>
       [Display(Name ="Enable")]
       [Column(TypeName="sbyte")]
       [Editable(true)]
       public sbyte? Enable { get; set; }

       /// <summary>
       ///CreatorId
       /// </summary>
       [Display(Name ="CreatorId")]
       [Column(TypeName="int")]
       public int? CreateID { get; set; }

       /// <summary>
       ///Author
       /// </summary>
       [Display(Name ="Author")]
       [MaxLength(30)]
       [Column(TypeName="nvarchar(30)")]
       [Editable(true)]
       public string Creator { get; set; }

       /// <summary>
       ///ReleaseDate
       /// </summary>
       [Display(Name ="ReleaseDate")]
       [Column(TypeName="datetime")]
       [Editable(true)]
       public DateTime? CreateDate { get; set; }

       /// <summary>
       ///ModifierID
       /// </summary>
       [Display(Name ="ModifierID")]
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
       [Editable(true)]
       public DateTime? ModifyDate { get; set; }

       
    }
}
