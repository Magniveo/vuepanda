let props = {
  columns: {//当前Table的Configuration信息
    type: Array,
    default: () => {
      return [];
    }
  },
  detail: {//从Table明细Configuration
    type: Object,
    default: () => {
      return {
        columns: [],//从Table列
        sortName: ""//从TableOrderNo字段
      };
    }
  },
  editFormFields: {//Add、Edit字段(key/value)
    type: Object,
    default: () => {
      return {};
    }
  },
  editFormOptions: {//Add、EditConfiguration信息
    type: Array,
    default: () => {
      return [];
    }
  },
  searchFormFields: {//Query字段(key/value)
    type: Object,
    default: () => {
      return {};
    }
  },
  searchFormOptions: {//QueryConfiguration信息(key/value)
    type: Array,
    default: () => {
      return [];
    }
  },
  table: {//Table的Configuration信息：主键、OrderNo等
    type: Object,
    default: () => {
      return {};
    }
  },
  extend: {//Table的扩展方法WithComponent都合并到此属性中
    type: Object,
    default: () => {
      return {};
    }
  }
}

export default props;