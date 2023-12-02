//author:jxx
//此处是对Form的方法，Component，AuthorityOperation按钮等进行任意扩展(方法扩展可参照SellOrder.js)
let extension = {
    components: {//动态扩充Component或Component路径
        //Formheader、content、footer对应位置扩充的Component
        gridHeader: '',//{ template: "<div>扩展组xx件</div>" },
        gridBody: '',
        gridFooter: '',
        //弹出框(修改、Edit、View)header、content、footer对应位置扩充的Component
        modelHeader: '',
        modelBody: '',
        modelFooter: ''
    },
    text: "点击左侧Form名名字即可Load收集的Data",
    tableAction: "formCollectionResultTree",
    buttons: { view: [], box: [], detail: [] },//扩展的按钮
    methods: {//Event扩展
        onInit() {
            this.textInline = false;
            // this.ck = false;
            this.load = false;
            this.setFiexdSearchForm(true);
            
        },
        onInited() {
            this.height = this.height - 74;
        },
        loadById(item) {
            let columns = [
                {
                    title: "Creator",
                    field: "Creator"
                },
                {
                    title: "CreateDate",
                    field: "CreateDate"
                }];
            JSON.parse(item.formOptions).formOptions.forEach(x => {
                columns.push(...x.map(m => {
                    return {
                        title: m.title,
                        field: m.field,
                        type: m.type
                    }
                }))
            })
            this.formId = item.formId;
            this.columns.splice(0);
            this.columns.push(...columns);
            this.search();
        },
        exportBefore(formData) {
            formData.Value = this.formId;
            return true;
        },
        searchBefore(formData) {
          //  formData.Value = this.formId;
            formData.wheres.push({name:'FormId',value:this.formId})
            return true;
        },
        searchAfter(rows) {
            rows.forEach(row => {
                if (row.FormData) {
                    let data = JSON.parse(row.FormData);
                    for (const key in data) {
                        row[key] = Array.isArray(data[key]) ? data[key].filter(x => { return x != null && x != undefined }).join(',') : data[key];
                    }
                }
            })
            return true;
        }
    }
};
export default extension;