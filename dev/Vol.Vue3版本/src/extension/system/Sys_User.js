import {  defineAsyncComponent } from "vue";
let extension = {
    components: { //动态扩充Component或Component路径
        //Formheader、content、footer对应位置扩充的Component
        gridHeader: defineAsyncComponent(() =>
            import("./Sys_User/Sys_UserGridHeader.vue")),
        gridBody: '',
        gridFooter: '',
        //弹出框(修改、Edit、View)header、content、footer对应位置扩充的Component
        modelHeader: '',
        modelBody: '',
        modelFooter: ''
    },
    text: "只能看到当前Role_Id下的所有UserName",
    buttons: [], //扩展的按钮
    methods: { //Event扩展
        onInit() {
            this.boxOptions.height = 530;
            this.columns.push({
                title: 'Operation',
                hidden: false,
                align: "center",
                fixed: 'right',
                width: 120,
                render: (h, { row, column, index }) => {
                    return h(
                        "div", { style: { 'font-size': '13px', 'cursor': 'pointer', 'color': '#409eff' } }, [
                        h(
                            "a", {
                            style: { 'margin-right': '15px' },
                            onClick: (e) => {
                                e.stopPropagation()
                                this.$refs.gridHeader.open(row);
                            }
                        }, "修改UserPwd"
                        ),
                        h(
                            "a", {
                            style: {},
                            onClick: (e) => {
                                e.stopPropagation()
                                this.edit(row);
                            }
                        },
                            "Edit"
                        ),
                    ])
                }
            })
        },
        onInited() { },
        addAfter(result) { //UserAdd后，显示随机生成的UserPwd
            if (!result.status) {
                return true;
            }
            //显示AddUser的UserPwd
            //2020.08.28优化Add成后提示方式
            this.$confirm(result.message, 'AddUserSuccess', {
                confirmButtonText: window.locales[window.localei18n.locale].Confirm,
                type: 'success',
                center: true
            }).then(() => { })

            this.boxModel = false;
            this.refresh();
            return false;
        },
        modelOpenAfter() {
            //点击弹出框后，如果是Edit状态，禁止EditUser名，如果Add状态，将User名字段SetUp为可Edit
            let isEDIT = this.currentAction == this.const.EDIT;
            this.editFormOptions.forEach(item => {
                item.forEach(x => {
                    if (x.field == "UserName") {
                        x.disabled=isEDIT;
                    }
                })
                //不是Add，Gender默认值SetUp为男
                if (!isEDIT) {
                    this.editFormFields.Gender = "0";
                }
            })
        }

    }
};
export default extension;