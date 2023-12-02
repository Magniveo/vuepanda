<template>
  <div class="menu-container">
    <!-- <el-input/> -->
    <vol-box :width="940"
             :mask="true"
             :height="500"
             title="图标List"
             v-model="model">
      <Icons :onSelect="onSelect"></Icons>
      <template #footer>
        <el-button type="primary"
                   size="mini"
                   @click="model = false">确 认</el-button>
      </template>
    </vol-box>
    <vol-box :width="600"
             :mask="true"
             :height="270"
             title="OtherAuthority"
             v-model="actionModel">
      <vol-form ref="actionForm"
                :formRules="actionOptions"
                :formFields="actionFields">
        <template #header>
          <div>
            <el-alert show-icon
                      type="success">
              Configuration的OtherAuthority
              <br />1、添加新的Authority后请在vue项目中config文件夹下buttns.js添加此Authority的按钮。
              <br />2、如果Authority只在某少数几个功能中使用,在vue的对应Page扩展extension文件找到对应js,添加到el-buttons对象中,格式同config文件夹下buttns.js一样。
            </el-alert>
          </div>
        </template>
      </vol-form>
      <template #footer>
        <el-button type="primary"
                   size="mini"
                   @click="otherAction">确 认</el-button>
      </template>
    </vol-box>

    <!-- v-if="tree.length" -->
    <div class="menu-left">
      <div class="m-title"><i class="el-icon-warning-outline"></i>DishSingleList</div>
      <el-scrollbar style="height: 100%; width: 200px">
        <VolMenu :onSelect="getTreeItem"
                 :list="tree"
                 :isCollapse="false"></VolMenu>
      </el-scrollbar>
    </div>
    <div class="menu-right">
      <el-scrollbar style="height: 100%">
        <el-alert title="DishSingleConfiguration说明"
                  type="warning"
                  :closable="false"
                  show-icon>
          <div>
            1、如果是用代码生Device生成的VuePage,Url为Vue项目中src->router->viewGrid.js对应WorkTable的path属性
          </div>
          <div style="padding-top: 5px">
            2、 如果只是建一级DishSingle或空DishSingleurlDept_Id填写,【视图/WorkTable】填写.或者/
          </div>
        </el-alert>
        <div style="padding: 0px 30px 0 20px">
          <vol-form class="form-content"
                    ref="form"
                    :formRules="options"
                    :formFields="fields">
          </vol-form>
          <div>
            <div class="auth-group">
              <label style="width: 100px">Authority按钮：</label>
              <div class="ck">
                <el-checkbox-group v-model="actions">
                  <el-checkbox v-for="(item, index) in action"
                               :key="index"
                               :label="item.value">{{ item.text + "(" + item.value + ")" }}</el-checkbox>
                </el-checkbox-group>
              </div>
            </div>
          </div>
          <div style="padding-left: 100px">
            <el-button @click="handleCheckAll"
                       size="mini"
                       type="success"
                       plain><i class="el-icon-check"></i>全 选</el-button>
            <el-button @click="actionModel = true"
                       size="mini"
                       type="primary"
                       plain><i class="el-icon-plus"></i>OtherAuthority</el-button>
          </div>
          <div class="m-btn">
            <el-button type="primary"
                       @click="save"><i class="el-icon-check"></i>保存</el-button>
            <el-button type="success"
                       @click="add"><i class="el-icon-plus"></i>Add</el-button>
            <el-button type="warning"
                       @click="addChild"><i class="el-icon-plus"></i>添加子级</el-button>
            <el-button type="primary"
                       plain
                       @click="addBrother"><i class="el-icon-circle-plus"></i> 添加同级</el-button>
            <el-button type="warning"
                       plain
                       @click="delMenu"><i class="el-icon-delete"></i> DelDishSingle</el-button>
          </div>
        </div>
      </el-scrollbar>
    </div>
  </div>
