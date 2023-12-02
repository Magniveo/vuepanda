/*
 *接口编写处...
*如果接口需要做Action的Authority验证，请在Action上使用属性
*如: [ApiActionPermission("Sys_DictionaryList",Enums.ActionPermissionOptions.Search)]
 */
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.AspNetCore.Http;
using VOL.Entity.DomainModels;
using VOL.System.IServices;
using VOL.Core.Filters;

namespace VOL.System.Controllers
{
    public partial class Sys_DictionaryListController
    {
        private readonly ISys_DictionaryListService _service;//访问业务代码
        private readonly IHttpContextAccessor _httpContextAccessor;

        [ActivatorUtilitiesConstructor]
        public Sys_DictionaryListController(
            ISys_DictionaryListService service,
            IHttpContextAccessor httpContextAccessor
        )
        : base(service)
        {
            _service = service;
            _httpContextAccessor = httpContextAccessor;
        }
        /// <summary>
        /// Export明细
        /// （重写Authority）将子Table的Authority指向主TableAuthority
        /// </summary>
        /// <param name="loadData"></param>
        /// <returns></returns>
        [ApiActionPermission("Sys_Dictionary", Core.Enums.ActionPermissionOptions.Export)]
        [ApiExplorerSettings(IgnoreApi = false)]
        [HttpPost, Route("Export")]
        public override ActionResult Export([FromBody] PageDataOptions loadData)
        {
            return base.Export(loadData);
        }
        /// <summary>
        /// 导入TableDataExcel
        ///  （重写Authority）将子Table的Authority指向主TableAuthority
        /// </summary>
        /// <param name="fileInput"></param>
        /// <returns></returns>
        [HttpPost, Route("Import")]
        [ApiActionPermission("Sys_Dictionary", Core.Enums.ActionPermissionOptions.Import)]
        [ApiExplorerSettings(IgnoreApi = false)]
        public override ActionResult Import(List<IFormFile> fileInput)
        {
            return base.Import(fileInput);
        }
        /// <summary>
        /// 下载导入Excel模板
        /// （重写Authority）将子Table的Authority指向主TableAuthority
        /// </summary>
        /// <returns></returns>
        [HttpGet, Route("DownLoadTemplate")]
        [ApiActionPermission("Sys_Dictionary", Core.Enums.ActionPermissionOptions.Import)]
        [ApiExplorerSettings(IgnoreApi = false)]
        public override ActionResult DownLoadTemplate()
        {
            return base.DownLoadTemplate();
        }
    }
}
