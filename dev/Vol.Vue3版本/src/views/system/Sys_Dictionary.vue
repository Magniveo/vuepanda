<!--
*Author：jxx
 *Contact：283591387@qq.com
 *代码由框架生成,任何更改都可能导致被CodeGenerationDevice覆盖
 *业务请在@/extension/system/Sys_Dictionary.js此处编写
 -->
<template>
    <view-grid ref="grid"
               :columns="columns"
               :detail="detail"
               :editFormFields="editFormFields"
               :editFormOptions="editFormOptions"
               :searchFormFields="searchFormFields"
               :searchFormOptions="searchFormOptions"
               :table="table"
               :extend="extend">
    </view-grid>
</template>
<script>
    import extend from "@/extension/system/Sys_Dictionary.js";
    import { ref, defineComponent } from "vue";
    export default defineComponent({
        setup() {
            const table = ref({
                key: 'Dic_ID',
                footer: "Foots",
                cnName: 'DictionaryData',
                name: 'Sys_Dictionary',
                url: "/Sys_Dictionary/",
                sortName: "Dic_ID"
            });
            const editFormFields = ref({"DicNo":"","DicName":"","ParentId":"","OrderNo":"","Enable":"","CreateDate":"","DbSql":"","Remark":""});
            const editFormOptions = ref([[{"title":"DicNo","required":true,"field":"DicNo"},
                               {"title":"DicName","required":true,"field":"DicName"},
                               {"title":"ParentId","required":true,"field":"ParentId","type":"number"}],
                              [{"title":"OrderNo","field":"OrderNo","type":"number"},
                               {"dataKey":"enable","data":[],"title":"Enable","required":true,"field":"Enable","type":"select"},
                               {"title":"CreateDate","field":"CreateDate","disabled":true,"type":"datetime"}],
                              [{"title":"DbSql","field":"DbSql","colSize":8,"type":"textarea"},
                               {"title":"Remark","field":"Remark","type":"textarea"}]]);
            const searchFormFields = ref({"DicNo":"","DicName":"","ParentId":"","Enable":"","CreateDate":"","ModifyDate":""});
            const searchFormOptions = ref([[{"title":"DicNo","field":"DicNo"},{"title":"DicName","field":"DicName","type":"textarea"},{"title":"ParentId","field":"ParentId","type":"number"}],[{"dataKey":"enable","data":[],"title":"Enable","field":"Enable","type":"select"},{"title":"CreateDate","field":"CreateDate","type":"datetime"},{"title":"ModifyDate","field":"ModifyDate","type":"datetime"}]]);
            const columns = ref([{field:'Dic_ID',title:'Dic_ID',type:'int',width:90,hidden:true,readonly:true,require:true,align:'left'},
                       {field:'DicNo',title:'DicNo',type:'string',width:90,require:true,align:'left',sort:true},
                       {field:'DicName',title:'DicName',type:'string',link:true,width:140,require:true,align:'left'},
                       {field:'ParentId',title:'ParentId',type:'int',width:90,require:true,align:'left'},
                       {field:'Config',title:'Config',type:'string',width:300,hidden:true,align:'left'},
                       {field:'DbSql',title:'DbSql',type:'string',width:200,align:'left'},
                       {field:'DBServer',title:'DBServer',type:'string',width:90,hidden:true,align:'left'},
                       {field:'OrderNo',title:'OrderNo',type:'int',width:90,align:'left'},
                       {field:'Remark',title:'Remark',type:'string',width:90,align:'left'},
                       {field:'Enable',title:'Enable',type:'byte',bind:{ key:'enable',data:[]},width:90,require:true,align:'left'},
                       {field:'CreateID',title:'CreateID',type:'int',width:90,hidden:true,align:'left'},
                       {field:'Creator',title:'Creator',type:'string',width:130,hidden:true,readonly:true,align:'left'},
                       {field:'CreateDate',title:'CreateDate',type:'datetime',width:150,readonly:true,align:'left',sort:true},
                       {field:'ModifyID',title:'ModifyID',type:'int',width:90,hidden:true,align:'left'},
                       {field:'Modifier',title:'Modifier',type:'string',width:130,hidden:true,readonly:true,align:'left'},
                       {field:'ModifyDate',title:'ModifyDate',type:'datetime',width:150,readonly:true,align:'left',sort:true}]);
            const detail = ref({
                cnName: "DictionaryDetails",
                table: "Sys_DictionaryList",
                columns: [{field:'DicList_ID',title:'DicList_ID',type:'int',width:90,hidden:true,readonly:true,require:true,align:'left'},
                       {field:'Dic_ID',title:'Dic_ID',type:'int',width:90,readonly:true,align:'left',sort:true},
                       {field:'DicValue',title:'DicValue',type:'string',width:90,edit:{type:'text'},align:'left'},
                       {field:'DicName',title:'DicName',type:'string',width:90,edit:{type:'text'},align:'left'},
                       {field:'OrderNo',title:'OrderNo',type:'int',width:90,edit:{type:'text'},align:'left'},
                       {field:'Remark',title:'Remark',type:'string',width:90,edit:{type:'text'},align:'left'},
                       {field:'Enable',title:'Enable',type:'byte',bind:{ key:'enable',data:[]},width:90,edit:{type:'switch'},align:'left'},
                       {field:'CreateID',title:'CreateID',type:'int',width:90,hidden:true,align:'left'},
                       {field:'Creator',title:'Creator',type:'string',width:130,readonly:true,align:'left'},
                       {field:'CreateDate',title:'CreateDate',type:'datetime',width:90,readonly:true,align:'left',sort:true},
                       {field:'ModifyID',title:'ModifyID',type:'int',width:90,hidden:true,align:'left'},
                       {field:'Modifier',title:'Modifier',type:'string',width:130,align:'left'},
                       {field:'ModifyDate',title:'ModifyDate',type:'datetime',width:90,align:'left',sort:true}],
                sortName: "DicList_ID",
                key: "DicList_ID"
            });
            return {
                table,
                extend,
                editFormFields,
                editFormOptions,
                searchFormFields,
                searchFormOptions,
                columns,
                detail,
            };
        },
    });
</script>
