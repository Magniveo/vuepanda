/*****************************************************************************************
 **  Author:jxx 2022
 **  QQ:283591387
 **完整Document见：http://v2.volcore.xyz/document/api 【CodeGenerationPageViewGrid】
 **常用示例见：http://v2.volcore.xyz/document/vueDev
 **后台Operation见：http://v2.volcore.xyz/document/netCoreDev
 *****************************************************************************************/
//此js文件是用来CustomExtension业务代码，可以扩展一些CustomizePage或者重新Configuration生成的代码
import gridHader from './Sys_WorkFlow/WorkFlowGridHeader.vue';
import { h, resolveComponent } from 'vue';
let extension = {
  components: {
    //Query界面扩展Component
    gridHeader: gridHader,
    gridBody: {
      render() {
        return [
          h(
            resolveComponent('el-alert'),
            {
              style: { 'margin-bottom': '12px' },
              'show-icon': true,
              type: 'success',
              closable: false,
              title: 'Process设计Device根据easy-flow修改,Table必须包括Approval字段AuditStatus,具体见示例TableSellOrder;后台startup需要注入ApprovalProcess'
            },
            ''
          )
        ];
      }
    },
    gridFooter: '',
    //Add、Edit弹出框扩展Component
    modelHeader: '',
    modelBody: '',
    modelFooter: ''
  },
  tableAction: '', //指定某张Table的Authority(这里填写WorkTable,默认Dept_Id填写)
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
      //示例：SetUp修改Add、Edit弹出框字段标签的长度
      // this.boxOptions.labelWidth = 150;
    },
    onInited() {
      this.height = this.height - 50;
      //框架初始化Configuration后
      //如果要Configuration明细Table,在此方法Operation
      //this.detailOptions.columns.forEach(column=>{ });
    },
    searchBefore(param) {
      //界面Query前,可以给param.wheres添加Query参数
      //返回false，则不会ExecuteQuery
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
    async modelOpenBeforeAsync(row) {
      //点击Edit/Add按钮弹出框前，可以在此处写逻辑，如，从后台获取Data
      this.$refs.gridHeader.open(row);
      return false;
    }
  }
};
export default extension;
