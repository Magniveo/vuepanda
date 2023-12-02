using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Threading.Tasks;
using VOL.Core.Extensions;
using VOL.Core.ManageUser;
using VOL.Core.Services;
using VOL.Core.UserManager;
using VOL.Core.Utilities;
using VOL.Entity;
using VOL.Entity.DomainModels;

namespace VOL.System.Services
{
    public partial class Sys_RoleService
    {
        private WebResponseContent _responseContent = new WebResponseContent();
        public override PageGridData<Sys_Role> GetPageData(PageDataOptions pageData)
        {
            //Role_Id=1默认为SuperAdministratorRole_Id，界面上不显示此Role_Id
            QueryRelativeExpression = (IQueryable<Sys_Role> queryable) =>
            {
                if (UserContext.Current.IsSuperAdmin)
                {
                    return queryable;
                }
                List<int> roleIds = GetAllChildrenRoleIdAndSelf();
                return queryable.Where(x => roleIds.Contains(x.Role_Id));
            };
            return base.GetPageData(pageData);
        }
        /// <summary>
        /// EditAuthority时，获取当前User的所有DishSingleAuthority
        /// </summary>
        /// <returns></returns>
        public async Task<WebResponseContent> GetCurrentUserTreePermission()
        {
            return await GetUserTreePermission(UserContext.Current.RoleId);
        }

        /// <summary>
        /// EditAuthority时，获取指定Role_Id的所有DishSingleAuthority
        /// </summary>
        /// <param name="roleId"></param>
        /// <returns></returns>
        public async Task<WebResponseContent> GetUserTreePermission(int roleId)
        {
            if (!UserContext.IsRoleIdSuperAdmin(roleId) && UserContext.Current.RoleId != roleId)
            {
                if (!(await GetAllChildrenAsync(UserContext.Current.RoleId)).Exists(x => x.Id == roleId))
                {
                    return _responseContent.Error("没有Authority获取此Role_Id的Authority信息");
                }
            }
            //获取UserAuthority
            List<Permissions> permissions = UserContext.Current.GetPermissions(roleId);
            //AuthorityUserAuthorityQuery所有的DishSingle信息
            List<Sys_Menu> menus = await Task.Run(() => Sys_MenuService.Instance.GetUserMenuList(roleId));
            //获取当前UserAuthority如:(Add,Search)对应的显示文本信息如:Add：添加，Search:Query
            var data = menus.Select(x => new
            {
                Id = x.Menu_Id,
                Pid = x.ParentId,
                Text = x.MenuName,
                IsApp = x.MenuType == 1,
                Actions = GetActions(x.Menu_Id, x.Actions, permissions, roleId)
            });
            return _responseContent.OK(null, data);
        }

        private List<Sys_Actions> GetActions(int menuId, List<Sys_Actions> menuActions, List<Permissions> permissions, int roleId)
        {
            if (UserContext.IsRoleIdSuperAdmin(roleId))
            {
                return menuActions;
            }

            return menuActions.Where(p => permissions
                 .Exists(w => menuId == w.Menu_Id
                 && w.UserAuthArr.Contains(p.Value)))
                  .ToList();
        }

        private List<RoleNodes> rolesChildren = new List<RoleNodes>();

        /// <summary>
        /// EditAuthority时获取当前User下的所有Role_IdWith当前User的DishSingleAuthority
        /// </summary>
        /// <returns></returns>
        public async Task<WebResponseContent> GetCurrentTreePermission()
        {
            _responseContent = await GetCurrentUserTreePermission();
            int roleId = UserContext.Current.RoleId;
            return _responseContent.OK(null, new
            {
                tree = _responseContent.Data,
                roles = await GetAllChildrenAsync(roleId)
            });
        }

        private List<RoleNodes> roles = null;

        /// <summary>
        /// 获取当前Role_Id下的所有Role_Id包括自己的Role_Id
        /// </summary>
        /// <returns></returns>
        public List<int> GetAllChildrenRoleIdAndSelf()
        {
            int roleId = UserContext.Current.RoleId;
            List<int> roleIds = GetAllChildren(roleId).Select(x => x.Id).ToList();
            roleIds.Add(roleId);
            return roleIds;
        }


        /// <summary>
        /// 获取当前Role_Id下的所有Role_Id
        /// </summary>
        /// <param name="roleId"></param>
        /// <returns></returns>
        public List<RoleNodes> GetAllChildren(int roleId)
        {
            roles = GetAllRoleQueryable(roleId).ToList();
            return GetAllChildrenNodes(roleId);
        }

