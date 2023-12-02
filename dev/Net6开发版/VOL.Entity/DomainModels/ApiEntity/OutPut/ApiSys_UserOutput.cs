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
    public class ApiSys_UserOutput
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
       ///Department
       /// </summary>
       [Display(Name ="Department")]
       [MaxLength(300)]
       [Column(TypeName="nvarchar(300)")]
       [Editable(true)]
       public string DeptName { get; set; }

       /// <summary>
       ///Role_Id
       /// </summary>
       [Display(Name ="Role_Id")]
       [Column(TypeName="int")]
       [Editable(true)]
       [Required(AllowEmptyStrings=false)]
       public int Role_Id { get; set; }

       
    }
}