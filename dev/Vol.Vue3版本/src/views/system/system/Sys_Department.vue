<!--
*Author：jxx
 *Contact：283591387@qq.com
 *代码由框架生成,任何更改都可能导致被代码生成器覆盖
 *业务请在@/extension/system/system/Sys_Department.js此处编写
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
    import extend from "@/extension/system/system/Sys_Department.js";
    import { ref, defineComponent } from "vue";
    export default defineComponent({
        setup() {
            const table = ref({
                key: 'DepartmentId',
                footer: "Foots",
                cnName: 'OrganizationalStructure',
                name: 'system/Sys_Department',
                url: "/Sys_Department/",
                sortName: "CreateDate"
            });
            const editFormFields = ref({"DepartmentName":"","DepartmentCode":"","ParentId":[],"Remark":""});
            const editFormOptions = ref([[{"title":"组织ExpertName","required":true,"field":"DepartmentName"}],
                              [{"title":"DepartmentCode","field":"DepartmentCode"}],
                              [{"dataKey":"organization","data":[],"title":"ParentId","field":"ParentId","type":"cascader"}],
                              [{"title":"Remark","field":"Remark","type":"textarea"}]]);
            const searchFormFields = ref({"DepartmentName":"","DepartmentCode":"","Creator":"","CreateDate":""});
            const searchFormOptions = ref([[{"title":"组织ExpertName","field":"DepartmentName","type":"like"},{"title":"DepartmentCode","field":"DepartmentCode"},{"title":"Creator","field":"Creator"},{"title":"CreateDate","field":"CreateDate","type":"datetime"}]]);
            const columns = ref([{field:'DepartmentId',title:'DepartmentId',type:'guid',width:110,hidden:true,readonly:true,require:true,align:'left'},
                       {field:'DepartmentName',title:'组织ExpertName',type:'string',link:true,width:180,require:true,align:'left',sort:true},
                       {field:'DepartmentCode',title:'DepartmentCode',type:'string',width:90,align:'left'},
                       {field:'ParentId',title:'ParentId',type:'guid',bind:{ key:'organization',data:[]},width:110,hidden:true,align:'left'},
                       {field:'DepartmentType',title:'DepartmentType',type:'string',width:110,hidden:true,align:'left'},
                       {field:'Enable',title:'Enable',type:'int',width:110,hidden:true,align:'left'},
                       {field:'Remark',title:'Remark',type:'string',width:100,align:'left'},
                       {field:'CreateID',title:'CreateID',type:'int',width:100,hidden:true,align:'left'},
                       {field:'Creator',title:'Creator',type:'string',width:90,align:'left'},
                       {field:'CreateDate',title:'CreateDate',type:'datetime',width:145,align:'left',sort:true},
                       {field:'ModifyID',title:'ModifyID',type:'int',width:100,hidden:true,align:'left'},
                       {field:'Modifier',title:'Modifier',type:'string',width:90,align:'left'},
                       {field:'ModifyDate',title:'ModifyDate',type:'datetime',width:140,align:'left',sort:true}]);
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
