import {  defineAsyncComponent } from "vue";
let extension = {
    components: { //动态扩充组件或组件路径
        //表单header、content、footer对应位置扩充的组件
        gridHeader: defineAsyncComponent(() =>
            import("./Sys_User/Sys_UserGridHeader.vue")),
        gridBody: '',
        gridFooter: '',
        //弹出框(修改、Edit、查看)header、content、footer对应位置扩充的组件
        modelHeader: '',
        modelBody: '',
        modelFooter: ''
    },
    text: "只能看到当前Role_Id下的所有UserName",
    buttons: [], //扩展的按钮
    methods: { //事件扩展
        onInit() {
            this.boxOptions.height = 530;
            this.columns.push({
                title: '操作',
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
        addAfter(result) { //用户Add后，显示随机生成的UserPwd
            if (!result.status) {
                return true;
            }
            //显示Add用户的UserPwd
            //2020.08.28优化Add成后提示方式
            this.$confirm(result.message, 'Add用户成功', {
                confirmButtonText: '确定',
                type: 'success',
                center: true
            }).then(() => { })

            this.boxModel = false;
            this.refresh();
            return false;
        },
        modelOpenAfter() {
            //点击弹出框后，如果是Edit状态，禁止Edit用户名，如果Add状态，将用户名字段设置为可Edit
            let isEDIT = this.currentAction == this.const.EDIT;
            this.editFormOptions.forEach(item => {
                item.forEach(x => {
                    if (x.field == "UserName") {
                        x.disabled=isEDIT;
                    }
                })
                //不是Add，性别默认值设置为男
                if (!isEDIT) {
                    this.editFormFields.Gender = "0";
                }
            })
        }

    }
};
export default extension;