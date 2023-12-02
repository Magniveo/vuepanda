using Microsoft.AspNetCore.Http;
using System;
using System.Collections.Generic;
using System.Text;

namespace VOL.Core.Services
{
   public class ActionObserver
    {
        //public ActionObserver(IHttpContextAccessor httpContextAccessor)
        //{
        //    this.RequestDate = DateTime.Now;
        //    this.HttpContext = httpContextAccessor.HttpContext;
        //}
        /// <summary>
        /// 记录actionExecute的StratDate
        /// </summary>
        public DateTime RequestDate { get; set; }

        /// <summary>
        /// 当前请求是否已经写过Log,防止手动WithSystem自动重复写Log
        /// </summary>
        public bool IsWrite { get; set; }

        public HttpContext HttpContext { get; }
    }
}
