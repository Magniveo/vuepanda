<!--
*Author：jxx
 *Contact：283591387@qq.com
 *代码由框架生成,任何更改都可能导致被代码生成器覆盖
 *业务请在@/extension/order/App_Appointment.js此处编写
 -->
<template>
    <div>
        <view-grid
                   ref="grid"
                   :columns="columns"
                   :detail="detail"
                   :editFormFields="editFormFields"
                   :editFormFileds="editFormFields"
                   :editFormOptions="editFormOptions"
                   :searchFormFields="searchFormFields"
                   :searchFormFileds="searchFormFields"
                   :searchFormOptions="searchFormOptions"
                   :table="table"
                   :extend="extend">
        </view-grid>
    </div>
</template>

<script>
    import extend from "@/extension/order/App_Appointment.js";
    import ViewGrid from "@/components/basic/ViewGrid.vue";
    var vueParam = {
        components: {
            ViewGrid
        },
        data() {
            return {
                table: {
                    key: 'Id',
                    footer: "Foots",
                    cnName: '基础表单+编辑只读',
                    name: 'App_Appointment',
                    url: "/App_Appointment/",
                    sortName: "CreateDate"
                },
                extend: extend,
                editFormFields: {"Name":"","Id":"","Describe":"","PhoneNo":"","CreateDate":"","Creator":"","Modifier":"","ModifyDate":""},
                editFormOptions: [[{"title":"姓名","required":true,"field":"Name","disabled":true},
                               {"title":"","required":true,"field":"Id","disabled":true}],
                              [{"title":"Describe","required":true,"field":"Describe","disabled":true},
                               {"title":"电话","required":true,"field":"PhoneNo","disabled":true}],
                              [{"title":"CreateDate","field":"CreateDate","disabled":true},
                               {"title":"创建人","field":"Creator","disabled":true}],
                              [{"title":"修改人","field":"Modifier","disabled":true},
                               {"title":"ModifyDate","field":"ModifyDate","disabled":true}]],
                searchFormFields: {"Name":"","PhoneNo":"","CreateDate":"","Creator":""},
                searchFormOptions: [[{"title":"姓名","field":"Name"},{"title":"电话","field":"PhoneNo"},{"title":"CreateDate","field":"CreateDate","type":"datetime"},{"title":"创建人","field":"Creator"}]],
                columns: [{field:'Name',title:'姓名',type:'string',link:true,sort:true,width:100,readonly:true,require:true,align:'left',sortable:true},
                       {field:'Describe',title:'Describe',type:'string',sort:true,width:180,readonly:true,require:true,align:'left'},
                       {field:'PhoneNo',title:'电话',type:'string',sort:true,width:130,readonly:true,require:true,align:'left'},
                       {field:'Id',title:'Id',type:'string',width:90,hidden:true,readonly:true,require:true,align:'left'},
                       {field:'CreateDate',title:'CreateDate',type:'datetime',sort:true,width:120,readonly:true,align:'left',sortable:true},
                       {field:'CreateID',title:'CreateID',type:'int',width:80,hidden:true,align:'left'},
                       {field:'Creator',title:'创建人',type:'string',width:130,readonly:true,align:'left'},
                       {field:'Modifier',title:'修改人',type:'string',width:130,readonly:true,align:'left'},
                       {field:'ModifyDate',title:'ModifyDate',type:'datetime',width:90,readonly:true,align:'left',sortable:true},
                       {field:'ModifyID',title:'ModifyID',type:'int',width:80,hidden:true,align:'left'}],
                detail: {
                    cnName:"#detailCnName",
                    columns: [],
                    sortName: "",
                    key:""
                }
            };
        }
    };
    export default vueParam;
</script>
