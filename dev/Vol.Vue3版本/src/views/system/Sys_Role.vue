<!--
*Author：jxx
 *Contact：283591387@qq.com
 *代码由框架生成,任何更改都可能导致被代码生成器覆盖
 *业务请在@/extension/system/Sys_Role.js此处编写
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
    import extend from "@/extension/system/Sys_Role.js";
    import { ref, defineComponent } from "vue";
    export default defineComponent({
        setup() {
            const table = ref({
                key: 'Role_Id',
                footer: "Foots",
                cnName: 'RoleManagement',
                name: 'Sys_Role',
                url: "/Sys_Role/",
                sortName: "Role_Id"
            });
            const editFormFields = ref({"ParentId":[],"RoleName":"","DeptName":"","Enable":"","Creator":"","CreateDate":"","Modifier":"","ModifyDate":""});
            const editFormOptions = ref([[{"dataKey":"tree_roles","data":[],"title":"ParentId","required":true,"field":"ParentId","type":"cascader"},
                               {"title":"RoleName","required":true,"field":"RoleName"}],
                              [{"title":"DeptName","field":"DeptName"},
                               {"dataKey":"enable","data":[],"title":"Enable","field":"Enable","type":"switch"}],
                              [{"title":"Creator","field":"Creator","disabled":true},
                               {"title":"CreateDate","field":"CreateDate","disabled":true,"type":"datetime"}],
                              [{"title":"Modifier","field":"Modifier","disabled":true},
                               {"title":"ModifyDate","field":"ModifyDate","disabled":true}]]);
            const searchFormFields = ref({"RoleName":"","DeptName":"","Enable":"","CreateDate":"","ModifyDate":""});
            const searchFormOptions = ref([[{"title":"RoleName","field":"RoleName","type":"text"},{"title":"DeptName","field":"DeptName","type":"text"},{"dataKey":"enable","data":[],"title":"Enable","field":"Enable","type":"select"}],[{"title":"CreateDate","field":"CreateDate","type":"datetime"},{"title":"ModifyDate","field":"ModifyDate","type":"datetime"}]]);
            const columns = ref([{field:'Role_Id',title:'Role_Id',type:'int',width:70,readonly:true,require:true,align:'left',sortable:true},
                       {field:'ParentId',title:'ParentId',type:'int',bind:{ key:'tree_roles',data:[]},width:70,require:true,align:'left'},
                       {field:'RoleName',title:'RoleName',type:'string',link:true,width:90,require:true,align:'left'},
                       {field:'Dept_Id',title:'Dept_Id',type:'int',width:90,hidden:true,align:'left'},
                       {field:'DeptName',title:'DeptName',type:'string',width:90,align:'left'},
                       {field:'Enable',title:'Enable',type:'byte',bind:{ key:'enable',data:[]},width:90,align:'left'},
                       {field:'OrderNo',title:'OrderNo',type:'int',width:90,hidden:true,align:'left'},
                       {field:'Creator',title:'Creator',type:'string',width:130,readonly:true,align:'left'},
                       {field:'CreateDate',title:'CreateDate',type:'datetime',width:90,readonly:true,align:'left',sortable:true},
                       {field:'Modifier',title:'Modifier',type:'string',width:130,readonly:true,align:'left'},
                       {field:'ModifyDate',title:'ModifyDate',type:'datetime',width:90,readonly:true,align:'left',sortable:true}]);
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
