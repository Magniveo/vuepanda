﻿using System.Collections.Generic;
using System.Threading.Tasks;
using VOL.Core.BaseProvider;
using VOL.Entity.DomainModels;

namespace VOL.System.IServices
{
    public partial interface ISys_DictionaryService
    {
        /// <summary>
        /// CodeGenerationDevice获取所有字典项(超级管理Authority)
        /// </summary>
        /// <returns></returns>
        Task<List<string>> GetBuilderDictionary();
        object GetVueDictionary(string[] dicNos);
        object GetTableDictionary(Dictionary<string, object[]> keyData);
        object GetSearchDictionary(string dicNo, string value);

        /// <summary>
        /// FormSetUp为EnableQuery，重置或第一次添加Form时，获取字典的key、value
        /// </summary>
        /// <param name="dicNo"></param>
        /// <param name="value"></param>
        /// <returns></returns>
        Task<object> GetRemoteDefaultKeyValue(string dicNo, string key);
    }
}

