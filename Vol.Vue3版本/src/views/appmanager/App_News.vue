<!--
*Author：jxx
 *Contact：283591387@qq.com
 *代码由框架生成,任何更改都可能导致被代码生成器覆盖
 *业务请在@/extension/system/App_News.js此处编写
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
    import extend from "@/extension/appmanager/App_News.js";
    import { ref, defineComponent } from "vue";
    export default defineComponent({
        setup() {
            const table = ref({
                key: 'Id',
                footer: "Foots",
                cnName: '新闻列表',
                name: 'App_News',
                url: "/App_News/",
                sortName: "CreateDate"
            });
            const editFormFields = ref({"Title":"","NewsType":"","DailyRecommend":"","Enable":"","Content":""});
            const editFormOptions = ref([[{"title":"标题","required":true,"field":"Title","colSize":12}],
                              [{"dataKey":"enable","data":[],"title":"测试","required":true,"field":"DailyRecommend","type":"radio"},
                               {"dataKey":"enable","data":[],"title":"是否启用","field":"Enable","type":"radio"},
                               {"dataKey":"news","data":[],"title":"新闻类型","required":true,"field":"NewsType","type":"select"}],
                              [{"title":"新闻内容","field":"Content","colSize":12,"type":"editor"}]]);
            const searchFormFields = ref({"Title":"","ReleaseDate":"","NewsType":"","DailyRecommend":"","Enable":"","Creator":""});
            const searchFormOptions = ref([[{"title":"标题","field":"Title"},{"dataKey":"news","data":[],"title":"新闻类型","field":"NewsType","type":"select"},{"dataKey":"enable","data":[],"title":"测试","field":"DailyRecommend","type":"select"}],[{"title":"发布时间","field":"ReleaseDate","type":"datetime"},{"dataKey":"enable","data":[],"title":"是否启用","field":"Enable","type":"select"},{"title":"发布人","field":"Creator"}]]);
            const columns = ref([{field:'Id',title:'主键ID',type:'int',width:80,hidden:true,readonly:true,require:true,align:'left'},
                       {field:'Title',title:'标题',type:'string',link:true,width:200,require:true,align:'left',sortable:true},
                       {field:'Content',title:'新闻内容',type:'string',width:100,hidden:true,align:'left'},
                       {field:'Author',title:'发布人',type:'string',width:120,hidden:true,readonly:true,align:'left'},
                       {field:'ReleaseDate',title:'发布时间',type:'datetime',width:140,hidden:true,readonly:true,align:'left',sortable:true},
                       {field:'ImageUrl',title:'封面图片',type:'img',width:120,align:'left'},
                       {field:'BigImageUrls',title:'图片(大图)',type:'string',width:100,hidden:true,align:'left'},
                       {field:'DetailUrl',title:'新闻地址',type:'string',width:90,hidden:true,align:'left'},
                       {field:'ViewCount',title:'浏览次数',type:'int',width:110,hidden:true,align:'left'},
                       {field:'NewsType',title:'新闻类型',type:'int',bind:{ key:'news',data:[]},width:110,require:true,align:'left'},
                       {field:'DailyRecommend',title:'测试',type:'int',bind:{ key:'enable',data:[]},width:120,hidden:true,require:true,align:'left'},
                       {field:'OrderNo',title:'推荐排序',type:'int',bind:{ key:'enable',data:[]},width:90,hidden:true,align:'left'},
                       {field:'Enable',title:'是否启用',type:'int',bind:{ key:'enable',data:[]},width:100,align:'left'},
                       {field:'CreateID',title:'创建人Id',type:'int',width:80,hidden:true,align:'left'},
                       {field:'Creator',title:'发布人',type:'string',width:110,readonly:true,align:'left'},
                       {field:'CreateDate',title:'发布时间',type:'datetime',width:140,readonly:true,align:'left',sortable:true},
                       {field:'ModifyID',title:'修改人ID',type:'int',width:80,hidden:true,align:'left'},
                       {field:'Modifier',title:'修改人',type:'string',width:130,hidden:true,align:'left'},
                       {field:'ModifyDate',title:'ModifyDate',type:'datetime',width:140,readonly:true,align:'left',sortable:true}]);
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
