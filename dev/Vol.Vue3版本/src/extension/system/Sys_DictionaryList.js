

let extension = {
    components: {//动态扩充Component或Component路径
        //Formheader、content、footer对应位置扩充的Component
        gridHeader:'',
        gridbody:'',
        gridFooter: '',
        //弹出框(修改、Edit、View)header、content、footer对应位置扩充的Component
        modelHeader: '',
        modelBody: '',
        modelFooter: ''
    },
    buttons: [],//扩展的按钮
    methods: {//Event扩展
        onInit() {
        },
        onInited() {
        }
    }
};
export default extension;