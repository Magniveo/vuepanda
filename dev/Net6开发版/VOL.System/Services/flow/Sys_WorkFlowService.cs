/*
 *Author：jxx
 *Contact：283591387@qq.com
 *代码由框架生成,此处任何更改都可能导致被CodeGenerationDevice覆盖
 *所有业务编写全部应在Partial文件夹下Sys_WorkFlowServiceWithISys_WorkFlowService中编写
 */
using VOL.System.IRepositories;
using VOL.System.IServices;
using VOL.Core.BaseProvider;
using VOL.Core.Extensions.AutofacManager;
using VOL.Entity.DomainModels;

namespace VOL.System.Services
{
    public partial class Sys_WorkFlowService : ServiceBase<Sys_WorkFlow, ISys_WorkFlowRepository>
    , ISys_WorkFlowService, IDependency
    {
    public Sys_WorkFlowService(ISys_WorkFlowRepository repository)
    : base(repository)
    {
    Init(repository);
    }
    public static ISys_WorkFlowService Instance
    {
      get { return AutofacContainerModule.GetService<ISys_WorkFlowService>(); } }
    }
 }