        public async Task<List<RoleNodes>> GetAllChildrenAsync(int roleId)
        {
            roles = await GetAllRoleQueryable(roleId).ToListAsync();
            return GetAllChildrenNodes(roleId);
        }
        private IQueryable<RoleNodes> GetAllRoleQueryable(int roleId)
        {
            return repository
                   .FindAsIQueryable(
                   x => x.Enable == 1 && x.Role_Id > 1)
                   .Select(
                   s => new RoleNodes()
                   {
                       Id = s.Role_Id,
                       ParentId = s.ParentId,
                       RoleName = s.RoleName
                   });
        }

        public async Task<List<int>> GetAllChildrenRoleIdAsync(int roleId)
        {
            return (await GetAllChildrenAsync(roleId)).Select(x => x.Id).ToList();
        }


        public List<int> GetAllChildrenRoleId(int roleId)
        {
            return GetAllChildren(roleId).Select(x => x.Id).ToList();
        }

        private List<RoleNodes> GetAllChildrenNodes(int roleId)
        {
            return RoleContext.GetAllChildren(roleId);
        }
        /// <summary>
        /// 递归获取所有子NodeAuthority
        /// </summary>
        /// <param name="roleId"></param>


        /// <summary>
        /// 保存Role_IdAuthority
        /// </summary>
        /// <param name="userPermissions"></param>
        /// <param name="roleId"></param>
        /// <returns></returns>
        public async Task<WebResponseContent> SavePermission(List<UserPermissions> userPermissions, int roleId)
        {

            string message = "";
            try
            {
                UserInfo user = UserContext.Current.UserInfo;
                if (!(await GetAllChildrenAsync(user.Role_Id)).Exists(x => x.Id == roleId))
                    return _responseContent.Error("没有Authority修改此Role_Id的Authority信息");
                //当前User的Authority
                List<Permissions> permissions = UserContext.Current.Permissions;

                List<int> originalMeunIds = new List<int>();
                //被分配Role_Id的Authority
                List<Sys_RoleAuth> roleAuths = await repository.FindAsync<Sys_RoleAuth>(x => x.Role_Id == roleId);
                List<Sys_RoleAuth> updateAuths = new List<Sys_RoleAuth>();
                foreach (UserPermissions x in userPermissions)
                {
                    Permissions per = permissions.Where(p => p.Menu_Id == x.Id).FirstOrDefault();
                    //不能分配超过当前User的Authority
                    if (per == null) continue;
                    //per.UserAuthArr.Contains(a.Value)校验Authority范围
                    string[] arr = x.Actions == null || x.Actions.Count == 0
                      ? new string[0]
                      : x.Actions.Where(a => per.UserAuthArr.Contains(a.Value))
                      .Select(s => s.Value).ToArray();

                    //如果当前Authority没有分配过，SetUpAuth_Id默认为0，Table示新增的Authority
                    var auth = roleAuths.Where(r => r.Menu_Id == x.Id).Select(s => new { s.Auth_Id, s.AuthValue, s.Menu_Id }).FirstOrDefault();
                    string newAuthValue = string.Join(",", arr);
                    //Authority没有发生变化则不处理
                    if (auth == null || auth.AuthValue != newAuthValue)
                    {
                        updateAuths.Add(new Sys_RoleAuth()
                        {
                            Role_Id = roleId,
                            Menu_Id = x.Id,
                            AuthValue = string.Join(",", arr),
                            Auth_Id = auth == null ? 0 : auth.Auth_Id,
                            ModifyDate = DateTime.Now,
                            Modifier = user.UserTrueName,
                            CreateDate = DateTime.Now,
                            Creator = user.UserTrueName
                        });
                    }
                    else
                    {
                        originalMeunIds.Add(auth.Menu_Id);
                    }

                }
                //更新Authority
                repository.UpdateRange(updateAuths.Where(x => x.Auth_Id > 0), x => new
                {
                    x.Menu_Id,
                    x.AuthValue,
                    x.Modifier,
                    x.ModifyDate
                });
                //新增的Authority
                repository.AddRange(updateAuths.Where(x => x.Auth_Id <= 0));

                //获取Authority取消的Authority
                int[] authIds = roleAuths.Where(x => userPermissions.Select(u => u.Id)
                 .ToList().Contains(x.Menu_Id) || originalMeunIds.Contains(x.Menu_Id))
                .Select(s => s.Auth_Id)
                .ToArray();
                List<Sys_RoleAuth> delAuths = roleAuths.Where(x => x.AuthValue != "" && !authIds.Contains(x.Auth_Id)).ToList();
                delAuths.ForEach(x =>
                {
                    x.AuthValue = "";
                });
                //将取消的AuthoritySetUp为""
                repository.UpdateRange(delAuths, x => new
                {
                    x.Menu_Id,
                    x.AuthValue,
                    x.Modifier,
                    x.ModifyDate
                });

                int addCount = updateAuths.Where(x => x.Auth_Id <= 0).Count();
                int updateCount = updateAuths.Where(x => x.Auth_Id > 0).Count();
                await repository.SaveChangesAsync();

                string _version = DateTime.Now.ToString("yyyyMMddHHMMssfff");
                //标识缓存已更新
                base.CacheContext.Add(roleId.GetRoleIdKey(), _version);

                _responseContent.OK($"保存Success：新增加配DishSingleAuthority{addCount}条,更新DishSingle{updateCount}条,DelAuthority{delAuths.Count()}条");
            }
            catch (Exception ex)
            {
                message = "ExceptionInfo：" + ex.Message + ex.StackTrace + ",";
            }
            finally
            {
                Logger.Info($"Authority分Configuration:{message}{_responseContent.Message}");
            }

            return _responseContent;
        }