</template>
<script>
import VolForm from "@/components/basic/VolForm.vue";
import VolBox from "@/components/basic/VolBox.vue";
import Icons from "@/components/basic/Icons.vue";
import VolMenu from "@/components/basic/VolElementMenu.vue";
import {
  defineComponent,
  reactive,
  ref,
  toRefs,
  onMounted,
  h,
  resolveComponent,
} from "vue";

import http from "@/api/http";
export default defineComponent({
  components: {
    VolForm: VolForm,
    VolBox: VolBox,
    Icons: Icons,
    VolMenu,
  },
  methods: {
    otherAction () {
      this.$refs.actionForm.validate(() => {
        let exist = this.action.some((x) => {
          return (
            x.text == this.actionFields.name ||
            x.value == this.actionFields.value
          );
        });
        if (exist) {
          return this.$message.error("AuthorityExpertName或Authority值已存在");
        }
        this.actionModel = false;
        this.action.push({
          text: this.actionFields.name,
          value: this.actionFields.value,
        });
      });
    },
    handleCheckAll () {
      if (this.actions == this.action.length) {
        this.checkAll = false;
      } else {
        this.checkAll = !this.checkAll;
      }
      if (this.checkAll) {
        this.actions = this.action.map((x) => {
          return x.value;
        });
      } else {
        this.actions = [];
      }
    },
    checkAllGroupChange (data) {
      if (data.length === this.action.length) {
        this.checkAll = true;
      } else if (data.length > 0) {
        this.checkAll = false;
      } else {
        this.checkAll = false;
      }
    },
    add (obj) {
      this.$refs.form.reset(
        Object.assign({ enable: 1 }, obj || { parentId: 0 })
      );
      this.icon = "";
      // this.actions = [];
      //2020.08.07AddDishSingle时，默认选中Query按钮Authority
      this.actions = ["Search"];
    },
    addChild () {
      if (!this.isSelect()) return;
      this.add({ parentId: this.fields.menu_Id });
    },
    addBrother () {
      if (!this.isSelect()) return;
      this.add({ parentId: this.fields.parentId });
    },
    delMenu () {
      //2020.08.07增加DishSingleDel功能
      if (this.fields.menu_Id == 0) {
        return this.$Message.error("请选择DishSingle");
      }

      let tigger = false;
      this.$confirm(
        "确认要Del【" + this.fields.menuName + "】DishSingle吗？",
        "警告",
        {
          confirmButtonText: window.locales[window.localei18n.locale].Confirm,
          cancelButtonText: window.locales[window.localei18n.locale].Cancel,
          type: "warning",
          center: true,
        }
      ).then(() => {
        if (tigger) return;
        tigger = true;
        let menuId = this.fields.menu_Id;
        this.http
          .post("/api/menu/delMenu?menuId=" + menuId, {}, "正在DelData....")
          .then((x) => {
            if (!x.status) return this.$Message.error(x.message);
            this.$refs.form.reset();
            this.$Message.info(x.message);
            this.initTree();
          });
      });
    },
    save () {
      this.$refs.form.validate(() => {
        this.fields.auth = "";
        if (this.actions) {
          this.fields.auth = this.action.filter((x) => {
            return this.actions.indexOf(x.value) != -1;
          });
        }
        if (
          this.fields.auth &&
          this.fields.auth instanceof Array &&
          this.fields.auth.length > 0
        ) {
          this.fields.auth = JSON.stringify(this.fields.auth);
        } else {
          this.fields.auth = "";
        }
        this.http.post("/api/menu/save", this.fields, true).then((x) => {
          if (!x.status) {
            this.$Message.error(x.message);
            return;
          }

          this.$Message.info(x.message);
          if (this.fields.menu_Id) {
            this.tree.forEach((t) => {
              if (t.id == this.fields.menu_Id) {
                t.name = this.fields.menuName;
                t.orderNo = this.fields.orderNo;
                t.parentId = this.fields.parentId;
              }
            });
            return;
          }
          this.fields.menu_Id = x.data.menu_Id;
          this.fields.createDate = x.data.createDate;
          this.tree.push({
            id: x.data.menu_Id,
            name: this.fields.menuName,
            orderNo: this.fields.orderNo,
            parentId: this.fields.parentId,
          });
        });
      });
    },
    isSelect () {
      let id = this.fields.menu_Id;
      if (!id) {
        this.$message.error("请选择Node");
        return false;
      }
      return true;
    },
    onSelect (icon) {
      this.fields.icon = icon;
      this.$message.info(icon);
    },
    onOpenChange (node) {
      if (node.length == 0) return;
      this.getTreeItem(node[node.length > 1 ? node.length - 1 : 0]);
    }
  },
  setup () {
    const tree = ref([]);
    const actionValues = ref([]);
    const action = ref([
      { text: "Query", value: "Search" },
      { text: "Add", value: "Add" },
      { text: "Del", value: "Delete" },
      { text: "Edit", value: "Update" },
      { text: "导入", value: "Import" },
      { text: "Export", value: "Export" },
      { text: "上传", value: "Upload" },
      { text: "审核", value: "Audit" },
    ]);
    const actions = ref([]);
    actionValues.value = action.value.map((x) => {
      return x.value;
    });
    const initTree = () => {
      http.post("/api/menu/getMenu", {}, true).then((x) => {
        x.forEach(item=>{
          item.icon='el-icon-menu';
          if (item.menuType==1&&!item.parentId) {
            item.name="(app)"+item.name;
          }
        })
        tree.value = x;
      });
    };
    onMounted(() => {
      initTree();
    });
    const actionModel = ref(false);
    const checkAll = ref(false);
    const model = ref(false);

    const fields = ref({
      menu_Id: 0,
      parentId: 0,
      menuName: "",
      tableName: "",
      url: "",
      auth: "",
      icon: "",
      orderNo: "",
      enable: 1,
      menuType:null,
      createDate: "",
      creator: "",
      modifyDate: "",
    });

    const actionFields = ref({
      name: "",
      value: "",
    });
    const actionOptions = ref([
      [
        {
          title: "AuthorityExpertName",
          field: "name",
          placeholder: "AuthorityExpertName,如：新增",
          required: true,
        },
      ],
      [
        {
          title: "权 限 值",
          field: "value",
          placeholder: "Authority值,如：Add",
          required: true,
        },
      ],
    ]);

    const options = ref([
      [
        {
          title: "Dish Single ID",
          field: "menu_Id",
          placeholder: "DishSingleID",
          min: 0,
          disabled: true,
        },
        {
          title: "父 级 ID",
          required: true,
          type: "number",
          min: 0,
          field: "parentId",
          // min: 0, max: 50
        },
        {
          title: "DishSingleExpertName",
          field: "menuName",
          required: true,
        },
      ],
      [
        {
          title: "视图/WorkTable",
          field: "tableName",
          placeholder: "WithCodeGenerationDevice使用的ExpertName相同",
          required: true,
        },
        {
          title: "(路由)Url",
          field: "url",
          placeholder: "见:上面DishSingleConfiguration说明",
        },
        {
          title: "OrderNo",
          field: "orderNo",
          type: "number",
          min: 0,
          placeholder: "值越大显示越靠前",
          required: true,
        },
      ],
      [
        {
          title: "Enable",
          field: "enable",
          required: true,
          type: "select",
          colSize: 4,
          data: [
            { key: 1, value: "启用" },
            { key: 2, value: "启用不显示" },
            { key: 0, value: "禁用" },
          ],
        },  
        {
          // 2022.03.26增移动端加DishSingleAppType
          title: "DishSingleAppType",
          field: "menuType",
          required: true,
          type: "select",
          colSize: 4,
          data: [
            { key: 0, value: "PCDishSingle" },
            { key: 1, value: "移动端DishSingle" }
          ],
        },
        {
          title: "图标Icon",
          field: "icon",
          render: (h) => {
            return h("div", {}, [
              h("i", {
                style: {
                  "font-size": "25px",
                  margin: "0px 9px",
                  position: "relative",
                  top: "4px",
                },
                class: [fields.value.icon],
              }),
              h(
                resolveComponent("el-button"),
                {
                  size: "small",
                  style: { padding: "0px 9px" },
                  type: "primary",
                  plain: true,
                  onClick: () => {
                    model.value = true;
                  },
                },
                "选择图标"
              ),
            ]);
          },
        },
      ],
    ]);
    const refForm = ref();
    const getTreeItem = (node) => {
      http.post("api/menu/getTreeItem?menuId=" + node, {}, true).then((x) => {
        try {
          fields.value.icon = x.icon;
          if (x.auth) {
            x.auth = JSON.parse(x.auth);
            action.value.splice(8, action.value.length);

            actions.value = x.auth.map((element) => {
              if (actionValues.value.indexOf(element.value) == -1) {
                action.value.push(element);
              }
              return element.value;
            });
          } else {
            action.value.splice(8, action.value.length);
            x.auth = [];
            fields.value.icon = "";
            actions.value = [];
          }
        } catch (error) {
          console.log("DishSingle功能Authority转换成JSON失败:" + x.auth);
          x.auth = [];
          //   this.icon = "";
          actions.value = [];
        }
        refForm.value.reset(x);
      });
    };
    return {
      tree,
      initTree,
      action,
      actions,
      actionValues,
      actionModel,
      checkAll,
      model,
      fields,
      actionFields,
      actionOptions,
      options,
      form: refForm,
      getTreeItem
    };
  },
  data () {
    return {};
  },
});
</script>

