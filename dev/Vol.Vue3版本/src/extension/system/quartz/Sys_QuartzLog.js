/*****************************************************************************************
 **  Author:jxx 2022
 **  QQ:283591387
 **完整Document见：http://v2.volcore.xyz/document/api 【CodeGenerationPageViewGrid】
 **常用示例见：http://v2.volcore.xyz/document/vueDev
 **后台Operation见：http://v2.volcore.xyz/document/netCoreDev
 *****************************************************************************************/
//此js文件是用来CustomExtension业务代码，可以扩展一些CustomizePage或者重新Configuration生成的代码

let extension = {
  components: {
    //Query界面扩展Component
    gridHeader: '',
    gridBody: '',
    gridFooter: '',
    //Add、Edit弹出框扩展Component
    modelHeader: '',
    modelBody: '',
    modelFooter: ''
  },
  tableAction: 'Sys_QuartzLog', //指定某张Table的Authority(这里填写WorkTable,默认Dept_Id填写)
  buttons: { view: [], box: [], detail: [] }, //扩展的按钮
  methods: {
    //下面这些方法可以保留也可以Del
    onInit() {
      //框架初始化Configuration前，
      //示例：在按钮的最前面添加一个按钮
      //   this.buttons.unshift({  //也可以用push或者splice方法来修改buttons数组
      //     name: '按钮', //按钮ExpertName
      //     icon: 'el-icon-document', //按钮图标vue2版本见iviewDocumenticon，vue3版本见element uiDocumenticon(注意不是element pulsDocument)
      //     type: 'primary', //按钮样式vue2版本见iviewDocumentbutton，vue3版本见element uiDocumentbutton
      //     onClick: function () {
      //       this.$Message.success('点击了按钮');
      //     }
      //   });
      if (this.$route.path != '/Sys_QuartzLog') {
        this.tableHeight = 345;
      }
      //示例：SetUp修改Add、Edit弹出框字段标签的长度
      // this.boxOptions.labelWidth = 150;
    },
    onInited() {
      //框架初始化Configuration后
      //如果要Configuration明细Table,在此方法Operation
      //this.detailOptions.columns.forEach(column=>{ });
    },
    searchBefore(param) {
      //界面Query前,可以给param.wheres添加Query参数
      //返回false，则不会ExecuteQuery
      if (this.$route.path != '/Sys_QuartzLog') {
        param.wheres.push({
          name: 'Id',
          value: this.$store.getters.data().quartzId
        });
      }
      return true;
    },
    searchAfter(result) {
      //Query后，result返回的QueryData,可以在显示到Form前处理Form的值
      return true;
    },
    addBefore(formData) {
      //Add保存前formData为对象，包括明细Table，可以给给FormSetUp值，自己输出看formData的值
      return true;
    },
    updateBefore(formData) {
      //Edit保存前formData为对象，包括明细Table、Del行的Id
      return true;
    },
    rowClick({ row, column, event }) {
      //Query界面点击行Event
      // this.$refs.table.$refs.table.toggleRowSelection(row); //Single击行时选中当前行;
    },
    modelOpenAfter(row) {
      //点击Edit、Add按钮弹出框后，可以在此处写逻辑，如，从后台获取Data
      //(1)判断是Edit还是AddOperation： this.currentAction=='Add';
      //(2)给弹出框SetUp默认值
      //(3)this.editFormFields.字段='xxx';
      //如果需要给下拉框SetUp默认值，请遍历this.editFormOptions找到字段Configuration对应data属性的key值
      //看不懂就把输出看：console.log(this.editFormOptions)
    }
  }
};
export default extension;
