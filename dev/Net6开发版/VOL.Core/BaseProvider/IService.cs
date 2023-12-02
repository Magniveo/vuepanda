
using Microsoft.AspNetCore.Http;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using VOL.Core.CacheManager;
using VOL.Core.Utilities;
using VOL.Entity.DomainModels;
using VOL.Entity.SystemModels;

namespace VOL.Core.BaseProvider
{
    public interface IService<T> where T : BaseEntity
    {

        ICacheService CacheContext { get; }
        Microsoft.AspNetCore.Http.HttpContext Context { get; }

        /// <summary>
        /// 前端Query条件转换为EFQueryQueryable(2023.04.02)
        /// </summary>
        /// <param name="options">前端Query参数</param>
        /// <param name="useTenancy">是否使用Data隔离</param>
        /// <returns></returns>
        IQueryable<T> GetPageDataQueryFilter(PageDataOptions options, bool useTenancy = true);
        /// <summary>
        /// Query
        /// </summary>
        /// <param name="pageData"></param>
        /// <returns></returns>
        PageGridData<T> GetPageData(PageDataOptions pageData);

        object GetDetailPage(PageDataOptions pageData);

        WebResponseContent Upload(List<IFormFile> files);

        WebResponseContent DownLoadTemplate();

        WebResponseContent Import(List<IFormFile> files);
        /// <summary>
        /// Export
        /// </summary>
        /// <param name="pageData"></param>
        /// <returns></returns>
        WebResponseContent Export(PageDataOptions pageData);

        /// <summary>
        /// 新增
        /// </summary>
        /// <param name="saveDataModel">主TableWith子Table的Data</param>
        /// <returns></returns>
        WebResponseContent Add(SaveModel saveDataModel);

        /// <summary>
        /// 
        /// </summary>
        /// <param name="entity">保存的实体</param>
        /// <param name="validationEntity">是否对实体进行校验</param>
        /// <returns></returns>
        WebResponseContent AddEntity(T entity, bool validationEntity = true);

        /// <summary>
        /// 
        /// </summary>
        /// <typeparam name="TDetail"></typeparam>
        /// <param name="entity">保存的实体</param>
        /// <param name="list">保存的明细</param>
        /// <param name="validationEntity">是否对实体进行校验</param>
        /// <returns></returns>
        WebResponseContent Add<TDetail>(T entity, List<TDetail> list = null, bool validationEntity = true) where TDetail : class;
        /// <summary>
        /// Edit
        /// </summary>
        /// <param name="saveDataModel">主TableWith子Table的Data</param>
        /// <returns></returns>
        WebResponseContent Update(SaveModel saveDataModel);


        /// <summary>
        /// DelData
        /// </summary>
        /// <param name="keys">Del的主键</param>
        /// <param name="delList">是否Del对应明细(默认会Del明细)</param>
        /// <returns></returns>
        WebResponseContent Del(object[] keys, bool delList = true);

        WebResponseContent Audit(object[] id, int? auditStatus, string auditReason);


        (string, T, bool) ApiValidate(string bizContent, Expression<Func<T, object>> expression = null);


        /// <summary>
        /// 
        /// </summary>
        /// <typeparam name="TInput"></typeparam>
        /// <param name="bizContent"></param>
        /// <param name="expression">对指属性验证格式如：x=>new { x.UserName,x.Value }</param>
        /// <returns>(string,TInput, bool) string:返回验证Message,TInput：bizContent序列化后的对象,bool:验证是否通过</returns>
        (string, TInput, bool) ApiValidateInput<TInput>(string bizContent, Expression<Func<TInput, object>> expression);

        /// <summary>
        /// 
        /// </summary>
        /// <typeparam name="TInput"></typeparam>
        /// <param name="bizContent"></param>
        /// <param name="expression">对指属性验证格式如：x=>new { x.UserName,x.Value }</param>
        /// <param name="validateExpression">对指定的字段只做合法性判断比如长度是是否超长</param>
        /// <returns>(string,TInput, bool) string:返回验证Message,TInput：bizContent序列化后的对象,bool:验证是否通过</returns>
        (string, TInput, bool) ApiValidateInput<TInput>(string bizContent, Expression<Func<TInput, object>> expression, Expression<Func<TInput, object>> validateExpression);


        /// <summary>
        /// 将Data源映射到新的Data中,List<TSource>映射到List<TResult>或TSource映射到TResult
        /// 目前只支持Dictionary或实体AppType
        /// </summary>
        /// <typeparam name="TSource"></typeparam>
        /// <typeparam name="TResult"></typeparam>
        /// <param name="source"></param>
        /// <param name="resultExpression">只映射返回对象的指定字段</param>
        /// <param name="sourceExpression">只映射Data源对象的指定字段</param>
        /// 过滤条件Table达式调用方式：ListTable达式x => new { x[0].MenuName, x[0].Menu_Id}，Table示指定映射MenuName,Menu_Id字段
        ///  List<Sys_Menu> list = new List<Sys_Menu>();
        ///  list.MapToObject<List<Sys_Menu>, List<Sys_Menu>>(x => new { x[0].MenuName, x[0].Menu_Id}, null);
        ///  
        ///过滤条件Table达式调用方式：实体Table达式x => new { x.MenuName, x.Menu_Id}，Table示指定映射MenuName,Menu_Id字段
        ///  Sys_Menu sysMenu = new Sys_Menu();
        ///  sysMenu.MapToObject<Sys_Menu, Sys_Menu>(x => new { x.MenuName, x.Menu_Id}, null);
        /// <returns></returns>
        TResult MapToEntity<TSource, TResult>(TSource source, Expression<Func<TResult, object>> resultExpression,
           Expression<Func<TSource, object>> sourceExpression = null) where TResult : class;

        /// <summary>
        /// 将一个实体的赋到另一个实体上,应用场景：
        /// 两个实体，a a1= new a();b b1= new b();  a1.P=b1.P; a1.Name=b1.Name;
        /// </summary>
        /// <typeparam name="TSource"></typeparam>
        /// <typeparam name="TResult"></typeparam>
        /// <param name="source"></param>
        /// <param name="result"></param>
        /// <param name="expression">指定对需要的字段赋值,格式x=>new {x.Name,x.P},返回的结果只会对NameWithP赋值</param>
        void MapValueToEntity<TSource, TResult>(TSource source, TResult result, Expression<Func<TResult, object>> expression = null) where TResult : class;


    }
}
