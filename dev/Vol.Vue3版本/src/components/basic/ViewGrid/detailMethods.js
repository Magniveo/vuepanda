//从Table方法
let detailMethods = {
  //Query从Table前先做内部处理
  loadInternalDetailTableBefore(param, callBack,data) {
    //Load明细TableData之前,需要设定Query的主Table的ID
    //每次只要Load明细FormData就重置Del明细的值
    if (this.detailOptions.delKeys.length > 0) {
      this.detailOptions.delKeys = [];
    }
    let key = this.table.key;
    if (this.currentRow && this.currentRow.hasOwnProperty(key)) {
      param.value = this.currentRow[key];
    }
    return this.loadDetailTableBefore(param, callBack,data);
  },
  detailRowOnChange(row) {
    this.detailRowChange(row);
  },
  detailRowChange(row) {
    //checkbox选中行Event
  },
  detailRowOnClick({ row, column, event }) {
    //明细Table点击行Event2020.11.07
    this.detailRowClick({ row, column, event });
  },
  detailRowClick({ row, column, event }) {},
  resetDetailTable(row) {
    //Edit和View明细时重置从TableData
    if (!this.detailOptions.columns || this.detailOptions.columns.length == 0) {
      return;
    }
    let key = this.table.key;
    let query = { value: row ? row[key] : this.currentRow[key] };
    this.$nextTick(() => {
      if (this.$refs.detail) {
        this.$refs.detail.reset();
        this.$refs.detail.load(query);
      }
    });
  },
  //从后面Load从TableData
  refreshRow() {
    this.resetDetailTable();
  },
  addRow() {
    this.$refs.detail.addRow({});
    this.$refs.detail.edit.rowIndex=-1;
    this.updateDetailTableSummaryTotal();
  },
  delRow() {
    let rows = this.$refs.detail.getSelected();
    if (!rows || rows.length == 0) {
      return this.$message.error('请选择要Del的行!');
    }
    if (!this.delDetailRow(rows)) {
      return false;
    }

    let tigger = false;
    this.$confirm('确认要Del选择的Data吗?', '警告', {
      confirmButtonText: window.locales[window.localei18n.locale].Confirm ,
      cancelButtonText: window.locales[window.localei18n.locale].Cancel,
      type: 'warning',
      center: true
    }).then(() => {
      if (tigger) return;
      tigger = true;
      rows = this.$refs.detail.delRow();
      let key = this.detailOptions.key;
      //记录Del的行Data
      rows.forEach((x) => {
        if (x.hasOwnProperty(key) && x[key]) {
          this.detailOptions.delKeys.push(x[key]);
        }
      });
      this.updateDetailTableSummaryTotal();
    });
  },
  updateDetailTableSummaryTotal() {
    //2021.09.25增加明细TableDel、修改时重新计算行数With汇总
    //2021.12.12增加明细Table判断(强制刷新合计时会用到)
    if (!this.$refs.detail) {
      return;
    }
    //Del或新增行时重新SetUp显示的总行数
    this.$refs.detail.paginations.total = this.$refs.detail.rowData.length;
    //重新SetUp合计
    if (this.$refs.detail.summary) {
      this.$refs.detail.columns.forEach((column) => {
        if (column.summary) {
          this.$refs.detail.getInputSummaries(null, null, null, column);
        }
      });
    }
  },
  detailSelectable(row, index){
    //明细TableCheckBox 是否可以勾选
       return true;
  }
};

export default detailMethods;
