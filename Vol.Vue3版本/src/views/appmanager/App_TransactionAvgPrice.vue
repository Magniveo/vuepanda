<!--
*Author：jxx
 *Contact：283591387@qq.com
 *代码由框架生成,任何更改都可能导致被代码生成器覆盖
 *业务请在@/extension/appmanager/App_TransactionAvgPrice.js此处编写
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
    import extend from "@/extension/appmanager/App_TransactionAvgPrice.js";
    import { ref, defineComponent } from "vue";
    export default defineComponent({
        setup() {
            const table = ref({
                key: 'Id',
                footer: "Foots",
                cnName: '自动绑定下拉框',
                name: 'App_TransactionAvgPrice',
                url: "/App_TransactionAvgPrice/",
                sortName: "Id"
            });
            const editFormFields = ref({"Variety":[],"AgeRange":"","City":"","AvgPrice":"","Date":"","IsTop":"","Creator":"","CreateDate":"","Modifier":"","ModifyDate":""});
            const editFormOptions = ref([[{"dataKey":"pz","data":[],"title":"分类","required":true,"field":"Variety","colSize":12,"type":"checkbox"}],
                              [{"dataKey":"age","data":[],"title":"年龄","required":true,"field":"AgeRange","colSize":12,"type":"select"}],
                              [{"dataKey":"city","data":[],"title":"城市","required":true,"field":"City","colSize":12,"type":"select"}],
                              [{"title":"价格","required":true,"field":"AvgPrice","colSize":12,"type":"decimal"}],
                              [{"title":"日期","required":true,"field":"Date","colSize":12,"type":"date"}],
                              [{"dataKey":"enable","data":[],"title":"测试","required":true,"field":"IsTop","colSize":12,"type":"select"}],
                              [{"title":"创建人","field":"Creator","disabled":true},
                               {"title":"CreateDate","field":"CreateDate","disabled":true}],
                              [{"title":"修改人","field":"Modifier","disabled":true},
                               {"title":"ModifyDate","field":"ModifyDate","disabled":true}]]);
            const searchFormFields = ref({"AgeRange":"","Variety":"","City":"","Date":"","IsTop":"","Enable":[]});
            const searchFormOptions = ref([[{"dataKey":"age","data":[],"title":"年龄","field":"AgeRange","type":"select"},{"dataKey":"pz","data":[],"title":"分类","field":"Variety","type":"select"},{"dataKey":"city","data":[],"title":"城市","field":"City","type":"select"}],[{"title":"日期","field":"Date","type":"datetime"},{"dataKey":"enable","data":[],"title":"测试","field":"IsTop","type":"select"},{"dataKey":"enable","data":[],"title":"远程","field":"Enable","type":"selectList"}]]);
            const columns = ref([{field:'Id',title:'主键ID',type:'int',width:90,hidden:true,readonly:true,require:true,align:'left'},
                       {field:'AgeRange',title:'年龄',type:'string',bind:{ key:'age',data:[]},width:90,require:true,align:'left',sort:true},
                       {field:'Variety',title:'分类',type:'string',bind:{ key:'pz',data:[]},width:90,require:true,align:'left'},
                       {field:'City',title:'城市',type:'string',bind:{ key:'city',data:[]},width:90,require:true,align:'left'},
                       {field:'AvgPrice',title:'价格',type:'decimal',link:true,width:80,require:true,align:'left'},
                       {field:'Date',title:'日期',type:'date',width:90,require:true,align:'left',sort:true},
                       {field:'IsTop',title:'测试',type:'int',bind:{ key:'enable',data:[]},width:90,require:true,align:'left'},
                       {field:'Enable',title:'远程',type:'byte',bind:{ key:'enable',data:[]},width:90,hidden:true,align:'left'},
                       {field:'CreateID',title:'创建人Id',type:'int',width:90,hidden:true,align:'left'},
                       {field:'Creator',title:'创建人',type:'string',width:100,readonly:true,align:'left'},
                       {field:'CreateDate',title:'CreateDate',type:'datetime',width:150,readonly:true,align:'left',sort:true},
                       {field:'ModifyID',title:'修改人ID',type:'int',width:90,hidden:true,align:'left'},
                       {field:'Modifier',title:'修改人',type:'string',width:90,hidden:true,readonly:true,align:'left'},
                       {field:'ModifyDate',title:'ModifyDate',type:'datetime',width:140,hidden:true,readonly:true,align:'left',sort:true}]);
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
