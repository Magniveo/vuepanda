<!--
*Author：jxx
 *Contact：283591387@qq.com
 *代码由框架生成,任何更改都可能导致被CodeGenerationDevice覆盖
 *业务请在@/extension/system/quartz/Sys_QuartzOptions.js此处编写
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
    import extend from "@/extension/system/quartz/Sys_QuartzOptions.js";
    import { ref, defineComponent } from "vue";
    export default defineComponent({
        setup() {
            const table = ref({
                key: 'Id',
                footer: "Foots",
                cnName: 'ScheduledTasks',
                name: 'quartz/Sys_QuartzOptions',
                url: "/Sys_QuartzOptions/",
                sortName: "TaskName"
            });
            const editFormFields = ref({"TaskName":"","GroupName":"","Method":"","CronExpression":"","TimeOut":"","Describe":"","AuthKey":"","AuthValue":"","ApiUrl":"","PostData":"","Creator":"","CreateDate":""});
            const editFormOptions = ref([[{"title":"TaskName","required":true,"field":"TaskName"},
                               {"title":"GroupName","required":true,"field":"GroupName"}],
                              [{"dataKey":"Method","data":[],"title":"Method","field":"Method","type":"select"},
                               {"title":"CronExpression","required":true,"field":"CronExpression"}],
                              [{"title":"TimeOut","field":"TimeOut","type":"number"},
                               {"title":"Describe","field":"Describe"}],
                              [{"title":"AuthKey","field":"AuthKey"},
                               {"title":"AuthValue","field":"AuthValue"}],
                              [{"title":"ApiUrl","field":"ApiUrl","colSize":12}],
                              [{"title":"PostData","field":"PostData","colSize":12,"type":"textarea"}],
                              [{"title":"Creator","field":"Creator","disabled":true},
                               {"title":"CreateDate","field":"CreateDate","disabled":true}]]);
            const searchFormFields = ref({"TaskName":"","LastRunTime":"","CreateDate":"","ModifyDate":""});
            const searchFormOptions = ref([[{"title":"TaskName","field":"TaskName","type":"like"},{"title":"Last execution time","field":"LastRunTime","type":"datetime"},{"title":"CreateDate","field":"CreateDate","type":"datetime"},{"title":"ModifyDate","field":"ModifyDate","type":"datetime"}]]);
            const columns = ref([{field:'Id',title:'Id',type:'guid',width:110,hidden:true,readonly:true,require:true,align:'left'},
                       {field:'TaskName',title:'TaskName',type:'string',link:true,width:120,require:true,align:'left',sort:true},
                       {field:'GroupName',title:'GroupName',type:'string',width:100,require:true,align:'left'},
                       {field:'Method',title:'Method',type:'string',bind:{ key:'Method',data:[]},width:110,align:'left'},
                       {field:'TimeOut',title:'TimeOut',type:'int',width:80,hidden:true,align:'left'},
                       {field:'CronExpression',title:'CronExpression',type:'string',width:120,require:true,align:'left'},
                       {field:'ApiUrl',title:'ApiUrl',type:'string',width:150,align:'left'},
                       {field:'PostData',title:'PostData',type:'string',width:110,hidden:true,align:'left'},
                       {field:'AuthKey',title:'AuthKey',type:'string',width:100,hidden:true,align:'left'},
                       {field:'AuthValue',title:'AuthValue',type:'string',width:100,hidden:true,align:'left'},
                       {field:'Describe',title:'Describe',type:'string',width:120,align:'left'},
                       {field:'LastRunTime',title:'Last execution time',type:'datetime',width:150,align:'left',sort:true},
                       {field:'Status',title:'Status',type:'int',width:90,align:'left'},
                       {field:'CreateID',title:'CreateID',type:'int',width:80,hidden:true,align:'left'},
                       {field:'Creator',title:'Creator',type:'string',width:130,hidden:true,readonly:true,align:'left'},
                       {field:'CreateDate',title:'CreateDate',type:'datetime',width:150,hidden:true,readonly:true,align:'left',sort:true},
                       {field:'ModifyID',title:'ModifyID',type:'int',width:80,hidden:true,align:'left'},
                       {field:'Modifier',title:'Modifier',type:'string',width:130,hidden:true,align:'left'},
                       {field:'ModifyDate',title:'ModifyDate',type:'datetime',width:110,hidden:true,align:'left',sort:true}]);
            const detail = ref({
                cnName: "#detailCnName",
                table: "#detailTable",
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
