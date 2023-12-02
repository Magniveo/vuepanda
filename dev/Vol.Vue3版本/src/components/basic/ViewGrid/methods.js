import detailMethods from './detailMethods.js';
//业务处理方法,全部可以由开发覆盖
import serviceFilter from './serviceFilter.js';

let methods = {
  //当添加扩展ComponentgridHeader/gridBody/gridFooter及明细modelHeader/modelBody/modelFooter时，
  //如果要获取父级Vue对象,请使用此方法进行回调
  parentCall(fun) {
    if (typeof fun != 'function') {
      return console.log('扩展Component需要传入一个回调方法才能获取父级Vue对象');
    }
    fun(this);
  },
  getCurrentAction() {
    if (this.currentReadonly) {
      return '';
    }
    return '--' + (this.currentAction == this.const.ADD ? window.locales[window.localei18n.locale].Add : 'Edit');
  },
  quickSearchKeyPress($event) {
    //Query字段为input时，按回车Query
    if ($event.keyCode == 13) {
      if (this.searchFormFields[this.singleSearch.field] != '') {
        this.search();
      }
    }
  },
  getButtons() {
    //生成ViewGrid界面的Operation按钮及更多选项
    let searchIndex = this.buttons.findIndex((x) => {
      return x.value == 'Search';
    });
    //添加高级Query
    let hasOneFormItem =
      this.searchFormOptions.length == 1 &&
      this.searchFormOptions[0].length == 1;
    if (searchIndex != -1 && !hasOneFormItem) {
      this.buttons.splice(searchIndex + 1, 0, {
        icon: this.fiexdSearchForm ? 'el-icon-refresh-left' : 'el-icon-search',
        name: this.fiexdSearchForm ? window.locales[window.localei18n.locale].Reset : window.locales[window.localei18n.locale].Reset +'Query',
        plain: true,
        type: this.buttons[searchIndex].type,
        onClick: () => {
          if (this.fiexdSearchForm) {
            return this.resetSearch();
          }
          this.searchBoxShow = !this.searchBoxShow;
        }
      });
    }
    if (hasOneFormItem) {
      this.fiexdSearchForm = false;
    }
    this.maxBtnLength += searchIndex == -1 ? 0 : 1;
    // if (this.buttons.length <= this.maxBtnLength) {
    //   return this.buttons;
    // }
    // let btns = this.buttons.slice(0, this.maxBtnLength);
    // btns[this.maxBtnLength - 1].last = true;
    // return btns;
  },
  extendBtn(btns, source) {
    //btnsAuthority按钮，source为扩展按钮
    if (!btns || !(source && source instanceof Array)) {
      return;
    }
    //source通过在Table的扩展js文件中buttons对应按钮的属性index决定按钮所放位置
    source.forEach((x) => {
      //通过按钮的Index属性，放到指定的位置
      btns.splice(x.index == undefined ? btns.length : x.index, 0, x);
    });
    // if (this.extend.buttons.view) {
    //     this.extend.buttons.view.forEach((x) => {
    //         //通过按钮的Index属性，放到指定的位置
    //         this.buttons.splice(x.index == undefined ? this.buttons.length : x.index, 0, x);
    //     })
    // }
  },
  initBoxButtons() {
    //初始化ViewGirdWith弹出框/明细Table按钮
    let path = this.$route.path;
    //通过DishSingle获取User所对应DishSingle需要显示的按钮
    let permissionButtons = this.permission.getButtons(
      path,
      null,
      this.extend.tableAction,
      this.table.name
    );
    if (permissionButtons) {
      //2020.03.31添加深拷贝按钮组
      permissionButtons.forEach((p) => {
        let _obj = {};
        for (const key in p) {
          _obj[key] = p[key];
        }
        this.buttons.push(_obj);
      });
      // this.buttons.push(...permissionButtons);
    }
    if (!this.extend) {
      this.extend = {};
    }
    if (!this.extend.buttons) {
      this.extend.buttons = {};
    }
    //Query界面扩展按钮(扩展按钮可自行通过SetUp按钮的Index属性显示到具体位置)
    if (this.extend.buttons.view) {
      this.extendBtn(this.buttons, this.extend.buttons.view);
    }

    //弹出框按钮
    let boxButtons = [];

    let saveBtn = this.buttons.some((x) => {
      if (
        x.value &&
        (x.value.toLowerCase() == this.const.ADD.toLowerCase() ||
          x.value.toLowerCase() == this.const.EDIT.toLowerCase())
      )
        return true;
    });
    this.currentReadonly = !saveBtn;
    //从TableFormOperation按钮
    let detailGridButtons = {
      name: window.locales[window.localei18n.locale].Refresh,
      type: 'info',
      icon: 'el-icon-refresh',
      onClick() {
        //如果明细Table当前的状态为Add时，禁止刷新
        if (this.currentAction == this.const.ADD) {
          return;
        }
        this.refreshRow();
      }
    };

    let importExcel = this.buttons.some((x) => {
      if (x.value == this.const.IMPORT) return true;
    });
    //如果有导入Authority,则需要初始化导入Component
    if (importExcel) {
      this.upload.url = this.getUrl(this.const.IMPORT);
      //定义下载模板的文件名
      this.upload.template.fileName = this.table.cnName;
      //定义下载模板的Url路径
      this.upload.template.url =
        this.http.ipAddress + this.getUrl(this.const.DOWNLOADTEMPLATE, true);
    }

    // disabled
    //如果当前Role_Id没有Edit或Add功能，View明细时字段SetUp全部ReadOnly
    //只有明细Table，将明细Table也SetUp为不可能Edit，并且不显示添加行、Del行
    if (!saveBtn) {
      this.editFormOptions.forEach((row) => {
        row.forEach((x) => {
          x.disabled = true;
        });
      });
      //没有新增EditAuthority的，弹出框都SetUp为ReadOnly
      this.detail.columns.forEach((column) => {
        if (column.hasOwnProperty('edit')) {
          column.readonly = true;
          // row['edit'] = false;
        }
      });
      //弹出框扩展按钮
      this.extendBtn(boxButtons, this.extend.buttons.box);
      //弹出弹框按钮(2020.04.21),没有Edit或AddAuthority时，也可以通过buttons属性添加Customize弹出框按钮
      this.boxButtons.push(...boxButtons);
      this.detailOptions.buttons.push(detailGridButtons);
      this.detailOptions.buttons.forEach((button) => {
        if (!button.hasOwnProperty('hidden')) {
          button.hidden = false;
        }
      });
      //弹出框扩展明细Table按钮
      this.extendBtn(this.detailOptions.buttons, this.extend.buttons.detail);

      return boxButtons;
    }

    this.detailOptions.edit = true;
    boxButtons.push(
      ...[
        {
          name: window.locales[window.localei18n.locale].Save,
          icon: 'el-icon-check',
          type: 'danger',
          disabled: false,
          value: 'save',
          onClick() {
            this.save();
          }
        }
        // {
        //   name: '重 置',
        //   icon: 'el-icon-refresh-right',
        //   type: 'primary',
        //   disabled: false,
        //   onClick() {
        //     this.resetEdit();
        //   }
        // }
      ]
    );
    //从TableFormOperation按钮
    this.detailOptions.buttons.push(
      ...[
        {
          name: window.locales[window.localei18n.locale].AddRow,
          icon: 'el-icon-plus',
          type: 'primary',
          hidden: false,
          plain: true,
          onClick() {
            this.addRow();
          }
        },
        {
          type: 'danger',
          plain: true,
          name: window.locales[window.localei18n.locale].Delete,
          hidden: false,
          icon: 'el-icon-delete',
          onClick() {
            this.delRow();
          }
        },
        //2022.01.08增加明细TableImportExport功能
        //注意需要重写后台明细Table接口的导入With下载模板、Export的Authority,Sys_DictionaryListController.cs/SellOrderListController.cs
        {
          type: 'danger',
          plain: true,
          name: window.locales[window.localei18n.locale].Import,
          value: 'import',
          hidden: false,
          icon: 'el-icon-upload2',
          onClick() {
            this.upload.url = `${this.http.ipAddress}api/${this.detail.table}/${this.const.IMPORT}?table=1`;
            this.upload.template.url = `${this.http.ipAddress}api/${this.detail.table}/${this.const.DOWNLOADTEMPLATE}`;
            //定义下载模板的文件名
            this.upload.template.fileName = this.detail.cnName;
            this.upload.excel = true;
          }
        },
        {
          type: 'danger',
          plain: true,
          name: 'Export',
          value: 'export',
          icon: 'el-icon-download',
          hidden: false,
          onClick() {
            this.export(true);
          }
        }
      ]
    );
    this.detailOptions.buttons.forEach((button) => {
      if (button.hasOwnProperty('hidden')) {
        button.hidden = false;
      }
    });
    //弹出框扩展按钮
    this.extendBtn(boxButtons, this.extend.buttons.box);

    //弹出框扩展明细Table按钮
    this.detailOptions.buttons.push(detailGridButtons);
    this.extendBtn(this.detailOptions.buttons, this.extend.buttons.detail);

    //弹出弹框按钮
    this.boxButtons.push(...boxButtons);
  },
  onClick(click) {
    click.apply(this);
  },
  changeDropdown(btnName, v1) {
    let button = this.buttons.filter((x) => {
      return x.name == btnName;
    });
    if (button && button.length > 0) {
      button[0].onClick.apply(this);
    }
  },
  emptyValue(value) {
    if (typeof value == 'string' && value.trim() === '') {
      return true;
    }
    if (value instanceof Array && !value.length) {
      return true;
    }
    return value === null || value === undefined || value === '';
  },
  getSearchParameters() {
    //获取Query参数
    // 2020.09.11增加固定QueryForm,如果SetUp固定了QueryForm，点击Query时，不再关闭
    if (!this.fiexdSearchForm) {
      this.searchBoxShow = false;
    }

    let query = { wheres: [] };
    for (const key in this.searchFormFields) {
      let value = this.searchFormFields[key];
      if (this.emptyValue(value)) continue;

      if (typeof value == 'number') {
        value = value + '';
      }
      let displayType = this.getSearchItem(key);

      //联级只保留选中Node的最后一个值
      if (displayType == 'cascader') {
        //Query下面所有的子Node，如：选中的是父Node，应该Query下面所有的NodeData--待完
        value = value.length ? value[value.length - 1] + '' : '';
      }
      //2021.05.02增加区间Query
      if (
        typeof value == 'string' ||
        ['date', 'datetime', 'range'].indexOf(displayType) == -1
      ) {
        query.wheres.push({
          name: key,
          value:
            typeof value == 'string' ? (value + '').trim() : value.join(','),
          displayType: displayType
        });
        continue;
      }
      for (let index = 0; index < value.length; index++) {
        if (!this.emptyValue(value[index])) {
          query.wheres.push({
            name: key,
            value: (value[index] + '').trim(),
            displayType: (() => {
              if (['date', 'datetime', 'range'].indexOf(displayType) != -1) {
                return index ? 'lessorequal' : 'thanorequal';
              }
              return displayType;
            })()
          });
        }
      }
    }
    return query;
  },
  search() {
    //Query
    // let query = this.getSearchParameters();
    // this.$refs.table.load(query, true);
    this.$refs.table.load(null, true);
  },
  loadTableBefore(param, callBack) {
    //Query前SetUpQuery条件及分页信息
    let query = this.getSearchParameters();
    if (query) {
      param = Object.assign(param, query);
    }

    if (this.$route.query.viewflow && this.$route.query.id) {
      param.wheres.push({
        name: this.table.key,
        value: this.$route.query.id
      });
    }
    // if (this.isViewFlow() && data && data.length) {
    //   let query = JSON.parse(JSON.stringify(this.$route.query));
    //   query.viewflow = 0;
    //   this.$router.replace({ path: this.$route.path, query: query });
    //   this.$nextTick(() => {
    //     this.getWorkFlowSteps(data[0]);
    //   });
    // }
    let status = this.searchBefore(param);
    callBack(status);
  },

  loadTableAfter(data, callBack, result) {
    //Query后
    //2020.10.30增加Query后返回所有的Query信息
    let status = this.searchAfter(data, result);
    callBack(status);
    //自动弹出框Approval详情
  },
  loadDetailTableBefore(param, callBack,data) {
    //明细Query前
    //Add时禁止Load明细
    if (this.currentAction == this.const.ADD) {
      callBack(false);
      return false;
    }
    let status = this.searchDetailBefore(param,data);
    callBack(status);
  },
  loadDetailTableAfter(data, callBack,result) {
    //明细Query后
    let status = this.searchDetailAfter(data,result);
    callBack(status);
  },
  getSearchItem(field) {
    //获取Query的参数
    let data;
    for (let index = 0; index < this.searchFormOptions.length; index++) {
      if (data) return data.type;
      const item = this.searchFormOptions[index];
      data = item.find((x) => {
        return x.field == field;
      });
    }

    return (data || {}).type;
  },
  resetSearch() {
    //重置Query对象
    this.resetSearchForm();
    //2020.10.17增加重置后方法
    this.resetSearchFormAfter && this.resetSearchFormAfter();
  },
  resetEdit() {
    //重置Edit的Data
    let isEdit = this.currentAction != this.const.ADD;
    //重置之前
    if (!this[isEdit ? 'resetUpdateFormBefore' : 'resetAddFormBefore']()) {
      return;
    }
    let objKey = {};
    //Edit状态下,不需要重置主键,CreateDateCreator
    if (isEdit) {
      objKey[this.table.key] = this.editFormFields[this.table.key];
    }
    this.resetEditForm(objKey);
    //重置之后

    if (!this[isEdit ? 'resetUpdateFormAfter' : 'resetAddFormAfter']()) {
      return;
    }
  },
  resetSearchForm(sourceObj) {
    //重置QueryTable
    this.resetForm('searchForm', sourceObj);
  },
  resetEditForm(sourceObj) {
    if (this.hasDetail && this.$refs.detail) {
      // this.$refs.detail.rowData.splice(0);
      this.$refs.detail.reset();
    }
    this.resetForm('form', sourceObj);
    if (this.$refs.form && this.$refs.form.$refs.volform) {
      setTimeout(() => {
        this.$refs.form.$refs.volform.clearValidate();
      }, 100);
    }
  },
  getKeyValueType(formData, isEditForm) {
    try {
      let keyLeft = (isEditForm ? 'e' : 's') + '_b_';
      formData.forEach((item) => {
        item.forEach((x) => {
          if (this.keyValueType.hasOwnProperty(keyLeft + x.field)) {
            return true;
          }
          let data;
          if (x.type == 'switch') {
            this.keyValueType[x.field] = 1;
          } else if (x.bind && x.bind.data) {
            data = x.bind.data;
          } else if (x.data) {
            if (x.data instanceof Array) {
              data = x.data;
            } else if (x.data.data && x.data.data instanceof Array) {
              data = x.data.data;
            }
          }
          if (
            data &&
            data.length > 0
          ) {
            if (!this.keyValueType.hasOwnProperty(x.field)){
              this.keyValueType[x.field] = data[0].key;
            }
            if (!this.keyValueType.hasOwnProperty(keyLeft + x.field)){
              this.keyValueType[keyLeft + x.field] = x.type;
            }
          }
        });
      });
    } catch (error) {
      console.log(error.message);
    }
  },
  resetForm(formName, sourceObj) {
    //   return;
    //重置FormData
    if (this.$refs[formName]) {
      this.$refs[formName].reset();
    }

    if (!sourceObj) return;
    let form, keyLeft;
    if (formName == 'searchForm') {
      form = this.searchFormFields;
      keyLeft = 's' + '_b_';
    } else {
      form = this.editFormFields;
      keyLeft = 'e' + '_b_';
    }
    //获取Data源的dataAppType，否则如果Data源data的key是数字，重置的值是字符串就None法绑定值
    if (!this.keyValueType._dinit) {
      this.getKeyValueType(this.editFormOptions, true);
      this.getKeyValueType(this.searchFormOptions, false);
      this.keyValueType._dinit = true;
    }
    var _cascaderParentTree;
    for (const key in form) {
      if (sourceObj.hasOwnProperty(key)) {
        let newVal = sourceObj[key];
        let kv_type = this.keyValueType[keyLeft + key];

        if (
          kv_type == 'selectList' ||
          kv_type == 'checkbox' ||
          kv_type == 'cascader' ||
          kv_type == 'treeSelect'
        ) {
          // 2020.05.31增加iviewComponentCascader
          // 2020.11.01增加iviewComponentCascaderForm重置时Query所有的父Node
          if (kv_type == 'cascader' || kv_type == 'treeSelect') {
            var treeDic = this.dicKeys.find((dic) => {
              return dic.fileds && dic.fileds.indexOf(key) != -1;
            });

            if (treeDic && treeDic.orginData && treeDic.orginData.length) {
              let keyIsNum = typeof treeDic.orginData[0].id == 'number';

              if (kv_type == 'cascader') {
                newVal = keyIsNum ? newVal * 1 || 0 : newVal + '';
                if (kv_type == 'cascader') {
                  _cascaderParentTree = this.base.getTreeAllParent(
                    newVal,
                    treeDic.orginData
                  );
                  if (_cascaderParentTree) {
                    newVal = _cascaderParentTree.map((x) => {
                      return x.id;
                    });
                  }
                }
              } else {
                if (newVal === null || newVal === undefined) {
                  newVal = [];
                } else if (typeof newVal == 'string') {
                  newVal = newVal.split(',');
                }
                if (keyIsNum) {
                  if (Array.isArray(newVal)) {
                    newVal = newVal.map((x) => {
                      return x * 1 || 0;
                    });
                  }
                } else if (typeof newVal == 'number') {
                  newVal = [newVal + ''];
                }
              }
            } else {
              newVal = [newVal];
            }
          }
          else if (typeof newVal=='number') {
            newVal= [newVal+''];
            this.$message.error(`多选时Data库字段[${key}]必须是字符串AppType`);
          }
          else if (
            newVal != '' &&
            newVal != undefined &&
            typeof newVal == 'string'
          ) {
            newVal = newVal.split(',');
          } else{ //if (kv_type == 'checkbox') {
            newVal = [];
          }
        } else if (
          this.keyValueType.hasOwnProperty(key) &&
          typeof this.keyValueType[key] == 'number' &&
          newVal * 1 == newVal
        ) {
          newVal = newVal * 1;
        } else {
          if (newVal == null || newVal == undefined) {
            newVal = '';
          } else if (this.numberFields.indexOf(key) != -1) {
            newVal = newVal * 1 || 0;
          } else {
            newVal += '';
          }
        }
        if (newVal instanceof Array) {
          if (form[key]) {
            form[key] = [];
          }
          form[key] = newVal;
        } else {
          form[key] = newVal;
        }
      } else {
        form[key] = form[key] instanceof Array ? [] : '';
      }
    }
  },
  onBtnClick(param) {
    this[param.method](param.data);
  },
  refresh() {
    //刷新
    this.search();
    // this.$refs.table.load();
  },
  saveBefore(formData) {
    return true;
  },
  saveAfter(formData, result) {
    return true;
  },
  save() {
    //新增或Edit时保存
    // if (!this.$refs.form.validate()) return;
    this.$refs.form.validate((result) => {
      if (result) {
        this.saveExecute();
      }
    });
  },
  async saveExecute() {
    let editFormFields = {};
    //上传文件以逗号隔开
    for (const key in this.editFormFields) {
      if (
        this.uploadfiled &&
        this.uploadfiled.length > 0 &&
        this.uploadfiled.indexOf(key) != -1 &&
        this.editFormFields[key] instanceof Array
      ) {
        let allPath = this.editFormFields[key].map((x) => {
          return x.path;
        });
        editFormFields[key] = allPath.join(',');
      } else if (typeof this.editFormFields[key] == 'function') {
        try {
          editFormFields[key] = this.editFormFields[key]();
        } catch (error) { }
      } else {
        //2021.05.30修复下拉框清除Data后后台不能保存的问题
        if (
          this.editFormFields[key] === undefined &&
          this.dicKeys.some((x) => {
            return x.fileds && x.fileds.indexOf(key) != -1;
          })
        ) {
          editFormFields[key] = null;
        } else {
          editFormFields[key] = this.editFormFields[key];
        }
      }
    }
    //将数组转换成string
    //2020.11.01增加级联处理
    for (const key in editFormFields) {
      if (editFormFields[key] instanceof Array) {
        var iscascader = this.dicKeys.some((x) => {
          return (
            x.type == 'cascader'&&x.e_type!="treeSelect" && x.fileds && x.fileds.indexOf(key) != -1
          );
        });
        if (iscascader && editFormFields[key].length) {
          editFormFields[key] =
            editFormFields[key][editFormFields[key].length - 1];
        } else {
          editFormFields[key] = editFormFields[key].join(',');
        }
      }
    }

    let formData = {
      mainData: editFormFields,
      detailData: null,
      delKeys: null
    };

    //获取明细Data(前台Data明细未做校验，待完.后台已经校验)
    if (this.hasDetail) {
      formData.detailData = this.$refs.detail.rowData;
      let _fields = this.detail.columns
        .filter((c) => {
          return (
            c.type == 'selectList' || (c.edit && c.edit.type == 'selectList')
          );
        })
        .map((c) => {
          return c.field;
        });
      //2022.06.20增加保存时对明细Table下拉框多选的判断
      if (_fields.length) {
        formData.detailData = JSON.parse(JSON.stringify(formData.detailData));
        formData.detailData.forEach((row) => {
          for (let index = 0; index < _fields.length; index++) {
            const _field = _fields[index];
            if (Array.isArray(row[_field])) {
              row[_field] = row[_field].join(',');
            }
          }
        });
      }
    }
    if (this.detailOptions.delKeys.length > 0) {
      formData.delKeys = this.detailOptions.delKeys;
    }
    //保存前拦截
    let _currentIsAdd = this.currentAction == this.const.ADD;
    if (_currentIsAdd) {
      //2020.12.06增加Add前异步处理方法
      //2021.08.16修复异步语法写错的问题
      if (!this.addBefore(formData) || !(await this.addBeforeAsync(formData)))
        return;
    } else {
      //2020.12.06增加修改前异步处理方法
      if (
        !this.updateBefore(formData) ||
        !(await this.updateBeforeAsync(formData))
      )
        return;
    }
    let url = this.getUrl(this.currentAction);
    this.http.post(url, formData, true).then((x) => {
      //保存后
      if (_currentIsAdd) {
        if (!this.addAfter(x)) return;
        //连续添加
        if (this.continueAdd && x.status) {
          this.$success(x.message);
          //Add
          this.currentAction = this.const.ADD;
          //2023.07.23增加连续添加后方法
          let _formFields;
          if (this.continueAddAfter) {
            _formFields=JSON.parse(JSON.stringify(this.editFormFields))
          }
          this.currentRow = {};
          this.resetAdd();
          this.refresh();
          //2023.07.23增加连续添加后方法
          this.continueAddAfter&&this.continueAddAfter(_formFields,formData,x);
          return;
        }
      } else {
        if (!this.updateAfter(x)) return;
      }
      if (!x.status) return this.$error(x.message);
      this.$success(x.message || 'OperationSuccess');
      //如果保存Success后需要关闭Edit框，直接返回不处理后面
      if (this.boxOptions.saveClose) {
        this.boxModel = false;
        //2020.12.27如果是Edit保存后不重置分页页数，刷新Page时还是显示当前页的Data
        this.$refs.table.load(null, _currentIsAdd);
        //this.refresh();
        return;
      }
      let resultRow;
      if (typeof x.data == 'string' && x.data != '') {
        resultRow = JSON.parse(x.data);
      } else {
        resultRow = x.data;
      }

      if (this.currentAction == this.const.ADD) {
        //  this.currentRow=x.data;
        this.editFormFields[this.table.key] = '';
        this.currentAction = this.const.EDIT;
        this.currentRow = resultRow.data;
      }
      this.resetEditForm(resultRow.data);
      // console.log(resultRow);
      if (this.hasDetail) {
        this.detailOptions.delKeys = [];
        if (resultRow.list) {
          this.$refs.detail.rowData.push(...resultRow.list);
        }
      }
      this.$refs.table.load(null, _currentIsAdd);
      // this.refresh();
    });
  },
  del(rows) {
    if (rows) {
      if (!(rows instanceof Array)) {
        rows = [rows];
      }
    } else {
      rows = this.$refs.table.getSelected();
    }
    //DelData

    if (!rows || rows.length == 0) return this.$error('请选择要Del的行!');
    let delKeys = rows.map((x) => {
      return x[this.table.key];
    });
    if (!delKeys || delKeys.length == 0)
      return this.$error('没有获取要Del的行Data!');
    //Del前
    if (!this.delBefore(delKeys, rows)) {
      return;
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
      let url = this.getUrl(this.const.DEL);
      this.http.post(url, delKeys, '正在DelData....').then((x) => {
        if (!x.status) return this.$error(x.message);
        this.$success(x.message);
        //Del后
        if (!this.delAfter(x)) {
          return;
        }
        this.refresh();
      });
    });
  },
  async modelOpenBeforeAsync(row) {
    return true;
  },
  async initBox() {
    //2022.01.08增加Add时隐藏明细TableExport功能
    this.detailOptions.buttons.forEach((x) => {
      if (x.value == 'export') {
        x.hidden = this.currentAction == 'Add';
      }
    });
    //初始化Add、Edit的弹出框
    if (!(await this.modelOpenBeforeAsync(this.currentRow))) return false;
    this.modelOpenBefore(this.currentRow);
    if (!this.boxInit) {
      this.boxInit = true;
      this.boxModel = true;
      // this.detailUrl = this.url;
    }
    return true;
  },
  setEditForm(row) {
    // if (this.remoteColumns.length == 0 || !rows || rows.length == 0) return;
    let remoteColumns = this.$refs.table.remoteColumns;
    remoteColumns.forEach((column) => {
      this.editFormOptions.forEach((option) => {
        option.forEach((x) => {
          if (x.field == column.field) {
            x.data.data = Object.assign([], x.data, column.bind.data);
          }
        });
      });
    });
    this.editFormFields;
    //重置EditFormData
    this.editFormFields[this.table.key] = row[this.table.key];

    this.resetEditForm(row);
    this.currentAction = this.const.EDIT;
    this.boxModel = true;
  },
  async linkData(row, column) {
    this.boxOptions.title = this.table.cnName + '(Edit)';
    //点击tableSingle元格快捷链接显示EditData
    this.currentAction = this.const.EDIT;
    this.currentRow = row;
    if (!(await this.initBox())) return;
    this.resetDetailTable(row);
    this.setEditForm(row);
    this.setContinueAdd(false);
    //SetUpEnableQueryForm的默认key/value
    this.getRemoteFormDefaultKeyValue();
    //点击Edit按钮弹出框后，可以在此处写逻辑，如，从后台获取Data
    this.modelOpenProcess(row);
  },
  setContinueAdd(isAdd) {
    if (!this.continueAdd) return;
    var _button = this.boxButtons.find((x) => {
      return x.value == 'save';
    });
    if (_button) {
      _button.name = isAdd ? this.continueAddName : window.locales[window.localei18n.locale].Save;
    }
  },
  resetAdd() {
    if (this.hasDetail) {
      this.$refs.detail &&
        //  this.$refs.detail.rowData &&
        this.$refs.detail.reset();
    }
    let obj = {};
    //如果有switch标签，默认都SetUp为否
    this.editFormOptions.forEach((x) => {
      x.forEach((item) => {
        if (item.type == 'switch') {
          obj[item.field] = 0;
        }
      });
    });
    this.resetEditForm(obj);
  },
  async add() {
    this.boxOptions.title = this.table.cnName + '(Add)';
    //Add
    this.currentAction = this.const.ADD;
    this.currentRow = {};
    if (!(await this.initBox())) return;

    this.resetAdd();
    this.setContinueAdd(true);
    //  this.resetEditForm();
    this.boxModel = true;
    //点击Add按钮弹出框后，可以在此处写逻辑，如，从后台获取Data
    this.modelOpenProcess();
    // this.modelOpenAfter();
  },
  async edit(rows) {
    this.boxOptions.title = 'Edit';
    //Edit
    this.currentAction = this.const.EDIT;
    if (rows) {
      if (!(rows instanceof Array)) {
        rows = [rows];
      }
    } else {
      rows = this.$refs.table.getSelected();
    }
    if (rows.length == 0) {
      return this.$error('请选择要Edit的行!');
    }
    if (rows.length != 1) {
      return this.$error('只能选择一行Data进行Edit!');
    }
    //记录当前Edit的行
    this.currentRow = rows[0];
    //初始化弹出框
    if (!(await this.initBox())) return;
    this.setContinueAdd(false);
    //重置Form
    this.resetDetailTable();

    //SetUp当前的Data到Form上
    this.setEditForm(rows[0]);
    //SetUpEnableQueryForm的默认key/value
    this.getRemoteFormDefaultKeyValue();
    //点击Edit按钮弹出框后，可以在此处写逻辑，如，从后台获取Data
    this.modelOpenProcess(rows[0]);
    // this.modelOpenAfter(rows[0]);
  },
  getRemoteFormDefaultKeyValue() {
    //SetUpFormEnableData源的默认key.value
    if (this.currentAction != this.const.EDIT || this.remoteKeys.length == 0)
      return;
    this.editFormOptions.forEach((x, xIndex) => {
      x.forEach((item, yIndex) => {
        if (item.remote) {
          let column = this.columns.find((x) => {
            return x.bind && x.bind.key == item.dataKey;
          });
          if (!column) return;
          let key = this.currentRow[item.field];
          let obj = column.bind.data.find((x) => {
            return x.key == key;
          });
          // obj ? obj.value : key如果没有查到Data源，直接使用原Data
          item.data = [{ key: key, value: obj ? obj.value : key }];
          this.editFormOptions[xIndex].splice(yIndex, 1, item);
          // this.$set(item, 'data', [{ key: key + '', value: obj.value }])
          //  item.data = [{ key: key + '', value: obj.value }];
        }
      });
    });
  },
  modelOpenProcess(row) {
    this.$nextTick(() => {
      this.modelOpenAfter(row);
    });
    return;
    // if (!this.$refs.form) {
    //     let timeOut = setTimeout(x => {
    //         this.modelOpenAfter(row);
    //     }, 500)
    //     return;
    // }
    // this.modelOpenAfter(row);
  },
  import() {
    //导入(上传excel),弹出导入ComponentUploadExcel.vue
    this.upload.excel = true;
    this.$refs.upload_excel && this.$refs.upload_excel.reset();
  },
  download(url, fileName) {
    //下载Export的文件
    let xmlResquest = new XMLHttpRequest();
    xmlResquest.open('GET', url, true);
    xmlResquest.setRequestHeader('Content-type', 'application/json');
    xmlResquest.setRequestHeader(
      'Authorization',
      this.$store.getters.getToken()
    );
    let elink = this.$refs.export;
    xmlResquest.responseType = 'blob';
    xmlResquest.onload = function (oEvent) {
      if (xmlResquest.status != 200) {
        this.$error('下载文件出错了..');
        return;
      }
      let content = xmlResquest.response;
      //  let elink = this.$refs.export;//document.createElement("a");
      elink.download = fileName; //+".xlsx";
      // elink.style.display = "none";
      let blob = new Blob([content]);
      elink.href = URL.createObjectURL(blob);
      //  document.body.appendChild(elink);
      elink.click();
      //  document.body.removeChild(elink);
    };
    xmlResquest.send();
  },
  getFileName(isDetail) {
    //2021.01.08增加Exportexcel时Customize文件名
    if (isDetail) {
      return this.detail.cnName + '.xlsx';
    }
    return this.table.cnName + '.xlsx';
  },
  export(isDetail) {
    //Export
    let url, query, param;
    if (isDetail) {
      //明细TableExport时如果是Add状态，禁止Export
      if (this.currentAction == 'Add') {
        return;
      }
      url = `api/${this.detail.table}/${this.const.EXPORT}`;
      param = {
        wheres: [
          { name: this.table.key, value: this.editFormFields[this.table.key] }
        ]
      };
    } else {
      //主TableExport
      url = this.getUrl(this.const.EXPORT);
      query = this.getSearchParameters();
      param = { order: this.pagination.order, wheres: query.wheres || [] };
    }
    //2020.06.25增加Export前处理
    if (!isDetail && !this.exportBefore(param)) {
      return;
    }

    if (param.wheres && typeof param.wheres == 'object') {
      param.wheres = JSON.stringify(param.wheres);
    }
    let $http = this.http;
    //2022.09.26增加CustomizeExport文件名
    let fileName = this.downloadFileName || this.getFileName(isDetail);
    //2021.01.08优化Export功能
    $http
      .post(url, param, '正在ExportData....', { responseType: 'blob' })
      .then((content) => {
        const blob = new Blob([content]);
        if ('download' in document.createElement('a')) {
          // 非IE下载
          const elink = document.createElement('a');
          elink.download = fileName;
          elink.style.display = 'none';
          elink.href = URL.createObjectURL(blob);
          document.body.appendChild(elink);
          elink.click();
          URL.revokeObjectURL(elink.href);
          document.body.removeChild(elink);
        } else {
          // IE10+下载
          navigator.msSaveBlob(blob, fileName);
        }
      });
    //.then(result => {
    // if (!result.status) {
    //   return this.$error(result.message);
    // }
    // let path = this.getUrl(this.const.DOWNLOAD);
    // path = path[0] == "/" ? path.substring(1) : path;
    // this.download(
    //   $http.ipAddress + path + "?path=" + result.data,
    //   this.table.cnName + ".xlsx" // filePath
    // );
    ///  window.open($http.ipAddress + path + "?fileName=" + filePath, "_self");
    // });
  },
  getSelectRows() {
    //获取选中的行
    return this.$refs.table.getSelected();
  },
  getDetailSelectRows() {
    //或获取明细选中的行
    if (!this.$refs.detail) {
      return [];
    }
    return this.$refs.detail.getSelected();
  },
  audit() {
    //审核弹出框
    let rows = this.$refs.table.getSelected();
    if (rows.length == 0) return this.$error('请选择要审核的行!');
    let auditStatus = Object.keys(rows[0]).find(x => { return x.toLowerCase() === 'auditstatus' });
    if (!auditStatus) {
      return this.$message.error(`Table必须包括审核字段【AuditStatus】,并且是intAppType`)
    }
    // let checkStatus = rows.every((x) => {
    //   return this.$global.audit.status.some(c => { return c === x[auditStatus] || !x[auditStatus] })
    // });
    // if (!checkStatus) return this.$error('只能选择待Approval或审核中的Data!');
    this.$refs.audit.open(rows);
  },
  saveAudit(params, rows, callback) {

    //保存审核
    let keys = rows.map(x => { return x[this.table.key] });
    if (!this.auditBefore(keys, rows)) {
      return;
    }
    let url = `${this.getUrl(this.const.AUDIT)}?auditReason=${params.reason}&auditStatus=${params.value}`
    this.http.post(url, keys, '审核中....').then((x) => {
      if (!this.auditAfter(x, keys)) {
        return;
      }
      if (!x.status) return this.$error(x.message);

      callback && callback(x);
      this.$success(x.message);
      this.refresh();
    });
  },
  viewModelCancel() {
    //ViewTable结构
    this.viewModel = false;
  },
  initFormOptions(formOptions, keys, formFields, isEdit) {
    //初始化Query、Edit对象的下拉框Data源、ImageUpload链接Address
    //let defaultOption = { key: "", value: "请选择" };
    //有上传的字段
    //2020.05.03新增
    //EditData源的AppType
    formOptions.forEach((item) => {
      item.forEach((d) => {
        if (d.type == 'number') {
          //2022.08.22优化FormAppType为number时的默认值
          if (formFields[d.field] === '') {
            formFields[d.field] = undefined;
          }
          this.numberFields.push(d.field);
        }
        if (
          d.type == 'img' ||
          d.type == 'excel' ||
          d.type == 'file' ||
          d.columnType == 'img'
        ) {
          d.url = this.http.ipAddress + 'api' + this.table.url + 'Upload';
          this.uploadfiled.push(d.field);
        }
        if (!d.dataKey) return true;
        //2022.02.20强制开启联级可以选择某个Node
        if (d.type == 'cascader' && !d.hasOwnProperty('changeOnSelect')) {
          //强制开启联级可以选择某个Node
          d.changeOnSelect = true;
        }
        //开启Enable搜索
        if (d.remote) {
          this.remoteKeys.push(d.dataKey);
          d.data = []; //{ dicNo: d.dataKey, data: [] };
          return true;
        }
        //2020.05.03增加EditForm对checkbox的支持
        if (d.type == 'checkbox' && !(formFields[d.field] instanceof Array)) {
          formFields[d.field] = [];
        }
        if (keys.indexOf(d.dataKey) == -1) {
          //2020.05.03增加记录Edit字段的Data源AppType

          keys.push(d.dataKey);
          //2020.05.03修复QueryFormWithEditFormtypeAppType变成强一致性的问题
          //this.dicKeys.push({ dicNo: d.dataKey, data: [], type: d.type });
          //  2020.11.01增加iviewComponentCascaderData源存储
          let _dic = {
            dicNo: d.dataKey,
            data: [],
            fileds: [d.field],
            orginData: []
          };
          if (d.type == 'cascader') {
            _dic.type = 'cascader';
          }
          if (isEdit) {
            _dic['e_type'] = d.type;
          }
          this.dicKeys.push(_dic);
        } else if (d.type == 'cascader') {
          this.dicKeys.forEach((x) => {
            if (x.dicNo == d.dataKey) {
              x.type = 'cascader';
              x.fileds.push(d.field);
            }
          });
        }
        if (d.type != 'cascader') {
          //2020.01.30移除内部FormformOptionsData源Configuration格式data.data，所有参数改为WithComponentapi格式相同
          Object.assign(
            d,
            this.dicKeys.filter((f) => {
              return f.dicNo == d.dataKey;
            })[0],
            { type: d.type }
          );
        }
      });
    });
  },
  //初始tableWith明细Table的Data源指向dicKeys对象，再去后台LoadData源
  initColumns(scoure, dicKeys, keys) {
    if (!scoure || !(scoure instanceof Array)) return;
    scoure.forEach((item) => {
      if (!item.bind || (item.bind.data && item.bind.data.length > 0))
        return true;
      let key = item.bind.key || item.bind.dicNo;
      if (this.remoteKeys.indexOf(key) != -1) {
        item.bind.remote = true;
        return true;
      }
      if (this.hasKeyField.indexOf(item.field) == -1) {
        this.hasKeyField.push(item.field);
      }
      var dic = dicKeys.filter((x) => {
        return x.dicNo == key;
      });
      if (!dic || dic.length == 0) {
        dicKeys.push({ dicNo: key, data: [] });
        dic = [dicKeys[dicKeys.length - 1]];
        keys.push(key);
      }
      //2020.11.01增加级联处理
      if (dic[0].type == 'cascader' || dic[0].type == 'treeSelect') {
        item.bind = { data: dic[0].orginData, type: 'select', key: key };
      } else {
        item.bind = dic[0];
      }
      //2020.05.03优化tableData源checkboxWithselectAppType从Edit列中选取
      item.bind.type = item.bind.e_type || 'string';
    });
  },
  bindOptions(dic) {
    //绑定下拉框的Data源
    //绑定后台的DictionaryData
    dic.forEach((d) => {
      if (d.data.length >= (this.select2Count || 500)) {
        if (
          !this.dicKeys.some((x) => {
            return (
              x.dicNo == d.dicNo &&
              (x.type == 'cascader' || x.type == 'treeSelect')
            );
          })
        ) {
          d.data.forEach((item) => {
            item.label = item.value;
            item.value = item.key;
          });
        }
      }
      this.dicKeys.forEach((x) => {
        if (x.dicNo != d.dicNo) return true;
        //2020.10.26增加级联DataSourceBinding处理
        if (x.type == 'cascader' || x.type == 'treeSelect') {
          // x.data=d.data;
          //生成tree结构
          let _data = JSON.parse(JSON.stringify(d.data));
          //2022.04.04增加级联DictionaryData源刷新后table没有变化的问题
          this.columns.forEach((column) => {
            if (column.bind && column.bind.key == d.dicNo) {
              column.bind.data = d.data;
            }
          });
          let arr = this.base.convertTree(_data, (node, data, isRoot) => {
            if (!node.inited) {
              node.inited = true;
              node.label = node.value;
              node.value = node.key;
            }
          });
          x.data.push(...arr);
          x.orginData.push(...d.data);
          //2021.10.17修复Query级联不能绑定Data源的问题
          this.searchFormOptions.forEach((searhcOption) => {
            searhcOption.forEach((_option) => {
              if (_option.type == 'cascader' && _option.dataKey == x.dicNo) {
                _option.data = arr;
                _option.orginData = d.data;
              }
            });
          });
          //2021.10.17修复级联不能二级刷新的问题
          this.editFormOptions.forEach((editOption) => {
            editOption.forEach((_option) => {
              if (
                (_option.type == 'cascader' || _option.type == 'treeSelect') &&
                _option.dataKey == x.dicNo
              ) {
                _option.data = arr;
                _option.orginData = d.data;
              }
            });
          });
        } else if (d.data.length > 0 && !d.data[0].hasOwnProperty('key')) {
          let source = d.data,
            newSource = new Array(source.length);
          for (let index = 0; index < source.length; index++) {
            newSource[index] = {
              //默认从DictionaryData读出来的key都是stringAppType,但如果Data从sql中Query的可能为非string,否是async-validator需要重置SetUp格式
              key: source['key'] + '', //source[index][x.config.valueField] + "",
              value: source['value'] //source[index][x.config.textField]
            };
          }

          x.data.push(...newSource);
        } else {
          //2020.06.06，如果是selectListData源使用的Customizesql并且key是数字，强制转换成字符串
          if (
            x.e_type == 'selectList' &&
            d.data.length > 0 &&
            typeof d.data[0].key == 'number'
          ) {
            d.data.forEach((c) => {
              c.key = c.key + '';
            });
          }
          x.data.push(...d.data);
        }
        if (
          this.singleSearch &&
          this.singleSearch.dataKey &&
          this.singleSearch.dataKey == x.dicNo
        ) {
          this.singleSearch.data.splice(0, 1, ...x.data);
        }
      });
    });
  },
  getUrl(action, ingorPrefix) {
    //是否忽略前缀/  获取Operation的url
    return (!ingorPrefix ? '/' : '') + 'api' + this.table.url + action;
  },
  initDicKeys() {
    //初始化DictionaryData
    let keys = [];
    //2022.04.17优化重新LoadData源
    this.dicKeys.forEach((item) => {
      item.data.splice(0);
      item.orginData && item.orginData.splice(0);
    });
    //this.dicKeys.splice(0);
    //初始化EditData源,默认为一个空数组，如果要求必填SetUptype=number/decimal的最小值
    this.initFormOptions(this.editFormOptions, keys, this.editFormFields, true);
    //初始化QueryData源,默认为一个空数组
    this.initFormOptions(
      this.searchFormOptions,
      keys,
      this.searchFormFields,
      false
    );
    //QueryDateSetUp为可选StartWith结果Date
    this.searchFormOptions.forEach((item) => {
      item.forEach((x) => {
        if (x.type == 'date' || x.type == 'datetime') x.range = true;
      });
    });
    //初始化datatableTableData源,默认为一个空数组,dicKeys为界面所有的DataDicNo
    this.initColumns(this.columns, this.dicKeys, keys);
    //2021.05.23默认开启QueryPage所有字段OrderNo,如果不需要OrderNo，在onInited遍历columnsSetUpsort=false
    //2021.09.25移除强制OrderNo功能
    // this.columns.forEach(x => {
    //   x.sort = x.render ? false : true;
    // })
    if (this.detailOptions && this.detailOptions.columns) {
      this.initColumns(this.detailOptions.columns, this.dicKeys, keys);
    }
    //初始化快速Query字段,默认使用CodeGenerationDeviceConfiguration的第一个Query字段
    if (this.searchFormOptions.length > 0) {
      this.singleSearch = {
        dataKey: this.searchFormOptions[0][0].dataKey,
        dicNo: this.searchFormOptions[0][0].dicNo,
        field: this.searchFormOptions[0][0].field,
        title: this.searchFormOptions[0][0].title,
        type: this.searchFormOptions[0][0].type,
        data: []
      };
      // this.singleSearch = this.searchFormOptions[0][0];
    }
    if (keys.length == 0) return;
    let $this = this;
    this.http.post('/api/Sys_Dictionary/GetVueDictionary', keys).then((dic) => {
      $this.bindOptions(dic);
      //2022.04.04增加字典Load完成方法
      $this.dicInited && $this.dicInited(dic);
    });
  },
  setFiexdColumn(columns, containerWidth) {
    //计算整个table的宽度，根据宽度决定Enable第一行显示的列为固定列
    //2021.09.21移除强制固定第一列
    // let columnsWidth = 0;
    // columns.forEach(x => {
    //   if (!x.hidden && x.width) {
    //     columnsWidth += x.width;
    //   }
    // });
    // //启用第一列为固定列
    // if (columnsWidth > containerWidth) {
    //   let firstColumn = columns.find(x => !x.hidden);
    //   if (firstColumn) {
    //     firstColumn.fixed = true;
    //   }
    // }
  },
  initBoxHeightWidth() {
    //初始化弹出框的高度With宽度
    let clientHeight = document.documentElement.clientHeight;
    //弹出框高度至少250px
    clientHeight = clientHeight < 250 ? 250 : clientHeight;
    let clientWidth = document.documentElement.clientWidth;
    if (
      this.editFormOptions.some((x) => {
        return x.some((item) => {
          return item.type == 'editor';
        });
      })
    ) {
      this.editor.uploadImgUrl = this.getUrl('upload');
      this.boxOptions.height = clientHeight * 0.8;
      this.boxOptions.width = clientWidth * 0.8;
    } else {
      if (this.boxOptions.height) {
        //如果高度With宽度超过了获取到的可见高宽度，则设为默认的90%高宽
        if (this.boxOptions.height > clientHeight * 0.8) {
          this.boxOptions.height = clientHeight * 0.8;
        }
      }
      if (this.boxOptions.width) {
        //如果高度With宽度超过了获取到的可见高宽度，则设为默认的90%高宽
        if (this.boxOptions.width > clientWidth * 0.8) {
          this.boxOptions.width = clientWidth * 0.8;
        }
      }
    }
    //计算整个table的宽度，根据宽度决定Enable第一行显示的列为固定列
    let maxTableWidth = clientWidth - 270;
    this.setFiexdColumn(this.columns, maxTableWidth);

    this.height = this.tableHeight || clientHeight - 206;
    this.url = this.getUrl(this.const.PAGE);
    //计算弹出框的高With宽度
    //如果有明细Table，高度With宽带SetUp为0.9/0.82
    if (this.detail.columns && this.detail.columns.length > 0) {
      this.hasDetail = true;
      clientWidth = clientWidth * 0.8;
      clientHeight = clientHeight * 0.85;
      if (!this.detailOptions.height) {
        this.detailOptions.height =
          clientHeight - this.editFormOptions.length * 36 - 234;
        this.detailOptions.height =
          this.detailOptions.height < 240 ? 240 : this.detailOptions.height;
      }

      this.detailOptions.columns = this.detail.columns;
      this.detailOptions.pagination.sortName = this.detail.sortName;
      this.detailOptions.cnName = this.detail.cnName;
      this.detailOptions.key = this.detail.key;
      this.detailOptions.url = this.getUrl('getDetailPage');
      //计算弹出框整个table的宽度，根据宽度决定Enable第一行显示的列为固定列
      this.setFiexdColumn(this.detail.columns, clientWidth);
    } else {
      let maxColumns = 1; //最大列数，根据列计算弹框的宽度
      this.editFormOptions.forEach((x) => {
        if (x.length > maxColumns) maxColumns = x.length;
      });
      let maxHeightRate = 0.7,
        maxWidthRate = 0.5;
      maxWidthRate = maxColumns / 10 + 0.3;
      maxHeightRate = (this.editFormOptions.length || 1) * 0.1 + 0.03;
      maxHeightRate = maxHeightRate > 0.9 ? 0.9 : maxHeightRate;
      clientWidth = clientWidth * maxWidthRate;
      clientHeight = clientHeight * maxHeightRate;
      // this.boxOptions.width = clientWidth * maxWidthRate;
      // this.boxOptions.height = clientHeight * maxHeightRate;
    }
    if (!this.boxOptions.height) {
      this.boxOptions.height = clientHeight + 10;
    }
    if (!this.boxOptions.width) {
      this.boxOptions.width = clientWidth + 30;
    }
    //2023.10.11隐藏分页时调整Form高度
    if (this.paginationHide) {
      this.height=this.height+37
    }
  },
  rowOnChange(row) {
    this.rowChange(row);
  },
  rowChange(row) {
    //选中行checkbox行Event
  },
  selectionOnChange(rows){
    this.selectionChange(rows);
  },
  selectionChange(rows){

  },
  rowOnClick({ row, column, event }) {
    this.rowClick({ row, column, event });
  },
  rowClick({ row, column, event }) {
    // 点击行Event(2020.11.07)
  },
  rowOnDbClick({ row, column, event }) {
    this.rowDbClick({ row, column, event });
  },
  rowDbClick({ row, column, event }) {
    // 双击击行Event(2021.05.23)
  },
  $error(message) {
    this.$message.error(message);
    // this.$message({
    //   type: 'error',
    //   content: message,
    //   duration: 5
    // });
  },
  $success(message) {
    this.$message.success(message);
  },
  setFiexdSearchForm(visiable) {
    //2020.09.011增加固定QueryForm功能,visiable=true默认将QueryForm展开
    this.fiexdSearchForm = true;
    let refreshBtn = this.buttons.find((x) => x.name == '刷 新');
    if (visiable) {
      this.searchBoxShow = true;
    }
    if (refreshBtn) {
      refreshBtn.name = '重 置';
      refreshBtn.onClick = function () {
        this.resetSearch();
      };
    }
  },
  tableBeginEdit(row, column, index) {
    //2021.03.19是否开启Query界面Form双击EditEnd方法,返回false不会EndEdit
    return this.beginEdit(row, column, index);
  },
  beginEdit(row, column, index) {
    //2021.03.19是否开启Query界面Form双击EditEnd方法,返回false不会EndEdit
    return true;
  },
  tableEndEditBefore(row, column, index) {
    return this.endEditBefore(row, column, index);
  },
  endEditBefore(row, column, index) {
    //2021.03.19是否开启Query界面Form双击EditEnd方法,返回false不会EndEdit
    return true;
  },
  filterPermission(tableName, permission) {
    //2021.03.19判断是否有某个Table的按钮Authority
    //:["Search","Add","Delete","Update","Import","Export","Upload","Audit"]
    const _result = (this.$store.state.permission || []).find((x) => {
      return x.url == '/' + tableName;
    });
    return _result && _result.permission.some((x) => x == permission);
  },
  destroyed() {
    //2021.04.11增加vuePage销毁方法,路由必须SetUpkeepLive:false，SetUp方法见：前端开发Document-》[禁用Page缓存keepAlive]
  },
  loadTreeTableChildren(tree, treeNode, resolve) {
    this.loadTreeChildren.call(this, tree, treeNode, resolve);
  },
  loadTreeChildren(tree, treeNode, resolve) {
    //树形结构Load子Node(2021.05.02),在onInit中SetUp了rowKey主键字段后才会生效
    return resolve([]);
  },
  importDetailAfter(data) {
    //2022.01.08增加明细Table导入后处理
  },
  importExcelAfter(data) {
    //2022.01.08增加明细Table导入后方法判断

    if (!data.status) {
      return; // this.$message.error(data.message);
    }
    //明细Table导入
    if (this.boxModel) {
      if (data.data) {
        data.data = JSON.parse(data.data);
      } else {
        data.data = [];
      }
      data.data.forEach((x) => {
        x[this.detail.key] = undefined;
        x[this.table.key] = undefined;
      });
      this.importDetailAfter(data); //增加明细Table导入后处理
      this.$refs.detail.rowData.unshift(...data.data);
      this.upload.excel = false;
      return;
    }
    this.importAfter(data);
  },
  onGridModelClose(iconClick) {
    if (this.isBoxAudit) {
      this.initFormOptionType(false);
    }
    this.isBoxAudit = false;
    this.onModelClose(iconClick);
  },
  initAuditColumn() {

  },
  getWorkFlowSteps(row) {
    let table = this.table.url.replaceAll('/', '');
    let url = `api/Sys_WorkFlow/getSteps?tableName=${table}&id=${row[this.table.key]
      }`;
    this.http.get(url, {}, true).then((result) => {
      this.workFlowSteps.splice(0);
      //有可能没有ConfigurationApprovalProcess
      if (!result.list || !result.list.length) {
        result.list = [];
        this.auditParam.showAction = true;
        this.auditParam.height = 240;
        this.auditParam.showViewButton = row.AuditStatus == 0;
      } else {
        this.auditParam.showAction = result.list.some((c) => {
          return c.isCurrentUser;
        });
        this.auditParam.height = 511;
        this.auditParam.showViewButton = true;
      }
      this.auditParam.reason = '';
      this.auditParam.status = -1;
      this.auditParam.value = -1;
      if (result.his) {
        result.his.forEach((item) => {
          item.auditStatus = this.getAuditStatus(item.auditStatus);
        });
      }

      this.auditParam.auditHis = result.his;
      this.workFlowSteps.push(...result.list);
      this.isBoxAudit = true;
      this.initFormOptionType(true);
      this.edit(row);
      this.boxOptions.title = '审核';
    });
  },
  initFormOptionType(isReadonly) {
    this.editFormOptions.forEach((options) => {
      options.forEach((option) => {
        if (isReadonly) {
          if (!option.readonly) {
            this.formFieldsType.push(option.field);
            option.readonly = true;
          }
        } else {
          if (this.formFieldsType.indexOf(option.field) != -1) {
            option.readonly = false;
          }
        }
      });
    });
  },
  getAuditStatus(status) {
    let data = this.auditParam.data.find((x) => {
      return x.value == status;
    });
    if (!data) {
      return '-';
      //   return `审核值不正确:${status}`
    }
    return data.text;
  },
  initFlowQuery() {
    if (this.$route.query.viewflow) {
      this.$refs.table && this.search();
    }
  },
  fullscreen(full){ //弹出框全屏方法

  },
  //QueryPageForm合并行或列，见https://element-plus.gitee.io/zh-CN/component/table.html#%E5%90%88%E5%B9%B6%E8%A1%8C%E6%88%96%E5%88%97
  spanMethod({row,column,rowIndex, columnIndex}){

  },
  //QueryPageForm合并行或列，见https://element-plus.gitee.io/zh-CN/component/table.html#%E5%90%88%E5%B9%B6%E8%A1%8C%E6%88%96%E5%88%97
  detailSpanMethod({row,column,rowIndex, columnIndex}){

  }
};
import customColumns from './ViewGridCustomColumn.js';
//合并扩展方法
methods = Object.assign(methods, detailMethods, serviceFilter, customColumns);
export default methods;
