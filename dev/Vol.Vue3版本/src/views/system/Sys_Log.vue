<!--
*Author：jxx
 *Contact：283591387@qq.com
 *代码由框架生成,任何更改都可能导致被CodeGenerationDevice覆盖
 *业务请在@/extension/system/Sys_Log.js此处编写
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
    import extend from "@/extension/system/Sys_Log.js";
    import { ref, defineComponent } from "vue";
    export default defineComponent({
        setup() {
            const table = ref({
                key: 'Id',
                footer: "Foots",
                cnName: 'SystemLog',
                name: 'Sys_Log',
                url: "/Sys_Log/",
                sortName: "Id"
            });
            const editFormFields = ref({});
            const editFormOptions = ref([]);
            const searchFormFields = ref({"BeginDate":"","Url":"","LogType":[],"Success":[],"UserIP":"","ServiceIP":"","Role_Id":""});
            const searchFormOptions = ref([[{"title":"Url","field":"Url","type":"text"},{"title":"UserIP","field":"UserIP","type":"text"},{"title":"ServiceIP","field":"ServiceIP","type":"text"}],[{"title":"StratDate","field":"BeginDate","type":"datetime"},{"dataKey":"restatus","data":[],"title":"Success","field":"Success","type":"selectList"},{"dataKey":"roles","data":[],"title":"Role_Id","field":"Role_Id","type":"select"}],[{"dataKey":"log","data":[],"title":"LogType","field":"LogType","colSize":12,"type":"checkbox"}]]);
            const columns = ref([{field:'Id',title:'Id',type:'int',width:90,hidden:true,readonly:true,require:true,align:'left'},
                       {field:'BeginDate',title:'StratDate',type:'datetime',width:140,align:'left',sortable:true},
                       {field:'UserName',title:'UserName',type:'string',width:90,align:'left'},
                       {field:'Url',title:'Url',type:'string',width:110,align:'left'},
                       {field:'LogType',title:'LogType',type:'string',bind:{ key:'log',data:[]},width:80,align:'left'},
                       {field:'Success',title:'Success',type:'int',bind:{ key:'restatus',data:[]},width:80,align:'left'},
                       {field:'ElapsedTime',title:'ElapsedTime',type:'int',width:60,align:'left'},
                       {field:'RequestParameter',title:'RequestParameter',type:'string',width:70,align:'left'},
                       {field:'ResponseParameter',title:'ResponseParameter',type:'string',width:70,align:'left'},
                       {field:'ExceptionInfo',title:'ExceptionInfo',type:'string',width:70,align:'left'},
                       {field:'UserIP',title:'UserIP',type:'string',width:90,align:'left'},
                       {field:'ServiceIP',title:'ServiceIP',type:'string',width:90,hidden:true,align:'left'},
                       {field:'BrowserType',title:'BrowserType',type:'string',width:90,align:'left'},
                       {field:'User_Id',title:'User_Id',type:'int',width:90,hidden:true,align:'left'},
                       {field:'Role_Id',title:'Role_Id',type:'int',bind:{ key:'roles',data:[]},width:90,hidden:true,align:'left'},
                       {field:'EndDate',title:'EndDate',type:'datetime',width:150,hidden:true,align:'left',sortable:true}]);
            const detail = ref({
                cnName: "#detailCnName",
                columns: [],
                sortName: "",
                key: ""
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
