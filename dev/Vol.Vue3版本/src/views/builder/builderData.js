let columnType = [{ "key": 1, "value": "img" },
{ "key": 2, "value": "excel" },
{ "key": 3, "value": "file" },
//2021.07.27增加table列显示AppTypedate(自动Format)
{ "key": 4, "value": "date" }
]

let dataType = [
  { "key": "text", "value": "input" },
  { "key": "textarea", "value": "textarea" },
  { "key": "switch", "value": "switch" },
  // { "key": "dropList", "value": "dropList" },
  { "key": "select", "value": "select" },
  { "key": "selectList", "value": "select多选" },
  { "key": "date", "value": "date" },
  { "key": "datetime", "value": "datetime" },
  { "key": "month", "value": "年月" },
  { "key": "rate", "value": "rate评分" },
  { "key": "time", "value": "time" },
  { "key": "checkbox", "value": "checkbox" },
  // 2021.05.16集成iview radioComponent
  { "key": "radio", "value": "radio" },
  { "key": "cascader", "value": "级联" },//2020.11.01增加级联选择
  { "key": "treeSelect", "value": "树形级联tree-select" },//2020.11.01增加级联选择
  { "key": "editor", "value": "富文本EditDevice" },
  { "key": "mail", "value": "mail" },
  { "key": "number", "value": "number" },
  { "key": "decimal", "value": "decimal" },
  { "key": "phone", "value": "phone" },
  { "key": "img", "value": "img" },
  { "key": "excel", "value": "excel" },
  { "key": "file", "value": "file" }
];

