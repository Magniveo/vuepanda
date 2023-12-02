using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using VOL.Core.Extensions;
using VOL.Core.ManageUser;
using VOL.Core.Services;
using VOL.Core.Utilities;
using VOL.Entity;
using VOL.Entity.DomainModels;

namespace VOL.System.Services
{
    public partial class Sys_MenuService
    {
        /// <summary>
        /// DishSingleStatic化处理，每次获取DishSingle时先比较DishSingle是否发生变化，如果发生变化从Data库重新获取，否则直接获取_menusDishSingle
        /// </summary>
        private static List<Sys_Menu> _menus { get; set; }

        /// <summary>
        /// 从Data库获取DishSingle时锁定的对象
        /// </summary>
        private static object _menuObj = new object();

        /// <summary>
        /// 当前服务Device的DishSingle版本
        /// </summary>
        private static string _menuVersionn = "";

        private const string _menuCacheKey = "inernalMenu";

        /// <summary>
        /// Edit修改DishSingle时,获取所有DishSingle
        /// </summary>
        /// <returns></returns>
        public async Task<object> GetMenu()
        {
            //  DBServerProvider.SqlDapper.q
            return (await repository.FindAsync(x => 1 == 1, a =>
             new
             {
                 id = a.Menu_Id,
                 parentId = a.ParentId,
                 name = a.MenuName,
                 a.MenuType,
                 a.OrderNo
             })).OrderByDescending(a => a.OrderNo)
                .ThenByDescending(q => q.parentId).ToList();

        }

        private List<Sys_Menu> GetAllMenu()
        {
            //每次比较缓存是否更新过，如果更新则重新获取Data
            string _cacheVersion = CacheContext.Get(_menuCacheKey);
            if (_menuVersionn != "" && _menuVersionn == _cacheVersion)
            {
                return _menus ?? new List<Sys_Menu>();
            }
            lock (_menuObj)
            {
                if (_menuVersionn != "" && _menus != null && _menuVersionn == _cacheVersion) return _menus;
                //2020.12.27增加DishSingle界面上不显示，但可以分配Authority
                _menus = repository.FindAsIQueryable(x => x.Enable == 1 || x.Enable == 2)
                    .OrderByDescending(a => a.OrderNo)
                    .ThenByDescending(q => q.ParentId).ToList();

                _menus.ForEach(x =>
                {
                    // 2022.03.26增移动端加DishSingleAppType
                    x.MenuType ??= 0;
                    if (!string.IsNullOrEmpty(x.Auth) && x.Auth.Length > 10)
                    {
                        try
                        {
                            x.Actions = x.Auth.DeserializeObject<List<Sys_Actions>>();
                        }
                        catch { }
                    }
                    if (x.Actions == null) x.Actions = new List<Sys_Actions>();
                });

                string cacheVersion = CacheContext.Get(_menuCacheKey);
                if (string.IsNullOrEmpty(cacheVersion))
                {
                    cacheVersion = DateTime.Now.ToString("yyyyMMddHHMMssfff");
                    CacheContext.Add(_menuCacheKey, cacheVersion);
                }
                else
                {
                    _menuVersionn = cacheVersion;
                }
            }
            return _menus;
        }

        /// <summary>
        /// 获取当前User有AuthorityView的DishSingle
        /// </summary>
        /// <returns></returns>
        public List<Sys_Menu> GetCurrentMenuList()
        {
            int roleId = UserContext.Current.RoleId;
            return GetUserMenuList(roleId);
        }


        public List<Sys_Menu> GetUserMenuList(int roleId)
        {
            if (UserContext.IsRoleIdSuperAdmin(roleId))
            {
                return GetAllMenu();
            }
            List<int> menuIds = UserContext.Current.GetPermissions(roleId).Select(x => x.Menu_Id).ToList();
            return GetAllMenu().Where(x => menuIds.Contains(x.Menu_Id)).ToList();
        }

        /// <summary>
        /// 获取当前User所有DishSingleWithAuthority
        /// </summary>
        /// <returns></returns>
        public async Task<object> GetCurrentMenuActionList()
        {
            return await GetMenuActionList(UserContext.Current.RoleId);
        }

        /// <summary>
        /// 根据Role_Id获取DishSingleWithAuthority
        /// </summary>
        /// <param name="roleId"></param>
        /// <returns></returns>
        public async Task<object> GetMenuActionList(int roleId)
        {
            //2020.12.27增加DishSingle界面上不显示，但可以分配Authority
            if (UserContext.IsRoleIdSuperAdmin(roleId))
            {
                return await Task.Run(() => GetAllMenu()
                .Where(c => c.MenuType == UserContext.MenuType)
                .Select(x =>
                new
                {
                    id = x.Menu_Id,
                    name = x.MenuName,
                    url = x.Url,
                    parentId = x.ParentId,
                    icon = x.Icon,
                    x.Enable,
                    x.TableName, // 2022.03.26增移动端加DishSingleAppType
                    permission = x.Actions.Select(s => s.Value).ToArray()
                }).ToList());
            }

            var menu = from a in UserContext.Current.Permissions
                       join b in GetAllMenu().Where(c => c.MenuType == UserContext.MenuType)
                       on a.Menu_Id equals b.Menu_Id
                       orderby b.OrderNo descending
                       select new
                       {
                           id = a.Menu_Id,
                           name = b.MenuName,
                           url = b.Url,
                           parentId = b.ParentId,
                           icon = b.Icon,
                           b.Enable,
                           b.TableName, // 2022.03.26增移动端加DishSingleAppType
                           permission = a.UserAuthArr
                       };
            return menu.ToList();
        }

