<!--
*Author：jxx
 *Contact：283591387@qq.com
 *代码由框架生成,任何更改都可能导致被CodeGenerationDevice覆盖
 *业务请在@/extension/system/form/FormDesignOptions.js此处编写
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
    import extend from "@/extension/system/form/FormDesignOptions.js";
    import { ref, defineComponent } from "vue";
    export default defineComponent({
        setup() {
            const table = ref({
                key: 'FormId',
                footer: "Foots",
                cnName: 'FormDesign',
                name: 'form/FormDesignOptions',
                url: "/FormDesignOptions/",
                sortName: "CreateDate"
            });
            const editFormFields = ref({"Title":""});
            const editFormOptions = ref([[{"title":"FormExpertName","required":true,"field":"Title","type":"textarea"}]]);
            const searchFormFields = ref({"Title":"","CreateDate":"","ModifyDate":""});
            const searchFormOptions = ref([[{"title":"FormExpertName","field":"Title","type":"like"},{"title":"CreateDate","field":"CreateDate","type":"datetime"},{"title":"ModifyDate","field":"ModifyDate","type":"datetime"}]]);
            const columns = ref([{field:'FormId',title:'FormId',type:'guid',width:110,hidden:true,readonly:true,require:true,align:'left'},
                       {field:'Title',title:'FormExpertName',type:'string',link:true,width:140,require:true,align:'left',sort:true},
                       {field:'DaraggeOptions',title:'DaraggeOptions',type:'string',width:140,align:'left'},
                       {field:'FormOptions',title:'FormOptions',type:'string',width:140,align:'left'},
                       {field:'FormConfig',title:'FormConfig',type:'string',width:110,align:'left'},
                       {field:'FormFields',title:'FormFields',type:'string',width:110,align:'left'},
                       {field:'TableConfig',title:'TableConfig',type:'string',width:110,align:'left'},
                       {field:'Creator',title:'Creator',type:'string',width:130,align:'left'},
                       {field:'CreateDate',title:'CreateDate',type:'datetime',width:110,align:'left',sort:true},
                       {field:'CreateID',title:'CreateID',type:'int',width:80,hidden:true,align:'left'},
                       {field:'Modifier',title:'Modifier',type:'string',width:130,hidden:true,align:'left'},
                       {field:'ModifyDate',title:'ModifyDate',type:'datetime',width:110,hidden:true,align:'left',sort:true},
                       {field:'ModifyID',title:'ModifyID',type:'int',width:80,hidden:true,align:'left'}]);
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