let searchDataType = [
  { "key": "text", "value": "input" },
  { "key": "like", "value": "模糊Query" },
  { "key": "textarea", "value": "textarea" },
  { "key": "switch", "value": "switch" },
  { "key": "select", "value": "select" },
  { "key": "selectList", "value": "select多选" },
  { "key": "date", "value": "date" },
  { "key": "datetime", "value": "datetime" },
  { "key": "month", "value": "年月" },
  { "key": "time", "value": "time" },
  { "key": "cascader", "value": "级联" },//2020.11.01增加级联选择
  { "key": "checkbox", "value": "checkbox" },
  // 2021.05.16集成iview radioComponent
  { "key": "radio", "value": "radio" },
  { "key": "range", "value": "区间Query" },
  { "key": "mail", "value": "mail" },
  { "key": "number", "value": "number" },
  { "key": "decimal", "value": "decimal" },
  { "key": "phone", "value": "phone" }
];
let data = {
  form: {
    fields: {
      table_Id: '',
      parentId: null,
      namespace: '',
      columnCNName: '',
      tableName: '',
      tableTrueName: '',
      folderName: '',
      detailCnName: '',
      detailName: '',
      expressField: '',
      sortName: '',
      richtitle: '',
      uploadField: '',
      uploadMaxCount: '',
      enable: 0,
      vuePath: '',
      appPath: "",
      userPermissionDesc: '开启后当前User只能Operation自己(With下级Role_Id)创建的Data,如:Query、Del、修改等Operation'
    },
    addOptions: [
      [{ "title": "父 级 ID", min: 0, "field": "parentId", "required": true, type: 'number', placeholder: '放在【CodeGenerationConfiguration】List的文件夹ID下,如果填入【0】就是一级目录' }],
      [{
        "title": "项目类库",
        "field": "namespace",
        "placeholder": "CodeGeneration后的所在类库(可以自己提前在后台项目中创建一个.netcore类库)",
        "type": "select",
        "required": true,
        data: []
      }],
      [{ "title": "WorkTableName", "field": "columnCNName", "required": true, placeholder: "Table对应的中文名字,界面上显示会用到" }],
      [{ "title": "实际WorkTable", "field": "tableName", "required": true, placeholder: "Data库实际WorkTable或者视图名(多Table关联请创建视图再生成代码)" }],
      [{ "title": "文件夹名", placeholder: "生成文件所在类库中的文件夹名(文件夹可以不存在);注意只需要填写文件夹名，不是路径", "field": "folderName", "required": true }]
    ],
    options: [
      [
        { "title": "主 键 ID", "field": "table_Id", "dataSource": [], readonly: true, disabled: true, columnType: 'int' },
        { "title": "父 级 ID", "field": "parentId", min: 0, "required": true, type: 'number' },
        {
          "title": "项目类库",
          "placeholder": "CodeGeneration存放的位置",
          "field": "namespace",
          "type": "select",
          "required": true,
          data: []
        }
      ],
      [
        { "title": "WorkTableName", "field": "columnCNName", "dataSource": [], "required": true },
        { "title": "Table 别 名", placeholder: "默认With实际WorkTable相同", "field": "tableName", "required": true },
        { "title": "实际WorkTable", "field": "tableTrueName" },

      ],
      [
        { "title": "文件夹名", placeholder: "生成文件所在类库中的文件夹名(文件夹可以不存在)", "field": "folderName", "required": true },
        { "title": "明细WorkTable", "field": "detailCnName", placeholder: "明细WorkTableName字" },
        { "title": "明 细 Table", "field": "detailName", placeholder: "Data库的WorkTable" },

      ],
      [
        { "title": "快捷Edit", "field": "expressField", placeholder: "快捷Edit字段" },
        { "title": "OrderNo字段", "field": "sortName", "placeholder": "多个OrderNo字段逗号隔开(默认降序OrderNo),如：Name,Age", colSize: 8 },

        // { "title": "还没想好", "field": "richtitle" }
      ],
      [{ "title": "Vue路径", "field": "vuePath", type: "text", placeholder: 'Vue项目所在绝对路径,到views文件夹,如：E:/app/src/views', colSize: 6 },
      { "title": "app路径", "field": "appPath", type: "text", placeholder: 'uniapp项目所在绝对路径,到pages文件夹,如：E:/uniapp/pages', colSize: 6 }]
      // [ //待完
      //     { "title": "开启UserAuthorityData", "field": "enable", bind: { data: [{ key: 1, value: '是', key: 0, value: '否' }] }, type: 'switch', colSize: 2 },
      //     { "title": "提示", "required": true, "field": "userPermissionDesc", colSize: 10, "placeholder": "非自增主键需要输入OrderNo字段",readonly:true }
      // ],
      // [

      // ],
      // [
      //     { "title": "富文本Edit字段", "field": "richtitle", "displayType": "title" },
      //     { "title": "FileUpload字段", "field": "uploadField", "displayType": "title" },
      //     { "title": "FileUploadQuantity限制", "field": "uploadMaxCount", "displayType": "title", columnType: 'int' }
      // ],
      // [
      //     { "title": "Vue视图绝对路径", "field": "vuePath", "displayType": "title", colSize: 12, placeholder: 'Vue项目所在绝对路径,到views文件夹,如：E:/app/src/views' },
      // ]
    ]
  },
  //2021.01.09增加CodeGenerationDeviceSetUptableOrderNo功能
  columns: [
    { field: 'columnId', title: 'ColumnId', width: 120, align: 'left', edit: { type: "text" }, hidden: true },
    { field: 'table_Id', title: 'Table_Id', width: 120, align: 'left', editor: 'text', hidden: true },
    { field: 'columnCnName', title: '列显示ExpertName', fixed: true, width: 120, align: 'left', edit: { type: "text" } },
    { field: 'columnName', title: '列名', fixed: true, width: 120, align: 'left', edit: { type: "text" } },
    { field: 'isKey', title: '主键', width: 90, align: 'left', edit: { type: "switch" } },
    { field: 'sortable', title: '是否OrderNo', width: 90, align: 'left', edit: { type: "switch", keep: true } },
    {
      field: 'enable', title: 'app列', width: 140, align: 'left', edit: { type: "select" },
      bind: {
        data: [
          { key: 1, value: "显示/Query/Edit" },
          { key: 2, value: "显示/Edit" },
          { key: 3, value: "显示/Query" },
          { key: 4, value: "显示" },
          { key: 5, value: "Query/Edit" },
          { key: 6, value: "Query" },
          { key: 7, value: "Edit" },
        ]
      }
    },
    { field: 'searchRowNo', title: 'Query行', width: 90, align: 'left', edit: { type: "text" } },
    { field: 'searchColNo', title: 'Query列', width: 90, align: 'left', edit: { type: "text" } },
    { field: 'searchType', title: 'QueryAppType', width: 150, align: 'left', edit: { type: "select" }, bind: { data: searchDataType } },
    { field: 'editRowNo', title: 'Edit行', width: 90, align: 'numberbox', edit: { type: "text" } },
    { field: 'editColNo', title: 'Edit列', width: 90, align: 'numberbox', edit: { type: "text" } },
    { field: 'editType', title: 'EditAppType', width: 150, align: 'left', edit: { type: "select" }, bind: { data: dataType } },
    { field: 'dropNo', title: 'Data源', width: 120, align: 'left', bind: { data: [] }, edit: { type: "select", data: [] } },
    { field: 'isImage', title: 'table列显示AppType', hidden: false, width: 130, align: 'left', edit: { type: "select" }, bind: { data: columnType } },
    { field: 'orderNo', title: '列显示顺序', width: 120, align: 'left', edit: { type: "text" } },
    { field: 'maxlength', title: '字段最大长度', width: 130, align: 'left', edit: { type: "text" } },
    { field: 'columnType', title: 'DataAppType', width: 120, align: 'left', edit: { type: "text" } },
    { field: 'isNull', title: '可为空', width: 120, align: 'left', edit: { type: "switch", keep: true } },
    { field: 'isReadDataset', title: '是否ReadOnly', width: 120, align: 'left', edit: { type: "switch", keep: true } },
    { field: 'isColumnData', title: 'Data列', width: 120, align: 'left', edit: { type: "switch", keep: true } },
    { field: 'isDisplay', title: '是否显示', width: 120, align: 'left', edit: { type: "switch", keep: true } },
    { field: 'columnWidth', title: 'table列宽度', width: 120, align: 'left', edit: { type: "text" } },
    { field: 'colSize', title: 'Edit列标签宽度colSize', width: 180, align: 'left', edit: { type: "text" } },
    // { field: 'import', title: '导入列', hidden: true, width: 100, align: 'left', edit: { type: "switch" } },
    // { field: 'apiInPut', title: 'Api输入列(待实现)', width: 100, align: 'left', edit: { type: "switch" } },
    // { field: 'apiIsNull', title: 'Api输入列可为空(待实现)', width: 130, align: 'left', edit: { type: "switch" } },
    // { field: 'apiOutPut', title: 'Api输出列(待实现)', width: 100, align: 'left', edit: { type: "switch" } },
    // { field: 'columnformat', title: '显示格式', width: 120, align: 'left', editor: 'text', editor: 'textarea' },
    // { field: 'script', title: '脚本', width: 120, align: 'left', editor: 'textarea' },
    // { field: 'creator', title: 'Creator', width: 120, align: 'left' },
    { field: 'createDate', title: 'CreateDate', width: 120, align: 'left' },
    // { field: 'modifier', title: 'Modifier', width: 120, align: 'left' },
    // { field: 'modifyDate', title: 'ModifyDate', width: 120, align: 'left' }
  ]
}

export default data