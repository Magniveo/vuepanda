<template>
  <div>
    <vol-box
      v-model="model"
      :padding="30"
      title="修改UserPwd"
      :width="500"
      :height="250"
    >
      <el-alert type="success">
        <h3>
          <span>UserName：{{ row.UserName }}</span>
          <span>User：{{ row.UserTrueName }}</span>
        </h3>
      </el-alert>
      <div>
        <el-input
          placeholder="请输入UserPwd"
          v-model="password"
          size="large"
          style="width: 100%; margin-top: 15px"
        />
      </div>
      <template #footer>
        <el-button
          type="primary"
          @click="savePwd()"
          >修改UserPwd</el-button
        >
        <el-button
          @click="model = false"
          >{{ $locales[$i18n.locale].Close }}</el-button
        >
      </template>
    </vol-box>
  </div>
</template>
<script>
import { defineComponent, defineAsyncComponent } from "vue";
export default defineComponent({
  components: {
    VolBox: defineAsyncComponent(() => import("@/components/basic/VolBox.vue"))
  },
  data() {
    return {
      row: {},
      password: "",
      model: false,
    };
  },
  methods: {
    open(row) {
      this.password = "";
      this.row = row;
      this.model = true;
    },
    savePwd() {
      if (!this.password) return this.$Message.error("请输UserPwd");
      if (this.password.length < 6)
        return this.$Message.error("UserPwd长度至少6位");
      let url =
        "/api/user/modifyUserPwd?password=" +
        this.password +
        "&userName=" +
        this.row.UserName;
      this.http.post(url, {}, true).then((x) => {
        if (!x.status) {
          return this.$message.error(x.message);
        }
        this.model = false;
        this.$Message.success(x.message);
      });
    },
  },
  created() {},
})
</script>
<style lang="less" scoped>
h3 {
  font-weight: 500;
  > span:last-child {
    margin-left: 30px;
  }
}
</style>