//author:jxx
//此处是对Form的方法，Component，AuthorityOperation按钮等进行任意扩展(方法扩展可参照SellOrder.js)
import  gridHeader from './FormCollectionOptionsGridHeader.vue'
import { h, resolveComponent } from 'vue';
let extension = {
    components: {//动态扩充Component或Component路径
        //Formheader、content、footer对应位置扩充的Component
        gridHeader:gridHeader,//{ template: "<div>扩展组xx件</div>" },
        gridBody: {
            render() {
              return [
                h(resolveComponent('el-alert'), {
                  style: { 'margin-bottom': '12px' },
                  'show-icon': true, type: 'success',
                  closable: false, title: '1、点击Add随便输入,2、点击Form[FormDesign]然后保存,3、点击Preview(Page打开后提交Data),4、DataCollectionPage看查结果'
                }, ''),
              ]
            }
          },
        gridFooter: '',
        //弹出框(修改、Edit、View)header、content、footer对应位置扩充的Component
        modelHeader: '',
        modelBody: '',
        modelFooter: ''
    },
    buttons: {view: [], box:[],  detail:[]},//扩展的按钮
    methods: {//Event扩展
        onInit() {
            this.boxOptions.height=200;
            this.initFormButton();
        },
        onInited(){
            this.height=  this.height-40;
        },
        initFormButton() {
            this.columns.splice(this.columns.findIndex(x => { return x.field == 'FormFields' }), 1, ...[{
                title: "Operation",
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
                title: "Preview",
                field: "Preview",
                with: 85,
                sort: false,
                formatter: () => {
                    return '<a style="color: #3a8ee6;">Preview</a>'
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