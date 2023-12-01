let props = {
  columns: {//当前表的配置信息
    type: Array,
    default: () => {
      return [];
    }
  },
  detail: {//从表明细配置
    type: Object,
    default: () => {
      return {
        columns: [],//从表列
        sortName: ""//从表OrderNo字段
      };
    }
  },
  editFormFields: {//Add、Edit字段(key/value)
    type: Object,
    default: () => {
      return {};
    }
  },
  editFormOptions: {//Add、Edit配置信息
    type: Array,
    default: () => {
      return [];
    }
  },
  searchFormFields: {//查询字段(key/value)
    type: Object,
    default: () => {
      return {};
    }
  },
  searchFormOptions: {//查询配置信息(key/value)
    type: Array,
    default: () => {
      return [];
    }
  },
  table: {//表的配置信息：主键、OrderNo等
    type: Object,
    default: () => {
      return {};
    }
  },
  extend: {//表的扩展方法与组件都合并到此属性中
    type: Object,
    default: () => {
      return {};
    }
  }
}

export default props;