<!--
*Author：jxx
 *Contact：283591387@qq.com
 *代码由框架生成,任何更改都可能导致被CodeGenerationDevice覆盖
 *业务请在@/extension/system/Sys_DictionaryList.js此处编写
 -->
<template>
    <div>
        <view-grid :columns="columns"
                   :detail="detail"
                   :editFormFields="editFormFields"
                   :editFormOptions="editFormOptions"
                   :searchFormFields="searchFormFields"
                   :searchFormOptions="searchFormOptions"
                   :table="table"
                   :extend="extend">
        </view-grid>
    </div>
</template>

<script>
    import extend from "@/extension/system/Sys_DictionaryList.js";
    var vueParam = {
        data() {
            return {
                table: {
                    key: 'DicList_ID',
                    footer: "Foots",
                    cnName: 'DictionaryDetails',
                    name: 'Sys_DictionaryList',
                    url: "/Sys_DictionaryList/",
                    sortName: "DicList_ID"
                },
                extend: extend,
                editFormFields: {"DicValue":"","DicName":"","OrderNo":"","Remark":"","Enable":""},
                editFormOptions: [[{"columnType":"string","title":"DicValue","field":"DicValue","type":"text"},
                               {"columnType":"string","title":"DicName","field":"DicName","type":"text"},
                               {"columnType":"int","title":"OrderNo","field":"OrderNo","type":"text"},
                               {"columnType":"int","title":"Remark","field":"Remark","type":"text"},
                               {"columnType":"byte","dataKey":"enable","title":"Enable","field":"Enable","type":"switch"}]],
                searchFormFields: {},
                searchFormOptions: [],
                columns: [{field:'DicList_ID',title:'DicList_ID',type:'int',width:90,hidden:true,readonly:true,require:true,align:'left'},
                       {field:'Dic_ID',title:'Dic_ID',type:'int',width:90,readonly:true,align:'left',sortable:true},
                       {field:'DicValue',title:'DicValue',type:'string',width:90,align:'left'},
                       {field:'DicName',title:'DicName',type:'string',width:90,align:'left'},
                       {field:'OrderNo',title:'OrderNo',type:'int',width:90,align:'left'},
                       {field:'Remark',title:'Remark',type:'int',width:90,align:'left'},
                       {field:'Enable',title:'Enable',type:'byte',bind:{ key:'enable',data:[]},width:90,align:'left'},
                       {field:'CreateID',title:'CreateID',type:'int',width:90,hidden:true,align:'left'},
                       {field:'Creator',title:'Creator',type:'string',width:130,readonly:true,align:'left'},
                       {field:'CreateDate',title:'CreateDate',type:'datetime',width:90,readonly:true,align:'left',sortable:true},
                       {field:'ModifyID',title:'ModifyID',type:'int',width:90,hidden:true,align:'left'},
                       {field:'Modifier',title:'Modifier',type:'string',width:130,align:'left'},
                       {field:'ModifyDate',title:'ModifyDate',type:'datetime',width:90,align:'left',sortable:true}],
                detail: {
                    cnName:"#detailCnName",
                    columns: [],
                    sortName: "#detailSortName"
                }
            };
        }
    };
    export default vueParam;
</script>
