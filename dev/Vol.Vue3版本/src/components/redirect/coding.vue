<template>
  <div style="height:100%;">
    <redirect-error :text="text" :errorNumber="errorNumber">
      <div>
        <router-link to="SellOrder">
          <Button>点击View[ModifierCompleteExample]</Button>
        </router-link>
      </div>
    </redirect-error>
  </div>
</template>
  <script>
import RedirectError from "./RedirectError";
export default {
  components: {
    RedirectError
  },
  data() {
    return {
      errorNumber: "用例正在整理中",
      text: "详细用例在正准备中,目前可参考[ModifierCompleteExample]的使用方法"
    };
  }
};
</script>
