<template>
  <div style="height: 100%">
    <redirect-error :text="text" message="请求确认是否ConfigurationAuthority" :errorNumber="errorNumber"></redirect-error>
  </div>
</template>
  <script>
import RedirectError from "./RedirectError";
export default {
  components: {
    RedirectError,
  },
  data() {
    return {
      errorNumber: "401",
      text: "抱歉，您没有Authority进行此Operation~",
    };
  },
};
</script>
