<!--
*Author：jxx
 *Contact：283591387@qq.com
 *代码由框架生成,任何更改都可能导致被CodeGenerationDevice覆盖
 *业务请在@/extension/system/flow/Sys_WorkFlowTableStep.js此处编写
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
    import extend from "@/extension/system/flow/Sys_WorkFlowTableStep.js";
    import { ref, defineComponent } from "vue";
    export default defineComponent({
        setup() {
            const table = ref({
                key: 'Sys_WorkFlowTableStep_Id',
                footer: "Foots",
                cnName: 'ApprovalNode',
                name: 'flow/Sys_WorkFlowTableStep',
                url: "/Sys_WorkFlowTableStep/",
                sortName: "CreateDate"
            });
            const editFormFields = ref({});
            const editFormOptions = ref([]);
            const searchFormFields = ref({});
            const searchFormOptions = ref([]);
            const columns = ref([{field:'Sys_WorkFlowTableStep_Id',title:'Sys_WorkFlowTableStep_Id',type:'guid',width:110,hidden:true,readonly:true,require:true,align:'left'},
                       {field:'WorkFlowTable_Id',title:'WorkFlowTable_Id',type:'guid',width:110,require:true,align:'left',sort:true},
                       {field:'WorkFlow_Id',title:'WorkFlow_Id',type:'guid',width:110,align:'left'},
                       {field:'StepId',title:'StepId',type:'string',width:120,align:'left'},
                       {field:'StepName',title:'StepName',type:'string',width:180,align:'left'},
                       {field:'StepType',title:'StepType',type:'int',width:110,align:'left'},
                       {field:'StepValue',title:'StepType',type:'int',width:110,align:'left'},
                       {field:'OrderId',title:'OrderId',type:'int',width:110,align:'left'},
                       {field:'Remark',title:'Remark',type:'string',width:220,align:'left'},
                       {field:'CreateDate',title:'CreateDate',type:'datetime',width:110,align:'left',sort:true},
                       {field:'CreateID',title:'CreateID',type:'int',width:80,hidden:true,align:'left'},
                       {field:'Creator',title:'Creator',type:'string',width:130,align:'left'},
                       {field:'Enable',title:'Enable',type:'byte',width:110,align:'left'},
                       {field:'Modifier',title:'Modifier',type:'string',width:130,align:'left'},
                       {field:'ModifyDate',title:'ModifyDate',type:'datetime',width:110,align:'left',sort:true},
                       {field:'ModifyID',title:'ModifyID',type:'int',width:80,hidden:true,align:'left'},
                       {field:'AuditId',title:'AuditId',type:'int',width:80,align:'left'},
                       {field:'Auditor',title:'Auditor',type:'string',width:120,align:'left'},
                       {field:'AuditStatus',title:'AuditStatus',type:'int',width:80,align:'left'},
                       {field:'AuditDate',title:'AuditDate',type:'datetime',width:150,align:'left',sort:true}]);
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
