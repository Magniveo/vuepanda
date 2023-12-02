/*****************************************************************************************
 **  Author:jxx 2022
 **  QQ:283591387
 **完整Document见：http://v2.volcore.xyz/document/api 【CodeGenerationPageViewGrid】
 **常用示例见：http://v2.volcore.xyz/document/vueDev
 **后台Operation见：http://v2.volcore.xyz/document/netCoreDev
 *****************************************************************************************/
//此js文件是用来CustomExtension业务代码，可以扩展一些CustomizePage或者重新Configuration生成的代码
import gridBody from './Sys_QuartzOptionsGridBody';
let extension = {
  components: {
    //Query界面扩展Component
    gridHeader: '',
    gridBody: gridBody,
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
      this.textInline = false;
      this.columns.push({
        field: 'Operation',
        title: 'Operation',
        width: 150,
        fixed: 'right',
        align: 'center',
        render: (h, { row, column, index }) => {
          return h('div', { style: { color: '#0e84ff' } }, [
            h(
              'span',
              {
                style: {
                  cursor: 'pointer',
                  'margin-right': '8px',
                  'border-bottom': '1px solid'
                },
                onClick: (e) => {
                  this.request('start', row);
                }
              },
              'Execute'
            ),
            h(
              'span',
              {
                style: {
                  cursor: 'pointer',
                  'margin-right': '8px',
                  'border-bottom': '1px solid'
                },
                onClick: (e) => {
                  this.request('pause', row);
                }
              },
              'Pause'
            ),
            h(
              'span',
              {
                style: {
                  cursor: 'pointer',
                  'border-bottom': '1px solid'
                },
                onClick: (e) => {
                  this.$store.getters.data().quartzId = row.Id;
                  this.$refs.gridBody.open();
                }
              },
              'Log'
            )
          ]);
        }
      });
      //示例：SetUp修改Add、Edit弹出框字段标签的长度
      // this.boxOptions.labelWidth = 150;
    },
    request(action, row) {
      let url = `api/Sys_QuartzOptions/${action}`;
      this.http.post(url, row, true).then((result) => {
        this.$message.success('ExecuteSuccess');
        this.search();
      });
    },
    onInited() {
      this.height= this.height-50;
      this.columns.forEach((col) => {
        if (col.field == 'Status') {
          col.align = 'center';
          col.formatter = (row) => {
            //  return row.Status;
            if (row.Status == 1) {
              return '<a style="color:red;"><span style="display: inline-block;padding: 4px;background: red; border-radius: 50%; margin-right: 5px;"></span>Pause</a>';
            }
            return '<a style="color:#04b348;"><span style="display: inline-block;padding: 4px;background: #20c423; border-radius: 50%; margin-right: 5px;"></span>正常</a>';
          };
        }
      });
      //框架初始化Configuration后
      //如果要Configuration明细Table,在此方法Operation
      //this.detailOptions.columns.forEach(column=>{ });
      this.editFormOptions.forEach((options) => {
        options.forEach((option) => {
          if (option.field == 'CronExpression') {
            option.extra = {
              style: 'color: #0e84ff;cursor: pointer;',
              text: 'View',
              click: () => {
                window.open('https://cron.qqe2.com/', '_blank');
              }
            };
          }
        });
      });
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
      if (this.currentAction == 'Add' || !this.editFormFields.TimeOut) {
        this.editFormFields.TimeOut = 180;
      }
      this.editFormOptions.forEach((options) => {
        options.forEach((option) => {
          if (option.field == 'GroupName') {
            option.readonly = this.currentAction != 'Add';
          }
        });
      });
    }
  }
};
export default extension;
