import { h, resolveComponent } from 'vue';
let extension = {
  components: {
    //动态扩充Component或Component路径
    //Formheader、content、footer对应位置扩充的Component
    gridHeader: "", //{ template: "<div>扩展组xx件</div>" },
    gridBody: '',
    gridFooter: "",
    //弹出框(修改、Edit、View)header、content、footer对应位置扩充的Component
    modelHeader: "",
    modelBody: "",
    modelFooter: ""
  },
  buttons: [], //扩展的按钮
  methods: {
    //Event扩展
    onInit() {
      console.log("sys_log")
      this.setFiexdSearchForm(true);
    },
    onInited() {
      this.height = this.height - 170;
    }
  }
};
export default extension;