<style lang="less" scoped>
.on-icon {
  line-height: 20px;
  position: relative;
  .remove {
    display: none;
    color: red;
    right: 7px;
    position: absolute;
    top: -14px;
    font-size: 13px;
  }
}
.on-icon:hover {
  cursor: pointer;
  .remove {
    display: block;
  }
}
.action {
  width: 100%;
  display: flex;

  margin-bottom: 15px;
  .ivu-checkbox-wrapper {
    margin-right: 20px;
  }
  .ck {
    line-height: 33px;
    display: inline-block;
    display: flex;
    label:first-child {
      min-width: 58px;
      float: left;
      margin-top: 1px;
    }
    > div {
      float: left;
    }
  }
}

.menu-container {
  display: flex;
  position: absolute;
  width: 100%;
  height: 100%;
  padding: 8px;
  background: #f7f7f7;
  .menu-left {
    height: 100%;
    width: 201px;
    border: 1px solid #eee;
    display: flex;
    background: white;
    flex-direction: column;
    .module-name {
      border-radius: 0px;
      /* height: 5%; */
      line-height: 21px;
      margin-bottom: 0;
    }
  }
  .menu-right {
    flex: 1;
    border-radius: 3px;
    border: 1px solid #eee;
    background: white;
    margin-left: 9px;
    margin-right: 3px;
  }
}
.m-btn {
  margin-top: 20px;
  text-align: center;
}
.m-title {
  line-height: 40px;
  font-size: 15px;
  background: #66b1ff0f;
  font-weight: bold;
  padding: 6px 16px;
  border-bottom: 1px solid #eee;
  i {
    padding-right: 5px;
  }
}
.form-content {
  margin-top: 30px;
}
.menu-left ::v-deep(.el-scrollbar__bar.is-vertical) {
  width: 2px;
}
.auth-group {
  display: flex;
  label {
    display: inline-block;
    width: 100px;
    text-align: right;
    color: #797979;
    font-size: 14px;
  }
  .ck {
    flex: 1;
  }
  .el-checkbox {
    min-width: 105px;
    width: auto !important;
    margin-right: 5px;
    display: inline-block;
    padding-bottom: 10px;
  }
}
.auth-group ::v-deep(.el-checkbox__label) {
  padding-left: 4px;
}
</style>

