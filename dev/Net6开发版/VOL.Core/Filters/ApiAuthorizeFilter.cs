using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc.Authorization;
using Microsoft.AspNetCore.Mvc.Filters;
using System;
using System.IdentityModel.Tokens.Jwt;
using System.Linq;
using System.Net;
using System.Security.Claims;
using VOL.Core.Configuration;
using VOL.Core.Extensions;
using VOL.Core.ManageUser;
using static VOL.Core.Filters.ApiTaskAttribute;

namespace VOL.Core.Filters
{
    public class ApiAuthorizeFilter : IAuthorizationFilter
    {

        public ApiAuthorizeFilter()
        {

        }
        /// <summary>
        /// 只判断token是否正确，不判断Authority
        /// 如果需要判断Authority的在Action上加上ApiActionPermission属性标识Authority类别，ActionPermissionFilter作Authority处理
        ///(string,string,string)1、RequestParameter,2、返回Message，3,异常Message,4状态
        /// </summary>
        /// <param name="context"></param>
        public void OnAuthorization(AuthorizationFilterContext context)
        {
           // is Microsoft.AspNetCore.Authentication.AllowAnonymousAttribute
            //if (context.Filters.Any(item => item is IAllowAnonymousFilter))
            if (context.ActionDescriptor.EndpointMetadata.Any(item => item is IAllowAnonymous))
            {
                if (context.Filters
                    .Where(item => item is IApiTaskFilter)
                    .FirstOrDefault() is IApiTaskFilter apiTaskFilter) 
                {
                    apiTaskFilter.OnAuthorization(context);
                    return;
                }
                //如果使用了固定Token不过期，直接对token的合法性及token是否存在进行验证
                else if (context.Filters
                    .Where(item => item is IFixedTokenFilter)
                    .FirstOrDefault() is IFixedTokenFilter tokenFilter)
                {
                    tokenFilter.OnAuthorization(context);
                    return;
                }
                //匿名并传入了token，需要将User的ID缓存起来，保证UserHelper里能正确获取到User信息
                if (!context.HttpContext.User.Identity.IsAuthenticated
                    && !string.IsNullOrEmpty(context.HttpContext.Request.Headers[AppSetting.TokenHeaderName]))
                {
                    context.AddIdentity();
                }
                return;
            }
            //限定一个UserName不能在多处Login   UserContext.Current.Token != ((ClaimsIdentity)context.HttpContext.User.Identity)?.BootstrapContext?.ToString()

            // &&UserContext.Current.UserName!="admin666"为演示环境，实际使用时去掉此条件
            //if (!context.HttpContext.User.Identity.IsAuthenticated
            //    || (
            //    UserContext.Current.Token != ((ClaimsIdentity)context.HttpContext.User.Identity)
            //    ?.BootstrapContext?.ToString()
            //    && UserContext.Current.UserName != "admin666" 
            //    ))
            //{
            //    Console.Write($"IsAuthenticated:{context.HttpContext.User.Identity.IsAuthenticated}," +
            //        $"userToken{UserContext.Current.Token}" +
            //        $"BootstrapContext:{((ClaimsIdentity)context.HttpContext.User.Identity)?.BootstrapContext?.ToString()}");
            //    context.Unauthorized("Login已过期");
            //    return;
            //}

            DateTime expDate = context.HttpContext.User.Claims.Where(x => x.Type == JwtRegisteredClaimNames.Exp)
                .Select(x => x.Value).FirstOrDefault().GetTimeSpmpToDate();
            //动态标识刷新token(2021.05.01)
            if ((expDate - DateTime.Now).TotalMinutes < AppSetting.ExpMinutes/ 3 && context.HttpContext.Request.Path != replaceTokenPath)
            {
                context.HttpContext.Response.Headers.Add("vol_exp", "1");
            }
        }
        private static readonly string replaceTokenPath = "/api/User/replaceToken";
    }
}
