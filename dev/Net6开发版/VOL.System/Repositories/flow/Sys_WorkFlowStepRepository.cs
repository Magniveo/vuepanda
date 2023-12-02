/*
 *代码由框架生成,任何更改都可能导致被CodeGenerationDevice覆盖
 *Repository提供Data库Operation，如果要增加Data库Operation请在当前目录下Partial文件夹Sys_WorkFlowStepRepository编写代码
 */
using VOL.System.IRepositories;
using VOL.Core.BaseProvider;
using VOL.Core.EFDbContext;
using VOL.Core.Extensions.AutofacManager;
using VOL.Entity.DomainModels;

namespace VOL.System.Repositories
{
    public partial class Sys_WorkFlowStepRepository : RepositoryBase<Sys_WorkFlowStep> , ISys_WorkFlowStepRepository
    {
    public Sys_WorkFlowStepRepository(VOLContext dbContext)
    : base(dbContext)
    {

    }
    public static ISys_WorkFlowStepRepository Instance
    {
      get {  return AutofacContainerModule.GetService<ISys_WorkFlowStepRepository>(); } }
    }
}
