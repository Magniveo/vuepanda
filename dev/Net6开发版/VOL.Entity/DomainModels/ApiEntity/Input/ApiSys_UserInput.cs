using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using VOL.Entity;

namespace VOL.Entity.DomainModels
{
    public class ApiSys_UserInput
    {
        /// <summary>
       ///User名
       /// </summary>
       [Display(Name ="User名")]
       [MaxLength(200)]
       [Column(TypeName="nvarchar(200)")]
       [Editable(true)]
       [Required(AllowEmptyStrings=false)]
       public string UserName { get; set; }

       /// <summary>
       ///UserPwd
       /// </summary>
       [Display(Name ="UserPwd")]
       [MaxLength(400)]
       [Column(TypeName="nvarchar(400)")]
       [Required(AllowEmptyStrings=false)]
       public string UserPwd { get; set; }

       /// <summary>
       ///PhoneNo
       /// </summary>
       [Display(Name ="PhoneNo")]
       [MaxLength(22)]
       [Column(TypeName="nvarchar(22)")]
       [Required(AllowEmptyStrings=false)]
       public string PhoneNo { get; set; }

       
    }
}