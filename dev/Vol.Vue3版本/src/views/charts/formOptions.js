let formFields1 = {
    Variety: "",
    AgeRange: "",
    DateRange: [],
    City: "",
    AvgPrice: 8.88,
    Date: "",
    IsTop: "还没想好..."
}
let formRules1 = [
    //两列的表单，formRules数据格式为:[[{},{}]]
    [
        {
            link:true,
            dataKey: "city",
            title: "City",
            required: true,
            field: "City",
            data: [],
            type: "select"
        },
        {
            title: "多选Date",
            range: true, //设置为true可以选择开始与结束Date
            required: false,
            field: "DateRange",
            //   colSize: 4,//设置宽度为1/3
            type: "date"
        }
    ],
    [
        {
            dataKey: "age", //后台下拉框对应的数据DicNo
            data: [], //loadKey设置为true,会根据dataKey从后台的下拉框数据源中自动加载数据
            title: "下拉",
            required: true, //设置为必选项
            field: "AgeRange",
            type: "select"
        },
        {
            title: "Date",
            required: true,
            field: "Date",
            placeholder: "你可以设置colSize属性决定标签的长度，可选值12/8/6/4",
            //  colSize: 8,//设置宽度为2/3
            type: "datetime"
        }
    ],
    [
        {
            title: "Modifier",
            dataKey: "age",
            placeholder: "此处数据源为手动绑定",
            //如果这里绑定了data数据，后台不会加载此数据源
            data: [{ key: "1", value: "Modifier1" }, { key: "2", value: "Modifier2" }],
            required: false,
            field: "Variety",
            type: "select"
        },
        {
            type: "decimal",
            title: "AvgPrice",
            required: true,
            placeholder: "你可以自己定义placeholder显示的文字",
            field: "AvgPrice"
        }
    ],
    [
        {
            title: "Remark",
            required: true,
            field: "IsTop",
            colSize: 12, //设置12，此列占100%宽度
            type: "textarea"
        }
    ]
]

let formFields2 = {
    Variety: "一次性用品",
    City: "北京市",
    DateRange: "2019-09-01",
    AvgPrice: 8.88,
    Variety1: "",
    DateRange1: "2019-09-02",
    AvgPrice1: 7.72,
    Address:"北京市海淀区001号",
    IsChange: 1
}
let formRules2 = [
    //两列的表单，formRules数据格式为:[[{},{}]]
    [
        {
            title: "商品类型",
            dataKey: "age",
            //如果这里绑定了data数据，后台不会加载此数据源
            data: [{ key: "1", value: "1" }, { key: "2", value: "2" }],
            field: "Variety",
            disabled: true,
            type: "select"
        },
        {
            dataKey: "city",
            title: "所在City",
            field: "City",
            disabled: true,
            type: "select",
            data: []
        }],
    [
        {
            title: "销售Date",
            field: "DateRange",
            disabled: true,
        },
        {
            title: "销售AvgPrice",
            field: "AvgPrice",
            disabled: true
        }],
    [
        {
            title: "生产Date",
            field: "DateRange1",
            disabled: true,
        },
        {
            title: "中间AvgPrice",
            field: "AvgPrice1",
            disabled: true
        }],
    [
        {
            title: "销售Address",
            field: "Address",
            disabled: true,
        },
        {
            title: "是否成交",
            field: "IsChange",
            dataKey: "enable",//这里设置了数据字典源的编号会自动从后台加载数据源的key/value
            data: [],
            disabled: true
        }]
]


export { formFields1, formRules1, formFields2, formRules2 }