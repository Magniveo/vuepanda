//author:jxx
//此处是对Form的方法，组件，权限操作按钮等进行任意扩展(方法扩展可参照SellOrder.js)
import  gridHeader from './FormCollectionOptionsGridHeader.vue'
import { h, resolveComponent } from 'vue';
let extension = {
    components: {//动态扩充组件或组件路径
        //Formheader、content、footer对应位置扩充的组件
        gridHeader:gridHeader,//{ template: "<div>扩展组xx件</div>" },
        gridBody: {
            render() {
              return [
                h(resolveComponent('el-alert'), {
                  style: { 'margin-bottom': '12px' },
                  'show-icon': true, type: 'success',
                  closable: false, title: '1、点击Add随便输入,2、点击表格[FormDesign]然后保存,3、点击预览(页面打开后提交数据),4、DataCollection页面看查结果'
                }, ''),
              ]
            }
          },
        gridFooter: '',
        //弹出框(修改、Edit、查看)header、content、footer对应位置扩充的组件
        modelHeader: '',
        modelBody: '',
        modelFooter: ''
    },
    buttons: {view: [], box:[],  detail:[]},//扩展的按钮
    methods: {//事件扩展
        onInit() {
            this.boxOptions.height=200;
            this.initFormButton();
        },
        onInited(){
            this.height=  this.height-40;
        },
        initFormButton() {
            this.columns.splice(this.columns.findIndex(x => { return x.field == 'FormFields' }), 1, ...[{
                title: "操作",
                field: "FormDesign",
                with: 80,
                sort: false,
                formatter: () => {
                    return '<a style="color: #3a8ee6;">FormDesign</a>'
                },
                click: (row) => {
                    this.$refs.gridHeader.open(row);
                }
            }, 
             {
                title: "预览",
                field: "预览",
                with: 85,
                sort: false,
                formatter: () => {
                    return '<a style="color: #3a8ee6;">预览</a>'
                },
                click: (row) => {
                    this.$tabs.open({
                        path: "/formSubmit", text: row.Title, query: {
                            id: row.FormId
                        }
                    })
                    //  this.$refs.gridHeader.open(row);
                }
            }])
        }
    }
};
export default extension;