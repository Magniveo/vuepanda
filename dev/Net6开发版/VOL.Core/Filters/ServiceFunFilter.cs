using OfficeOpenXml;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using VOL.Core.Enums;
using VOL.Core.Utilities;
using VOL.Core.WorkFlow;
using VOL.Entity.DomainModels;

namespace VOL.Core.Filters
{
    public abstract class ServiceFunFilter<T> where T : class
    {

        /// <summary>
        /// 2020.08.15是否开启多租户功能
        /// 使用方法见Document或SellOrderService.cs
        /// </summary>
        protected bool IsMultiTenancy { get; set; }

        /// <summary>
        /// Query界面table 统计、求和、平均值等
        /// 实现方式
        ///SummaryExpress = (IQueryable<App_TransactionAvgPrice> queryable) =>
        //                {
        //                return queryable.GroupBy(x => 1).Select(x => new
        //                {
        //                    AvgPrice = x.Average(o => o.AvgPrice),
        //                    Enable = x.Sum(o => o.Enable)
        //            }).FirstOrDefault();
        //};
        /// </summary>
        //   protected Func<IGrouping<T, T>, object> SummaryExpress = null;
        protected Func<IQueryable<T>, object> SummaryExpress = null;

        /// <summary>
        /// 明细table 统计、求和、平均值等
        /// </summary>
        /// <typeparam name="Detail"></typeparam>
        /// <param name="queryeable"></param>
        /// <returns></returns>
        protected abstract object GetDetailSummary<Detail>(IQueryable<Detail> queryeable);

        /// <summary>
        /// 是否开启UserDataAuthority,true=User只能Operation自己(及下级Role_Id)创建的Data,如:Query、Del、修改等Operation
        /// 注意：需要在CodeGenerationDevice界面选择【是】及生成Model才会生效)
        /// </summary>
        protected bool LimitCurrentUserPermission { get; set; } = false;

        ///默认Export最大TableQuantity：0不限制 
        protected int Limit { get; set; } = 0;

        /// <summary>
        /// 默认上传文件大小限制3M
        /// </summary>
        protected int LimitUpFileSizee { get; set; } = 3;


        /// <summary>
        /// 2020.08.15添加Customize原生Querysql,这个对于不想写Table达式关联或者复杂Query非常有用
        /// 例：QuerySql=$"select * from tb1 as a where  a.name='xxxx' x.id in (select b.id from tb2 b)";
        ///  select * 这里可以Customize，但select 必须返回Table所有的列，不能少
        /// </summary>
        protected string QuerySql = null;

        /// <summary>
        /// Query前,对现在有的Query字符串条件增加或Del
        /// </summary>
        protected Action<List<SearchParameters>> QueryRelativeList { get; set; }

        //Query前,在现有的Query条件上通过Table达式修改Query条件
        protected Func<IQueryable<T>, IQueryable<T>> QueryRelativeExpression { get; set; }


        /// <summary>
        /// 指定Query的列，格式:Expression<Func<T, object>> exp = x => new { x.字段1, x.字段2 }(暂时未启用)
        /// </summary>
        protected Expression<Func<T, object>> Columns { get; set; }

        /// <summary>
        /// SetUpQueryOrderNo参数及方式,参数格式为：
        ///  Expression<Func<T, Dictionary<object, bool>>> orderBy = x => new Dictionary<object, QueryOrderBy>() 
        ///            {{ x.ID, QueryOrderBy.Asc },{ x.DestWarehouseName, QueryOrderBy.Desc } };
        /// 返回的是new Dictionary<object, bool>(){{}}key为OrderNo字段，QueryOrderBy为OrderNo方式
        /// </summary>
        protected Expression<Func<T, Dictionary<object, QueryOrderBy>>> OrderByExpression;

        /// <summary>
        /// SetUpQuery的WorkTable(已弃用)
        /// </summary>
        protected string TableName { get; set; }

        /// <summary>
        /// PageQuery或Export，从Data库Query出来的结果
        /// </summary>
        protected Action<PageGridData<T>> GetPageDataOnExecuted;

        /// <summary>
        /// 调用Add处理前(SaveModel为传入的原生Data)
        /// </summary>
        protected Func<SaveModel, WebResponseContent> AddOnExecute;

        /// <summary>
        /// 调用Add保存Data库前处理(已将提交的原生Data转换成了对象)
        ///  Func<T, object,ResponseData>  T为主TableData，object为明细Data(如果需要使用明细对象,请用 object as List<T>转换) 
        /// </summary>
        protected Func<T, object, WebResponseContent> AddOnExecuting;

        /// <summary>
        /// 调用Add保存Data库后处理。
        /// **实现当前方法时，内部默认已经开启事务，如果实现的方法Operation的是同一Data库,则不需要在AddOnExecuted中事务
        ///  Func<T, object,ResponseData>  T为主TableData，object为明细Data(如果需要使用明细对象,请用 object as List<T>转换) 
        ///  此处已开启了DbContext事务(重点),如果还有Other业务处事，直接在这里写EF代码,不需要再开启事务
        /// 如果Execute的是手写sql请用repository.DbContext.Database.ExecuteSqlCommand()或 repository.DbContext.Set<T>().FromSqlExecute具体DbSql
        /// </summary>
        protected Func<T, object, WebResponseContent> AddOnExecuted;

        /// <summary>
        /// 进入ApprovalProcess方法之前
        /// </summary>
        protected Func<T, bool> AddWorkFlowExecuting;

