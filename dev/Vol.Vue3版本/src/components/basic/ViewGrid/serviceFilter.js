

let serviceFilter = {
  onInit () { //对应created
    console.log('Create执行前')
  },
  onInited () { //对应created，在onInit与onInited中间会初始化界面数据对象
    console.log('Create执行后')
  },
  mounted () {
    console.log('mounted');
  },
  searchBefore (param) { //查询ViewGird表数据前,param查询参数
    // console.log('表' + this.table.cnName + '触发loadTableBefore');
    return true;
  },
  //2020.10.30增加查询后返回所有的查询信息
  searchAfter (param, result) { //查询ViewGird表数据后param查询参数,result回返查询的结果
    // console.log('表' + this.table.cnName + '触发loadTableAfter');
    return true;
  },
  searchDetailBefore (param) {//查询从表表数据前,param查询参数
    //console.log(this.detailOptions.cnName + '触发loadDetailTableBefore');
    return true;
  },
  searchDetailAfter (param, data) {//查询从表后param查询参数,result回返查询的结果
    // console.log(this.detailOptions.cnName + '触发loadDetailTableAfter');
    return true;
  },
  delBefore (ids, rows) { //查询界面的表Del前 ids为Del的id数组,,rowsDel的行
    return true;
  },
  delAfter (result) {//查询界面的表Del后
    return true;
  },
  delDetailRow (rows) { //弹出框Del明细表的行数据(只是对table操作，并没有操作后台)
    return true;
  },
  addBefore (formData) { //Add保存前formData为对象，包括明细表
    return true;
  },
  async addBeforeAsync (formData) { //异步处理,功能同上(2020.12.06)
    return true;
  },
  addAfter (result) {//Add保存后result返回的状态及Form对象
    return true;
  },
  updateBefore (formData) { //Edit保存前formData为对象，包括明细表、Del行的Id
    return true;
  },
  async updateBeforeAsync (formData) { //异步处理,功能同上(2020.12.06)
    return true;
  },
  updateAfter (result) {//Edit保存后result返回的状态及Form对象
    return true;
  },
  auditBefore (ids, rows) {//审核前
    return true;
  },
  auditAfter (result, rows) {// 审核后
    return true;
  },
  resetAddFormBefore () { //重置AddForm前的内容
    return true;
  },
  resetAddFormAfter () { //重置AddForm后的内容
    return true;
  },
  resetUpdateFormBefore () { //重置EditForm前的内容
    return true;
  },
  resetUpdateFormAfter () { //重置EditForm后的内容
    return true;
  },
  modelOpenBefore (row) { //点击Edit/Add按钮弹出框前，可以在此处写逻辑，如，从后台获取数据

  },
  modelOpenAfter (row) {  //点击Edit/Add按钮弹出框后，可以在此处写逻辑，如，从后台获取数据

  },
  importAfter (data) { //导入excel后刷新table表格数据
    this.search();
  },
  //2020.10.31添加导入前的方法
  importExcelBefore (formData) { //导入excel导入前
    //往formData写一些其他参数提交到后台，
    // formData.append("val2", "xxx");
    //后台按下面方法获取请求的参数
    // Core.Utilities.HttpContext.Current.Request("val2");
    return true;
  },
  reloadDicSource () { //重新加载字典绑定的数据源
    this.initDicKeys();
  },
  exportBefore (param) { //2020.06.25增加导出前处理
    return true;
  },
  onModelClose(iconClick){
    //iconClick=true为点击左中上角X触发的关闭事件
    //如果返回 false不会关闭弹出框 
    //return false;
    this.boxModel=false;
  },
  selectable(row, index){
    //表CheckBox 是否可以勾选
       return true;
  }
}
export default serviceFilter;
