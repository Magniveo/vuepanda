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
  tableAction: '', //指定某张Table的Authority(这里填写WorkTable,默认Dept_Id填写)
  buttons: { view: [], box: [], detail: [] }, //扩展的按钮
  methods: {
    //下面这些方法可以保留也可以Del
    onInit() {  //框架初始化Configuration前，
      this.rowKey = "DepartmentId";
    },
    loadTreeChildren(tree, treeNode, resolve) { //Load子Node
      let url = `api/Sys_Department/getTreeTableChildrenData?departmentId=${tree.DepartmentId}`;
      this.http.post(url, {}).then(result => {
        resolve(result.rows)
      })
    },
    /***Load后台Data见Sys_RoleController.cs文件***/
    searchBefore(params) {//判断Load根Node或子Node
      //没有Query条件，默认Query返回所有根NodeData
      if (!params.wheres.length) {
        params.value = 1;
      }
      return true;
    },
    onInited() {
      let hasUpdate, hasDel, hasAdd;
      this.buttons.forEach((x) => {
        if (x.value == 'Update') {
          x.hidden = true;
          hasUpdate = true;
        } else if (x.value == 'Delete') {
          hasDel = true;
          x.hidden = true;//隐藏按钮
        }
        else if (x.value == 'Add') {
          x.type="primary";
          hasAdd = true;
        }
      });
      if (!(hasUpdate || hasDel || hasAdd)) {
        return;
      }
      this.columns.push({
        title: 'Operation',
        field: 'Operation',
        width: 80,
        fixed: 'right',
        align: 'center',
        render: (h, { row, column, index }) => {
          return (
            <div>
              <el-button
                onClick={($e) => {
                  this.addBtnClick(row)
                }}
                type="primary"
                link
                v-show={hasAdd}
                icon="Plus"
              >
              </el-button>
              <el-button
                onClick={($e) => {
                  this.edit(row);
                }}
                type="success"
                link
                v-show={hasUpdate}
                icon="Edit"
              >
              </el-button>
              <el-tooltip
                class="box-item"
                effect="dark"
                content="Del"
                placement="top"
              >
                <el-button
                  link
                  onClick={($e) => {
                    this.del(row);
                  }}
                  v-show={hasDel}
                  type="danger"
                  icon="Delete"
                >
                </el-button>
              </el-tooltip>
            </div>
          );
        }
      });
    },
    addBtnClick(row) {
      //这里是动态addCurrnetRow属性记录当前点击的行Data,下面modelOpenAfterSetUp默认值
      this.addCurrnetRow = row;
      this.add();
    },
    addAfter() {//添加后刷新字典
      this.initDicKeys();
      return true;
    },
    updateAfter() {
      this.initDicKeys();
      return true;
    },
    delAfter(result) {//Query界面的TableDel后
      this.initDicKeys();
      return true;
    },
    modelOpenAfter(row) {
      //点击行上的添加按钮Event
      if (this.addCurrnetRow) {

        //获取当前DeptIds的所有ParentId,用于SetUpAdd时ParentId的默认值

        //获取DataData源
        let data = [];
        this.editFormOptions.forEach(options => {
          options.forEach(option => {
            if (option.field == 'ParentId') {
              data = option.orginData;
            }
          })
        })
        let parentIds = this.base.getTreeAllParent(this.addCurrnetRow.DepartmentId, data).map(x => { return x.id });
        //SetUpEditFormParentId的默认值
        this.editFormFields.ParentId = parentIds;
        this.addCurrnetRow = null;

      }
    }
  }
};
export default extension;
