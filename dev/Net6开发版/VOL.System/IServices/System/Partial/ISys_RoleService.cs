using System.Collections.Generic;
using System.Threading.Tasks;
using VOL.Core.UserManager;
using VOL.Core.Utilities;
using VOL.Entity.DomainModels;
using VOL.System.Services;

namespace VOL.System.IServices
{
    public partial interface ISys_RoleService
    {

        Task<WebResponseContent> GetUserTreePermission(int role_Id);

        Task<WebResponseContent> GetCurrentUserTreePermission();

        Task<WebResponseContent> GetCurrentTreePermission();

        Task<WebResponseContent> SavePermission(List<UserPermissions> userPermissions, int roleId);
        /// <summary>
        /// 获取Role_Id下所有的Role_Id
        /// </summary>
        /// <param name="roleId"></param>
        /// <returns></returns>
        Task<List<RoleNodes>> GetAllChildrenAsync(int roleId);

        /// <summary>
        /// 获取Role_Id下所有的Role_Id
        /// </summary>
        /// <param name="roleId"></param>
        /// <returns></returns>
        List<RoleNodes> GetAllChildren(int roleId);

        /// <summary>
        /// 获取Role_Id下所有的Role_Id
        /// </summary>
        /// <param name="roleId"></param>
        /// <returns></returns>
        Task<List<int>> GetAllChildrenRoleIdAsync(int roleId);

        List<int> GetAllChildrenRoleId(int roleId);
        /// <summary>
        /// 获取当前Role_Id下的所有Role_Id包括自己的Role_Id
        /// </summary>
        /// <returns></returns>
        List<int> GetAllChildrenRoleIdAndSelf();

    }
}

