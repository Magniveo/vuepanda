import {
    defineComponent,
    getCurrentInstance
} from 'vue';
import ruLocale from '../locale/ru_RU.json'
import cnLocale from '../locale/zh_CH.json'
export default defineComponent({
    setup(props, context) {
        getCurrentInstance().appContext.config.globalProperties.$locales = {
            'ru-RU':ruLocale,
            'zh-CH':cnLocale
        }
    }})