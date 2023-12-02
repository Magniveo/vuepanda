using Microsoft.AspNetCore.Mvc.Authorization;
using Microsoft.AspNetCore.Mvc.Filters;
using System.Linq;
using System.Threading.Tasks;
using VOL.Core.Configuration;
using VOL.Core.Enums;
using VOL.Core.ManageUser;
using VOL.Core.Services;
using VOL.Core.Utilities;
using VOL.Entity.AttributeManager;

namespace VOL.Core.Filters
{
    /// <summary>
    /// 1、控制Device或controllerSetUp了AllowAnonymousAttribute直接返回
    /// 2、TableName、TableAction 同时为null，SysController为false的，只判断是否Login
    /// 3、TableName、TableAction 都不null根据WorkTableWithaction判断是否有Authority
    /// 4、SysController为true，通过httpcontext获取WorkTableWithaction判断是否有Authority
    /// 5、Roles对指定Role_Id验证
    /// </summary>
    public class ActionPermissionFilter : IAsyncActionFilter
    {
        private WebResponseContent ResponseContent { get; set; }
        private ActionPermissionRequirement ActionPermission;
        private UserContext _userContext { get; set; }
        // private ResponseType responseType;
        public ActionPermissionFilter(ActionPermissionRequirement actionPermissionRequirement, UserContext userContext)
        {
            this.ResponseContent = new WebResponseContent();
            this.ActionPermission = actionPermissionRequirement;
            _userContext = userContext;
        }
        public async Task OnActionExecutionAsync(ActionExecutingContext context, ActionExecutionDelegate next)
        {
            if (OnActionExecutionPermission(context).Status)
            {
                await next();
                return;
            }
            FilterResponse.SetActionResult(context, ResponseContent);
        }
        private WebResponseContent OnActionExecutionPermission(ActionExecutingContext context)
        {
            //!context.Filters.Any(item => item is IFixedTokenFilter))固定token的是否验证Authority
            //if ((context.Filters.Any(item => item is IAllowAnonymousFilter)
            //    && !context.Filters.Any(item => item is IFixedTokenFilter))
            //    || UserContext.Current.IsSuperAdmin
            //    )
            if (context.Filters.Any(item => item is IAllowAnonymousFilter)
                || UserContext.Current.IsSuperAdmin)
                return ResponseContent.OK();

            //演示环境除了adminUserName，OtherUserName都不能增删改等Operation
            if (!_userContext.IsSuperAdmin && AppSetting.GlobalFilter.Enable
                && AppSetting.GlobalFilter.Actions.Contains(((Microsoft.AspNetCore.Mvc.Controllers.ControllerActionDescriptor)context.ActionDescriptor).ActionName))
            { 
                return ResponseContent.Error(AppSetting.GlobalFilter.Message);
            }

            //如果没有指定Table的Authority，则默认为CodeGeneration的控制Device，优先获取PermissionTableAttribute指定的Table，如果没有Data则使用当前控制Device的名作为WorkTableAuthority
            if (ActionPermission.SysController)
            {
                object[] permissionArray = ((Microsoft.AspNetCore.Mvc.Controllers.ControllerActionDescriptor)context.ActionDescriptor)?.ControllerTypeInfo.GetCustomAttributes(typeof(PermissionTableAttribute), false);
                if (permissionArray == null || permissionArray.Length == 0)
                {
                    ActionPermission.TableName = ((Microsoft.AspNetCore.Mvc.Controllers.ControllerActionDescriptor)context.ActionDescriptor).ControllerName;
                }
                else
                {
                    ActionPermission.TableName = (permissionArray[0] as PermissionTableAttribute).Name;
                }
                if (string.IsNullOrEmpty(ActionPermission.TableName))
                {
                    //responseType = ResponseType.ParametersLack;
                    return ResponseContent.Error(ResponseType.ParametersLack);
                }
            }

            //如果没有给定Authority，不需要判断
            if (string.IsNullOrEmpty(ActionPermission.TableName)
                && string.IsNullOrEmpty(ActionPermission.TableAction)
                && (ActionPermission.RoleIds == null || ActionPermission.RoleIds.Length == 0))
            {
                return ResponseContent.OK();
            }

            //是否限制的Role_Id称才能访问
            //Authority判断Role_Id,
            if (ActionPermission.RoleIds != null && ActionPermission.RoleIds.Length > 0)
            {
                if (ActionPermission.RoleIds.Contains(_userContext.UserInfo.Role_Id)) return ResponseContent.OK();
                //如果Role_Id没有Authority。并且也没控制DeviceAuthority
                if (string.IsNullOrEmpty(ActionPermission.TableAction))
                {
                    return ResponseContent.Error(ResponseType.NoRolePermissions);
                }
            }
            //2020.05.05移除x.TableName.ToLower()转换,获取Authority时已经转换成为小写
            var actionAuth =  _userContext.GetPermissions(x => x.TableName == ActionPermission.TableName.ToLower())
                ?.UserAuthArr?.Contains(ActionPermission.TableAction)??false;

            if (!actionAuth)
            {
                //2023.06.30增加移动端Authority二次判断
                if (UserContext.MenuType==1)
                {
                    actionAuth= _userContext.Permissions.Where(x => x.TableName == ActionPermission.TableName.ToLower())
                        .Any(c => c.UserAuthArr.Contains(ActionPermission.TableAction));
                }
                if (!actionAuth)
                {
                    Logger.Info(LoggerType.Authorzie, $"没有AuthorityOperation," +
                   $"User_Id{_userContext.UserId}:{_userContext.UserTrueName}," +
                   $"Role_Id:{_userContext.RoleId}:{_userContext.UserInfo.RoleName}," +
                   $"OperationAuthority{ActionPermission.TableName}:{ActionPermission.TableAction}");
                    return ResponseContent.Error(ResponseType.NoPermissions);
                }
            }
            return ResponseContent.OK();
        }
    }
}