        /// <summary>
        /// 写入ApprovalProcessData之后
        /// list:Approval的人id
        /// </summary>
        protected Action<T,List<int>> AddWorkFlowExecuted;

        /// <summary>
        /// 调用更新方法前处理(SaveModel为传入的原生Data)
        /// </summary>
        protected Func<SaveModel, WebResponseContent> UpdateOnExecute;

        /// <summary>
        ///  调用更新方法保存Data库前处理
        ///  (已将提交的原生Data转换成了对象,将明细新增、修改、Del的Data分别用object1/2/3标识出来 )
        ///  T=更新的主Table对象
        ///  object1=为新增明细的对象，使用时将object as List<T>转换一下
        ///  object2=为更新明细的对象
        ///  List<object>=为Del的细的对象Key
        /// </summary>
        protected Func<T, object, object, List<object>, WebResponseContent> UpdateOnExecuting;

        /// <summary>
        ///  调用更新方法保存Data库后处理
        ///   **实现当前方法时，内部默认已经开启事务，如果实现的方法Operation的是同一Data库,则不需要在UpdateOnExecuted中事务
        ///  (已将提交的原生Data转换成了对象,将明细新增、修改、Del的Data分别用object1/2/3标识出来 )
        ///  T=更新的主Table对象
        ///  object1=为新增明细的对象，使用时将object as List<T>转换一下
        ///  object2=为更新明细的对象
        ///  List<object>=为Del的细的对象Key
        /// 此处已开启了DbContext事务(重点),如果还有Other业务处事，直接在这里写EF代码,不需要再开启事务
        /// 如果Execute的是手写sql请用repository.DbContext.Database.ExecuteSqlCommand()或 repository.DbContext.Set<T>().FromSqlExecute具体DbSql
        /// </summary>
        protected Func<T, object, object, List<object>, WebResponseContent> UpdateOnExecuted;

        /// <summary>
        /// Del前处理,object[]准备Del的主键
        /// </summary>
        protected Func<object[], WebResponseContent> DelOnExecuting;

        /// <summary>
        /// Del后处理,object[]已Del的主键,此处已开启了DbContext事务(重点),如果还有Other业务处事，直接在这里写EF代码,不需要再开启事务
        /// 如果Execute的是手写sql请用repository.DbContext.Database.ExecuteSqlCommand()或 repository.DbContext.Set<T>().FromSqlExecute具体DbSql
        /// </summary>
        protected Func<object[], WebResponseContent> DelOnExecuted;

        /// <summary>
        /// 审核前处理
        /// </summary>
        protected Func<List<T>, WebResponseContent> AuditOnExecuting;
        /// <summary>
        /// 审核后处理
        /// </summary>
        protected Func<List<T>, WebResponseContent> AuditOnExecuted;


        /// <summary>
        /// ApprovalProcess审核前
        /// T:当前审核的Data
        /// AuditStatus:AuditStatus
        /// bool:当前Data是否为最后一个人审核
        /// </summary>
        protected Func<T, AuditStatus, bool, WebResponseContent> AuditWorkFlowExecuting;

        /// <summary>
        /// ApprovalProcess审核后
        /// T:当前审核的Data
        /// AuditStatus:AuditStatus
        /// list:下一个Node的Approval人id
        /// bool:当前Data是否为最后一个人审核
        /// </summary>
        protected Func<T, AuditStatus,List<int>, bool, WebResponseContent> AuditWorkFlowExecuted;

        /// <summary>
        ///Export前处理,DataTableExport的TableData
        ///List<T>Export的Data, List<string>忽略不需要Export的字段
        ///此方法不建议使用,由下面ExportColumns委托替代2020.05.07
        /// </summary>
        protected Func<List<T>, List<string>, WebResponseContent> ExportOnExecuting;

        /// <summary>
        /// 2020.05.07
        /// ExportTableData(界面上ExportOperation),指定要Export的列，格式:Expression<Func<T, object>> exp = x => new { x.字段1, x.字段2 }
        /// </summary>
        protected Expression<Func<T, object>> ExportColumns { get; set; }
        /// <summary>
        /// 指定要Export的列
        /// </summary>
        protected string[] ExportColumnsArray { get; set; }

        /// <summary>
        /// 2020.05.07
        /// Export下载模板，指定要Export的模板列，格式:Expression<Func<T, object>> exp = x => new { x.字段1, x.字段2 }
        /// </summary>
        protected Expression<Func<T, object>> DownLoadTemplateColumns { get; set; }

 
        /// <summary>
        /// 导入保存后
        /// </summary>
        protected Func<List<T>, WebResponseContent> ImportOnExecuted;

        /// <summary>
        /// 导入保存前
        /// </summary>
        protected Func<List<T>, WebResponseContent> ImportOnExecuting;

        /// <summary>
        /// 导入时不验证下拉框Data源的字段值2023.05.03
        /// </summary>
        protected Expression<Func<T, object>> ImportIgnoreSelectValidationColumns;

        /// <summary>
        /// 2022.06.20增加原生excel读取方法(导入时可以Customize读取excelContent)
        /// string=当前读取的excelSingle元格的值
        /// ExcelWorksheet=excel对象
        /// ExcelRange当前excelSingle元格对象
        /// int=当前读取的第几数
        /// int=当前读取的第几列
        /// string=返回的值
        /// </summary>
        protected Func<string, ExcelWorksheet, ExcelRange, int, int, string> ImportOnReadCellValue;


        /// <summary>
        /// Customize上传文件夹(2022.10.07)
        /// </summary>
        protected string UploadFolder = null;

    }
}
