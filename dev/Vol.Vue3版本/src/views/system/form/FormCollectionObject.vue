<!--
*Author：jxx
 *Contact：283591387@qq.com
 *代码由框架生成,任何更改都可能导致被CodeGenerationDevice覆盖
 *业务请在@/extension/system/form/FormCollection.js此处编写
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
    import extend from "@/extension/system/form/FormCollectionObject.js";
    import { ref, defineComponent } from "vue";
    export default defineComponent({
        setup() {
            const table = ref({
                key: 'FormCollectionId',
                footer: "Foots",
                cnName: 'DataCollection',
                name: 'form/FormCollectionObject',
                url: "/FormCollectionObject/",
                sortName: "CreateDate"
            });
            const editFormFields = ref({"Title":"","FormData":""});
            const editFormOptions = ref([[{"title":"Title","field":"Title"},
                               {"title":"FormData","field":"FormData"}]]);
            const searchFormFields = ref({"Title":"","Creator":"","CreateDate":""});
            const searchFormOptions = ref([[{"title":"Title","field":"Title","type":"like"},{"title":"Creator","field":"Creator","type":"like"},{"title":"CreateDate","field":"CreateDate","type":"datetime"}]]);
            const columns = ref([{field:'FormCollectionId',title:'FormCollectionId',type:'guid',width:110,hidden:true,readonly:true,require:true,align:'left'},
                       {field:'FormId',title:'FormID',type:'guid',width:110,hidden:true,align:'left'},
                       {field:'Title',title:'Title',type:'string',width:110,align:'left',sort:true},
                       {field:'FormData',title:'FormData',type:'string',width:110,hidden:true,align:'left'},
                       {field:'Creator',title:'Creator',type:'string',width:100,align:'left'},
                       {field:'CreateDate',title:'CreateDate',type:'datetime',width:145,align:'left',sort:true},
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
