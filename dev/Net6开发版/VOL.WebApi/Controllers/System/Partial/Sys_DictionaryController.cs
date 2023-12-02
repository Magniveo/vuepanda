﻿using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;
using System.Threading.Tasks;
using VOL.Core.Controllers.Basic;
using VOL.Core.Extensions;
using VOL.Core.Filters;
using VOL.System.IServices;

namespace VOL.System.Controllers
{
    public partial class Sys_DictionaryController
    {
        [HttpPost, Route("GetVueDictionary")]
        [ApiActionPermission()]
        public IActionResult GetVueDictionary([FromBody] string[] dicNos)
        {
            return Content(Service.GetVueDictionary(dicNos).Serialize());
        }
        /// <summary>
        /// tableLoadData后刷新当前tableData的字典项(适用DictionaryData量比较大的情况)
        /// </summary>
        /// <param name="value"></param>
        /// <returns></returns>
        [HttpPost, Route("getTableDictionary")]
        public IActionResult GetTableDictionary([FromBody] Dictionary<string, object[]> keyData)
        {
            return Json(Service.GetTableDictionary(keyData));
        }
        /// <summary>
        /// Enable搜索
        /// </summary>
        /// <param name="value"></param>
        /// <returns></returns>
        [HttpPost, Route("getSearchDictionary")]
        public IActionResult GetSearchDictionary(string dicNo, string value)
        {
            return Json(Service.GetSearchDictionary(dicNo, value));
        }

        /// <summary>
        /// FormSetUp为EnableQuery，重置或第一次添加Form时，获取字典的key、value
        /// </summary>
        /// <param name="dicNo"></param>
        /// <param name="key"></param>
        /// <returns></returns>
        [HttpPost, Route("getRemoteDefaultKeyValue")]
        public async Task<IActionResult> GetRemoteDefaultKeyValue(string dicNo, string key)
        {
            return Json(await Service.GetRemoteDefaultKeyValue(dicNo, key));
        }
        /// <summary>
        /// CodeGenerationDevice获取所有字典项(超级管理Authority)
        /// </summary>
        /// <returns></returns>
        [HttpPost, Route("GetBuilderDictionary")]
        // [ApiActionPermission(ActionRolePermission.SuperAdmin)]
        public async Task<IActionResult> GetBuilderDictionary()
        {
            return Json(await Service.GetBuilderDictionary());
        }

    }
}