        public override WebResponseContent Add(SaveModel saveDataModel)
        {
            AddOnExecuting = (Sys_Role role, object obj) =>
            {
                if (!UserContext.Current.IsSuperAdmin && role.ParentId > 0 && !RoleContext.GetAllChildrenIds(UserContext.Current.RoleId).Contains(role.ParentId))
                {
                    return _responseContent.Error("不能添加此Role_Id");
                }
                return ValidateRoleName(role, x => x.RoleName == role.RoleName);
            };
            return RemoveCache(base.Add(saveDataModel));
        }

        public override WebResponseContent Del(object[] keys, bool delList = true)
        {
            if (!UserContext.Current.IsSuperAdmin)
            {
                var roleIds = RoleContext.GetAllChildrenIds(UserContext.Current.RoleId);
                var _keys = keys.Select(s => s.GetInt());
                if (_keys.Any(x => !roleIds.Contains(x)))
                {
                    return _responseContent.Error("没有AuthorityDel此Role_Id");
                }
            }
        
            return RemoveCache(base.Del(keys, delList));
        }

        private WebResponseContent ValidateRoleName(Sys_Role role, Expression<Func<Sys_Role, bool>> predicate)
        {
            if (repository.Exists(predicate))
            {
                return _responseContent.Error($"Role_Id名【{role.RoleName}】已存在,请SetUpOtherRole_Id名");
            }
            return _responseContent.OK();
        }

        public override WebResponseContent Update(SaveModel saveModel)
        {
            UpdateOnExecuting = (Sys_Role role, object obj1, object obj2, List<object> obj3) =>
            {
                //2020.05.07新增禁止选择上级Role_Id为自己
                if (role.Role_Id == role.ParentId)
                {
                    return _responseContent.Error($"上级Role_Id不能选择自己");
                }
                if (role.Role_Id == UserContext.Current.RoleId)
                {
                    return _responseContent.Error($"不能修改自己的Role_Id");
                }
                if (repository.Exists(x => x.Role_Id == role.ParentId && x.ParentId == role.Role_Id))
                {
                    return _responseContent.Error($"不能选择此上级Role_Id，选择的上级Role_IdWith当前Role_Id形成依赖关系");
                }
                if (!UserContext.Current.IsSuperAdmin)
                {
                    var roleIds = RoleContext.GetAllChildrenIds(UserContext.Current.RoleId);
                    if (role.ParentId > 0)
                    {
                        if (!roleIds.Contains(role.ParentId))
                        {
                            return _responseContent.Error($"不能选择此Role_Id");
                        }
                    }
                    if (!roleIds.Contains(role.Role_Id))
                    {
                        return _responseContent.Error($"不能选择此Role_Id");
                    }
                    return _responseContent.OK("");
                }
                return ValidateRoleName(role, x => x.RoleName == role.RoleName && x.Role_Id != role.Role_Id);
            };
            return RemoveCache(base.Update(saveModel));
        }
        private WebResponseContent RemoveCache(WebResponseContent webResponse)
        {
            if (webResponse.Status)
            {
                RoleContext.Refresh();
            }
            return webResponse;
        }
    }


    public class UserPermissions
    {
        public int Id { get; set; }
        public int Pid { get; set; }
        public string Text { get; set; }
        public bool IsApp { get; set; }
        public List<Sys_Actions> Actions { get; set; }
    }
}
