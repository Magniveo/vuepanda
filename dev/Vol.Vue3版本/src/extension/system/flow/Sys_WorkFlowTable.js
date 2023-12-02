/*****************************************************************************************
 **  Author:jxx 2022
 **  QQ:283591387
 **完整Document见：http://v2.volcore.xyz/document/api 【CodeGenerationPageViewGrid】
 **常用示例见：http://v2.volcore.xyz/document/vueDev
 **后台Operation见：http://v2.volcore.xyz/document/netCoreDev
 *****************************************************************************************/
//此js文件是用来CustomExtension业务代码，可以扩展一些CustomizePage或者重新Configuration生成的代码
import gridHeader from '@/components/basic/ViewGrid/ViewGridAudit.vue'
let extension = {
  components: {
    //Query界面扩展Component
    gridHeader: gridHeader,
    gridBody: '',
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

      //Form上添加Customize按钮
      this.columns.push({
        title: 'Operation',
        field: 'Operation',
        width: 120,
        align: 'center',
        render: (h, { row, column, index }) => {
          return (
            <div>
              <el-button
                onClick={($e) => {
                      this.$refs.gridHeader.open([row],true);
                }}
                type="primary"
                plain
                size="small"
                style="height:26px; padding: 10px !important;"
              >
                审核
              </el-button>
              <el-button
                onClick={($e) => {
                  this.$tabs.open({
                    text: row.WorkTableName || row.WorkName,
                    path: '/' + row.WorkTable,
                    query: { id: row.WorkTableKey, viewflow: 1 }
                  });
                }}
                type="default"
                plain
                size="small"
                style="height:26px; padding: 10px !important;"
              >
                View
              </el-button>
            </div>
          )
        }
      });
    },
    onInited() {
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
