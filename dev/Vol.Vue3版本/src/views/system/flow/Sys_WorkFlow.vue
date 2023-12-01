<!--
*Author：jxx
 *Contact：283591387@qq.com
 *代码由框架生成,任何更改都可能导致被代码生成器覆盖
 *业务请在@/extension/system/flow/Sys_WorkFlow.js此处编写
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
    import extend from "@/extension/system/flow/Sys_WorkFlow.js";
    import { ref, defineComponent } from "vue";
    export default defineComponent({
        setup() {
            const table = ref({
                key: 'WorkFlow_Id',
                footer: "Foots",
                cnName: '审批流程配置',
                name: 'flow/Sys_WorkFlow',
                url: "/Sys_WorkFlow/",
                sortName: "CreateDate"
            });
            const editFormFields = ref({"WorkName":"","WorkTable":"","Remark":""});
            const editFormOptions = ref([[{"title":"WorkName","required":true,"field":"WorkName"},
                               {"title":"WorkTable","required":true,"field":"WorkTable"},
                               {"title":"Remark","field":"Remark"}]]);
            const searchFormFields = ref({"WorkName":"","WorkTable":"","CreateDate":"","AuditingEdit":""});
            const searchFormOptions = ref([[{"title":"WorkName","field":"WorkName"},{"title":"WorkTable","field":"WorkTable"},{"dataKey":"enable","data":[],"title":"审核中数据是否可以Edit","field":"AuditingEdit","type":"select"},{"title":"CreateDate","field":"CreateDate","type":"datetime"}]]);
            const columns = ref([{field:'WorkFlow_Id',title:'WorkFlow_Id',type:'guid',width:110,hidden:true,readonly:true,require:true,align:'left'},
                       {field:'WorkName',title:'WorkName',type:'string',link:true,width:140,require:true,align:'left',sort:true},
                       {field:'WorkTable',title:'WorkTable',type:'string',width:100,require:true,align:'left'},
                       {field:'WorkTableName',title:'WorkTableName',type:'string',width:120,align:'left'},
                       {field:'Weight',title:'Weight(相同条件Weight大的优先匹配)',type:'int',width:100,align:'left'},
                       {field:'Enable',title:'Enable',type:'byte',bind:{ key:'enable',data:[]},width:100,hidden:true,align:'left'},
                       {field:'AuditingEdit',title:'审核中数据是否可以Edit',type:'int',bind:{ key:'enable',data:[]},width:80,align:'left'},
                       {field:'NodeConfig',title:'NodeConfig',type:'string',width:110,hidden:true,align:'left'},
                       {field:'LineConfig',title:'LineConfig',type:'string',width:110,hidden:true,align:'left'},
                       {field:'Remark',title:'Remark',type:'string',width:130,align:'left'},
                       {field:'CreateID',title:'CreateID',type:'int',width:80,hidden:true,align:'left'},
                       {field:'Creator',title:'Creator',type:'string',width:100,align:'left'},
                       {field:'CreateDate',title:'CreateDate',type:'datetime',width:150,align:'left',sort:true},
                       {field:'ModifyID',title:'ModifyID',type:'int',width:80,hidden:true,align:'left'},
                       {field:'Modifier',title:'Modifier',type:'string',width:100,hidden:true,align:'left'},
                       {field:'ModifyDate',title:'ModifyDate',type:'datetime',width:160,align:'left',sort:true}]);
            const detail = ref({
                cnName: "审批节点配置",
                table: "Sys_WorkFlowStep",
                columns: [{field:'WorkStepFlow_Id',title:'WorkStepFlow_Id',type:'guid',width:110,hidden:true,readonly:true,require:true,align:'left'},
                       {field:'WorkFlow_Id',title:'WorkFlow_Id',type:'guid',width:110,align:'left',sort:true},
                       {field:'StepId',title:'StepId',type:'string',width:120,align:'left'},
                       {field:'StepName',title:'StepName',type:'string',width:110,align:'left'},
                       {field:'StepType',title:'StepType',type:'int',width:110,align:'left'},
                       {field:'StepValue',title:'StepValue',type:'string',width:110,align:'left'},
                       {field:'Remark',title:'Remark',type:'string',width:220,align:'left'},
                       {field:'OrderId',title:'OrderId',type:'int',width:80,align:'left'},
                       {field:'CreateDate',title:'CreateDate',type:'datetime',width:110,align:'left',sort:true},
                       {field:'CreateID',title:'CreateID',type:'int',width:80,hidden:true,align:'left'},
                       {field:'Creator',title:'Creator',type:'string',width:130,align:'left'},
                       {field:'Enable',title:'Enable',type:'byte',width:110,align:'left'},
                       {field:'Modifier',title:'Modifier',type:'string',width:130,align:'left'},
                       {field:'ModifyDate',title:'ModifyDate',type:'datetime',width:110,align:'left',sort:true},
                       {field:'ModifyID',title:'ModifyID',type:'int',width:80,hidden:true,align:'left'},
                       {field:'NextStepIds',title:'NextStepIds',type:'string',width:220,hidden:true,align:'left'},
                       {field:'ParentId',title:'ParentId',type:'string',width:120,hidden:true,align:'left'},
                       {field:'AuditRefuse',title:'AuditRefuse',type:'int',width:80,hidden:true,align:'left'},
                       {field:'AuditBack',title:'AuditBack',type:'int',width:80,hidden:true,align:'left'},
                       {field:'AuditMethod',title:'AuditMethod',type:'int',width:80,hidden:true,align:'left'},
                       {field:'SendMail',title:'SendMail',type:'int',width:80,hidden:true,align:'left'},
                       {field:'Filters',title:'Filters',type:'string',width:220,hidden:true,align:'left'},
                       {field:'StepAttrType',title:'StepAttrType(start、node、end))',type:'string',width:110,hidden:true,align:'left'},
                       {field:'Weight',title:'Weight(相同条件Weight大的优先匹配)',type:'int',width:80,align:'left'}],
                sortName: "CreateDate",
                key: "WorkStepFlow_Id"
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
