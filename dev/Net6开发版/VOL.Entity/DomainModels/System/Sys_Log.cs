/*
 *Author：jxx
 *Contact：283591387@qq.com
 *Date：2018-07-01
 * 此代码由框架生成，请勿随意更改
 */
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using VOL.Entity;
using VOL.Entity.SystemModels;

namespace VOL.Entity.DomainModels
{
    [Table("Sys_Log")]
    [EntityAttribute(TableCnName = "SystemLog")]
    public class Sys_Log:BaseEntity
    {
        /// <summary>
       ///
       /// </summary>
       [Key]
       [Display(Name ="Id")]
       [Column(TypeName="int")]
       [Required(AllowEmptyStrings=false)]
       public int Id { get; set; }

       /// <summary>
       ///StratDate
       /// </summary>
       [Display(Name ="StratDate")]
       [Column(TypeName="datetime")]
       public DateTime? BeginDate { get; set; }

       /// <summary>
       ///Url
       /// </summary>
       [Display(Name ="Url")]
       [MaxLength(30000)]
       [Column(TypeName="varchar(30000)")]
       public string Url { get; set; }

       /// <summary>
       ///LogType
       /// </summary>
       [Display(Name ="LogType")]
       [MaxLength(50)]
       [Column(TypeName="varchar(50)")]
       public string LogType { get; set; }

       /// <summary>
       ///Success
       /// </summary>
       [Display(Name ="Success")]
       [Column(TypeName="int")]
       public int? Success { get; set; }

       /// <summary>
       ///ElapsedTime(毫秒)
       /// </summary>
       [Display(Name ="ElapsedTime(毫秒)")]
       [Column(TypeName="int")]
       public int? ElapsedTime { get; set; }

       /// <summary>
       ///RequestParameter
       /// </summary>
       [Display(Name ="RequestParameter")]
       [MaxLength(10000)]
       [Column(TypeName="nvarchar(10000)")]
       public string RequestParameter { get; set; }

       /// <summary>
       ///ResponseParameter
       /// </summary>
       [Display(Name ="ResponseParameter")]
       [MaxLength(10000)]
       [Column(TypeName="nvarchar(10000)")]
       public string ResponseParameter { get; set; }

       /// <summary>
       ///ExceptionInfo
       /// </summary>
       [Display(Name ="ExceptionInfo")]
       [MaxLength(10000)]
       [Column(TypeName="nvarchar(10000)")]
       public string ExceptionInfo { get; set; }

       /// <summary>
       ///UserIP
       /// </summary>
       [Display(Name ="UserIP")]
       [MaxLength(100)]
       [Column(TypeName="varchar(100)")]
       public string UserIP { get; set; }

       /// <summary>
       ///ServiceIP
       /// </summary>
       [Display(Name ="ServiceIP")]
       [MaxLength(100)]
       [Column(TypeName="varchar(100)")]
       public string ServiceIP { get; set; }

       /// <summary>
       ///BrowserType
       /// </summary>
       [Display(Name ="BrowserType")]
       [MaxLength(200)]
       [Column(TypeName="nvarchar(200)")]
       public string BrowserType { get; set; }

       /// <summary>
       ///User_Id
       /// </summary>
       [Display(Name ="User_Id")]
       [Column(TypeName="int")]
       public int? User_Id { get; set; }

       /// <summary>
       ///UserName
       /// </summary>
       [Display(Name ="UserName")]
       [MaxLength(30000)]
       [Column(TypeName="varchar(30000)")]
       public string UserName { get; set; }

       /// <summary>
       ///Role_Id
       /// </summary>
       [Display(Name ="Role_Id")]
       [Column(TypeName="int")]
       public int? Role_Id { get; set; }

       /// <summary>
       ///EndDate
       /// </summary>
       [Display(Name ="EndDate")]
       [Column(TypeName="datetime")]
       public DateTime? EndDate { get; set; }

       
    }
}
