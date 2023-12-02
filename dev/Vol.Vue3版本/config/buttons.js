let buttons = [{
    name: "Search",
    value: 'Search',
    icon: 'el-icon-search',
    class: '',
    type: 'primary',
    onClick: function () {
        this.search();
    }
}, 
{
    name: "Add",
    icon: 'el-icon-plus',
    value: 'Add',
    class: '',
  //  plain:true,
    type: 'success',
    // plain:true,
    onClick: function () {
        this.add();
    }
},{
    name: "Update",
    icon: 'el-icon-edit',
    value: 'Update',
   // plain:true,
    class: '',
    type: 'primary',
    onClick: function () {
        this.edit();
    }
},  {
    name: "Delete",
    icon: 'el-icon-delete',
    class: '',
    value: 'Delete',
    type: 'danger',
    onClick: function () {
        this.del();
    }
},  {
    name: "Audit",
    icon: 'el-icon-check',
    class: '',
    value: 'Audit',
    plain:true,
    type: 'primary',
    onClick: function () {
        this.audit();
    }
},
{
    name: "Import",
    icon: 'el-icon-top',
    class: '',
    type:'success',
    plain:true,
    value: 'Import',
    onClick: function () {
        this.import();
    }
}, 
{//logIn
    name: "Export",
    icon: 'el-icon-bottom',
    type:'success',
    plain:true,
    value: 'Export',
    onClick: function () {
        this.export();
    }
}
// , {
//     name: "Data结构",
//     icon: 'ios-cog',
//     class: '',
//     value: '',
//     onClick: function () {
//         this.openViewColumns();
//     }
// }
]


export default buttons