        /// <summary>
        /// Add或EditDishSingle
        /// </summary>
        /// <param name="menu"></param>
        /// <returns></returns>
        public async Task<WebResponseContent> Save(Sys_Menu menu)
        {
            WebResponseContent webResponse = new WebResponseContent();
            if (menu == null) return webResponse.Error("没有获取到提交的参数");
            if (menu.Menu_Id > 0 && menu.Menu_Id == menu.ParentId) return webResponse.Error("ParentId不能是当前DishSingle的ID");
            try
            {
                webResponse = menu.ValidationEntity(x => new { x.MenuName, x.TableName });
                if (!webResponse.Status) return webResponse;
                if (menu.TableName != "/" && menu.TableName != ".")
                {
                    // 2022.03.26增移动端加DishSingleAppType判断
                    Sys_Menu sysMenu = await repository.FindAsyncFirst(x => x.TableName == menu.TableName);
                    if (sysMenu != null)
                    {
                        sysMenu.MenuType ??= 0;
                        if (sysMenu.MenuType == menu.MenuType)
                        {
                            if ((menu.Menu_Id > 0 && sysMenu.Menu_Id != menu.Menu_Id)
                            || menu.Menu_Id <= 0)
                            {
                                return webResponse.Error($"视图/WorkTable【{menu.TableName}】已被OtherDishSingle使用");
                            }
                        }
                    }
                }
                bool _changed = false;
                if (menu.Menu_Id <= 0)
                {
                    repository.Add(menu.SetCreateDefaultVal());
                }
                else
                {
                    //2020.05.07新增禁止选择上级Role_Id为自己
                    if (menu.Menu_Id == menu.ParentId)
                    {
                        return webResponse.Error($"ParentId不能为自己");
                    }
                    if (repository.Exists(x => x.ParentId == menu.Menu_Id && menu.ParentId == x.Menu_Id))
                    {
                        return webResponse.Error($"不能选择此ParentId，选择的ParentIdWith当前DishSingle形成依赖关系");
                    }

                    _changed = repository.FindAsIQueryable(c => c.Menu_Id == menu.Menu_Id).Select(s => s.Auth).FirstOrDefault() != menu.Auth;

                    repository.Update(menu.SetModifyDefaultVal(), p => new
                    {
                        p.ParentId,
                        p.MenuName,
                        p.Url,
                        p.Auth,
                        p.OrderNo,
                        p.Icon,
                        p.Enable,
                        p.MenuType,// 2022.03.26增移动端加DishSingleAppType
                        p.TableName,
                        p.ModifyDate,
                        p.Modifier
                    });
                }
                await repository.SaveChangesAsync();

                CacheContext.Add(_menuCacheKey, DateTime.Now.ToString("yyyyMMddHHMMssfff"));
                if (_changed)
                {
                    UserContext.Current.RefreshWithMenuActionChange(menu.Menu_Id);
                }
                _menus = null;
                webResponse.OK("保存Success", menu);
            }
            catch (Exception ex)
            {
                webResponse.Error(ex.Message);
            }
            finally
            {
                Logger.Info($"Table:{menu.TableName},DishSingle：{menu.MenuName},Authority{menu.Auth},{(webResponse.Status ? "Success" : "失败")}{webResponse.Message}");
            }
            return webResponse;

        }

        public async Task<WebResponseContent> DelMenu(int menuId)
        {
            WebResponseContent webResponse =new  WebResponseContent();
      
            if (await repository.ExistsAsync(x => x.ParentId == menuId))
            {
                return webResponse.Error("当前DishSingle存在子DishSingle,请先Del子DishSingle!");
            }
            repository.Delete(new Sys_Menu()
            {
                Menu_Id = menuId
            }, true);
            CacheContext.Add(_menuCacheKey, DateTime.Now.ToString("yyyyMMddHHMMssfff"));
            return webResponse.OK("DelSuccess");
        }
        /// <summary>
        /// EditDishSingle时，获取DishSingle信息
        /// </summary>
        /// <param name="menuId"></param>
        /// <returns></returns>
        public async Task<object> GetTreeItem(int menuId)
        {
            var sysMenu = (await base.repository.FindAsync(x => x.Menu_Id == menuId))
                .Select(
                p => new
                {
                    p.Menu_Id,
                    p.ParentId,
                    p.MenuName,
                    p.Url,
                    p.Auth,
                    p.OrderNo,
                    p.Icon,
                    p.Enable,
                    // 2022.03.26增移动端加DishSingleAppType
                    MenuType = p.MenuType ?? 0,
                    p.CreateDate,
                    p.Creator,
                    p.TableName,
                    p.ModifyDate
                }).FirstOrDefault();
            return sysMenu;
        }
    }
}

