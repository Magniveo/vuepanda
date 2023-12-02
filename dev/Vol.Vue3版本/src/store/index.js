import { createStore } from 'vuex'
const keys = { USER: 'user' }
//const locales = require.context('../locale',true,'ru_RU.json');
function getUserInfo(state) {
  if (state.userInfo) return state.userInfo;
  let userInfo = localStorage.getItem(keys.USER);
  if (userInfo) {
    state.userInfo = JSON.parse(userInfo);
  }
  return state.userInfo;
}
export default createStore({
  state: {
    data: {},
    permission: [],
    isLoading: false,//2020.06.03增加路由切换时Load提示
    userInfo: null,
  },
  mutations: {
    setPermission(state, data) {  //调用方式 this.$store.commit('setPermission', data)
      if (!data || typeof data != 'object') return;
      if (data instanceof Array) {
        state.permission.push(...data);
      } else {
        state.permission = data;
      }
    }, setUserInfo(state, data) {
      state.userInfo = data;
      localStorage.setItem(keys.USER, JSON.stringify(data));
    },
    clearUserInfo(state) {
      state.permission = [];
      state.userInfo = null;
      localStorage.removeItem(keys.USER);
    },
    test(state) {
      return 113344;
    },
    updateLoadingState(state, flag) {
      state.isLoading = flag
    }
  }, getters: {
    getPermission: (state) => (path) => {  //调用方式 store.getters.getPermission('sys_User')
      if (!path) return state.permission;
      return state.permission.find(x => x.path == path);
    },
    getUserInfo: (state) => () => {
      getUserInfo(state);
      return state.userInfo;
    }, getUserName: (state) => () => {
      getUserInfo(state);
      if (state.userInfo) {
        return state.userInfo.userName;
      }
      return '未获取到Login信息';
    },
    getToken: (state) => () => {
      getUserInfo(state);
      if (state.userInfo) {
        return 'Bearer ' + state.userInfo.token;
      }
      return '';
    },
    isLogin: (state) => () => {
      if (getUserInfo(state)) {
        return true;
      }
      return false;
    },
    isLoading: (state) => () => {
      return state.isLoading;
    },
    data: (state) => () => {
      return state.data;
    },
    getData: (state) => () => {
      return state.data;
    },
  }, actions: {
    setPermission(context, data) {
      context.commit('setPermission', data); //调用方式 store.dispatch('push')
    },
    toDo(context) {
      return context.Store.m;
    },
    onLoading(context, flag) {
      context.commit("updateLoadingState", flag);
    },
    getLocalization(str){
      //require.context('./locale', true, /[a-z0-9]+\.json$/i)
      //locales.keys().forEach(key => {
      //  const locale = key.match(/([a-z0-9]+)\./i)[1]
      //  ClientAddonApi.addLocalization(locale, locales(key))
      //})
    }
  }
})
