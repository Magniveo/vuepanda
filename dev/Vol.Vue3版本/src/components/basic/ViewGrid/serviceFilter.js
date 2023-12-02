

let serviceFilter = {
  onInit () { //对应created
    console.log('CreateExecute前')
  },
  onInited () { //对应created，在onInitWithonInited中间会初始化界面Data对象
    console.log('CreateExecute后')
  },
  mounted () {
    console.log('mounted');
  },
  searchBefore (param) { //QueryViewGirdTableData前,paramQuery参数
    // console.log('Table' + this.table.cnName + '触发loadTableBefore');
    return true;
  },
  //2020.10.30增加Query后返回所有的Query信息
  searchAfter (param, result) { //QueryViewGirdTableData后paramQuery参数,result回返Query的结果
    // console.log('Table' + this.table.cnName + '触发loadTableAfter');
    return true;
  },
  searchDetailBefore (param) {//Query从TableTableData前,paramQuery参数
    //console.log(this.detailOptions.cnName + '触发loadDetailTableBefore');
    return true;
  },
  searchDetailAfter (param, data) {//Query从Table后paramQuery参数,result回返Query的结果
    // console.log(this.detailOptions.cnName + '触发loadDetailTableAfter');
    return true;
  },
  delBefore (ids, rows) { //Query界面的TableDel前 ids为Del的id数组,,rowsDel的行
    return true;
  },
  delAfter (result) {//Query界面的TableDel后
    return true;
  },
  delDetailRow (rows) { //弹出框Del明细Table的行Data(只是对tableOperation，并没有Operation后台)
    return true;
  },
  addBefore (formData) { //Add保存前formData为对象，包括明细Table
    return true;
  },
  async addBeforeAsync (formData) { //异步处理,功能同上(2020.12.06)
    return true;
  },
  addAfter (result) {//Add保存后result返回的状态及Form对象
    return true;
  },
  updateBefore (formData) { //Edit保存前formData为对象，包括明细Table、Del行的Id
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
  resetAddFormBefore () { //重置AddForm前的Content
    return true;
  },
  resetAddFormAfter () { //重置AddForm后的Content
    return true;
  },
  resetUpdateFormBefore () { //重置EditForm前的Content
    return true;
  },
  resetUpdateFormAfter () { //重置EditForm后的Content
    return true;
  },
  modelOpenBefore (row) { //点击Edit/Add按钮弹出框前，可以在此处写逻辑，如，从后台获取Data

  },
  modelOpenAfter (row) {  //点击Edit/Add按钮弹出框后，可以在此处写逻辑，如，从后台获取Data

  },
  importAfter (data) { //导入excel后刷新tableFormData
    this.search();
  },
  //2020.10.31添加导入前的方法
  importExcelBefore (formData) { //导入excel导入前
    //往formData写一些Other参数提交到后台，
    // formData.append("val2", "xxx");
    //后台按下面方法获取请求的参数
    // Core.Utilities.HttpContext.Current.Request("val2");
    return true;
  },
  reloadDicSource () { //重新Load字典绑定的Data源
    this.initDicKeys();
  },
  exportBefore (param) { //2020.06.25增加Export前处理
    return true;
  },
  onModelClose(iconClick){
    //iconClick=true为点击左中上角X触发的关闭Event
    //如果返回 false不会关闭弹出框 
    //return false;
    this.boxModel=false;
  },
  selectable(row, index){
    //TableCheckBox 是否可以勾选
       return true;
  }
}
export default serviceFilter;
