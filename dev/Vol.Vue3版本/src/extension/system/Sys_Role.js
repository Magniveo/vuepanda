
import { h, resolveComponent } from 'vue';
let extension = {
  components: {//动态扩充Component或Component路径
    //Formheader、content、footer对应位置扩充的Component
    gridHeader: '',
    gridBody: {
      render () {
          return [
              h(resolveComponent('el-alert'), {
                  style: { 'margin-bottom': '12px' },
                  'show-icon': false, type: 'success',
                  closable: false, title: '关于TreeTable使用'
              }, ' treetable同样全部代码自动生成，Page生成后SetUpthis.rowKe="xxx" tree主键字段,即可完成树形tableConfiguration,具体说明见Sys_Role1.js'),
          ]
      }
  },

    gridFooter: '',
    //弹出框(修改、Edit、View)header、content、footer对应位置扩充的Component
    modelHeader: '',
    modelBody: '',
    modelFooter: ''
  },
  buttons: [],//扩展的按钮
  tableAction:"Sys_Role",
  methods: {//Event扩展
    onInited () {
      this.height = this.height - 80;
       this.editFormOptions.forEach(x => {
        x.forEach(item => {
          if (item.field == 'ParentId') {
            item.title = "上级Role_Id";
            //SetUp任意Node都能选中(默认只能选中最后一个Node)
            item.changeOnSelect = true;
          }
        })
      })
    },
    onInit() {
      //SetUptreetable的唯一值字段(这个字段的值在Table里面必须是唯一的)
      this.rowKey="Role_Id";
    },
    /***Load后台Data见Sys_RoleController.cs文件***/
    loadTreeChildren(tree, treeNode, resolve) { //Load子Node
      let url=`api/role/getTreeTableChildrenData?roleId=${tree.Role_Id}`;
      this.http.post(url,{}).then(result=>{
        resolve(result.rows)
      })
    },
      /***Load后台Data见Sys_RoleController.cs文件***/
    searchBefore(params){//判断Load根Node或子Node
      //没有Query条件，默认Query返回所有根NodeData
      if (!params.wheres.length) {
        params.value=1;
      }
      return true;
    }
  }
};
export default extension;
