import { h, resolveComponent } from 'vue';
let extension = {
    components: { //动态扩充Component或Component路径
        //Formheader、content、footer对应位置扩充的Component
        //扩展Component引入方式
        gridHeader: '',
        gridBody: {
            render () {
                return [
                    h(resolveComponent('el-alert'), {
                        style: { 'margin-bottom': '12px' },
                        'show-icon': true, type: 'error',
                        closable: false, title: '界面下拉框、多选、checkbox等Data源都在此处维护，也是CodeGenerationDevice中的Data源'
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
    buttons: [], //扩展的按钮
    methods: { //Event扩展
        onInit () {
            //点击Single元格EditWithEndEdit(默认是点击Single元格Edit，鼠标离开EndEdit)
            this.detailOptions.clickEdit = true;
            this.editFormOptions.forEach(x => {
                x.forEach(item => {
                    if (item.field == 'ParentId') {
                        item.min = 0;
                    }
                    if (item.field == "DbSql") {
                        item.placeholder = "如果从Data库LoadData源，请按此格式ConfigurationDbSql：select orderType as key,orderName as value from order  如果需要根据User信息LoadData源，请Configuration好此sql,再修改后台DictionaryHandler.GetCustomDBSql方法";
                    }
                })
            })
            this.detailOptions.columns.forEach(x => {
                if (x.field == 'OrderNo') {
                    x.summary = true;
                }
            })
            //保存后不关闭Edit框
            this.boxOptions.saveClose = false;
        },
        onInited () {
            this.boxOptions.height = document.body.clientHeight * 0.87
            this.height = this.height - 45;
        },
        addBefore (formData) {
            return this.saveBefore(formData);
        },
        updateBefore (formData) {
            return this.saveBefore(formData);
        },
        saveBefore (formData) {
            if (this.editFormFields.DbSql &&
                (this.editFormFields.DbSql.indexOf('value') == -1 ||
                    this.editFormFields.DbSql.indexOf('key') == -1)
            ) {
                this.$message.error("DbSql必须包括key/value字段,如:select orderType as key,orderName as value from order");
                return false;
            }
            return true;
        },
        searchBefore (param) {
            return true;
        },
        searchAfter (result) {
            return true;
        }
    }
};
export default extension;