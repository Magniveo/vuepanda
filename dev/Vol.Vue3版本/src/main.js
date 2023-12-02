import Vue, { createApp } from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import ElementPlus from 'element-plus';
// import 'element-plus/lib/theme-chalk/index.css';
import 'element-plus/dist/index.css'
import './assets/element-icon/icon.css'
import base from './uitils/common'
import http from './api/http'
// import 'dayjs/locale/zh-cn'
// import locale from 'element-plus/lib/locale/lang/zh-cn'
import * as ElementPlusIconsVue from '@element-plus/icons-vue'


import permission from './api/permission'
import viewgird from './components/basic/ViewGrid';
import ruLocale from "@/locale/ru_RU.json";
import cnLocale from "@/locale/zh_CN.json";
//import cnLocale from "@/locale/zh_CN.json";//"@/locale/zh_CN.json";
const app = createApp(App);
for (const [key, component] of Object.entries(ElementPlusIconsVue)) {
    app.component(key, component)
}
app.config.globalProperties.base = base;
app.config.globalProperties.http = http;
app.config.globalProperties.$tabs = {};
app.config.globalProperties.permission = permission;

app.config.globalProperties.$i18n = {
    locale: 'ru-RU',
}
app.config.globalProperties.$locales = {
    'ru-RU':ruLocale,
    'zh-CH':cnLocale
}
app.config.globalProperties.$global = {
    signalR: false, //是否开启signalR
    menuSearch:true,//DishSingleEnable搜索功能
    table: {
      smallCell:false,//FormSingle元格大小
      useTag: true //tableComponent下拉框Data源的字段是否显示背景颜色
    },
    audit: { //审核选项
        data: [
            { text: '通过', value: 1 },
            { text: '拒绝', value: 3 },
            { text: '驳回', value: 4 }
        ],
        status:[0,2] //审核中的Data
        // 待审核 = 0,
        // 审核通过 = 1,
        // 审核中 = 2,
        // 审核未通过 = 3,
        // 驳回 = 4
    }
}
//2023.03.13，
//修改见：volupload.vue，后台AliOSSController.cs，阿里云OSSConfiguration.doc
window.oss = {
    ali: { //阿里云
        use: false,//使用阿里云上传文件
        //阿里缩略图压缩大小
        //.aliyuncs.com
        small: "?x-oss-process=image/resize,m_lfit,w_200"
    }
}

window.localei18n = app.config.globalProperties.$i18n;
window.locales = app.config.globalProperties.$locales;
app.use(store)
    .use(ElementPlus, { size: 'default' })
    .use(router)
    .use(viewgird)
    .mount('#app');
app.config.globalProperties.$Message = app.config.globalProperties.$message;
//this.$locales[this.$i18n.locale].Voltage
