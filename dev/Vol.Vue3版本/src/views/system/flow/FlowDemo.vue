<template>
  <div class="flow-demo">
    <el-divider>InitiateProcess</el-divider>

    <vol-form
      style="margin-top:20px;"
      ref="form"
      :load-key="true"
      :label-width="60"
      :formRules="options"
      :formFields="fields"
    ></vol-form>
    <div style="text-align:center">
      <el-button @click="submit" type="primary">{{ $locales[$i18n.locale].Submit }}</el-button>
    </div>
  </div>
</template>
<script>
import {
  defineComponent,
  ref,
  reactive,
  toRefs,
  getCurrentInstance
} from 'vue';
import { useRouter, useRoute } from 'vue-router';
import http from '@/../src/api/http.js';
import VolForm from '@/components/basic/VolForm.vue';
export default {
  components: {
    VolForm
  },
  setup() {
    const fields = reactive({
      ExpertName: '',
      Enable: '',
      City: '',
      IDNumber: '',
      PhoneNo: '',
      CreateDate: '',
      Resume: '',
      HeadImageUrl: ''
    });
    const options = reactive([
      [{ title: 'ExpertName', field: 'ExpertName' }],
      [
        {
          dataKey: 'enable',
          data: [],
          title: '状态',
          required: true,
          field: 'Enable',
          type: 'select'
        }
      ],
      [
        {
          dataKey: 'city',
          data: [],
          title: 'City',
          field: 'City',
          type: 'select'
        }
      ],
      [{ title: 'Date', field: 'CreateDate', type:"date" }],
      [{ title: 'Remark', field: 'Resume', colSize: 12, type: 'textarea' }]
    ]);
    let appContext = getCurrentInstance().appContext;
    let $message = appContext.config.globalProperties.$message;
    const form = ref(null);

    const submit = () => {
      form.value.validate(() => {
        http
          .post('api/App_Expert/add', { mainData: fields }, true)
          .then((result) => {
            if (!result.status) {
              return $message.error(result.message);
            }
            form.value.reset();
            $message.success(result.message);
          });
      });
    };

    return {
      options,
      fields,
      submit,
      form
    };
  }
};
</script>
<style scoped lang="less">
.flow-demo {
  position: absolute;
  width: 600px;
  left: 0;
  right: 0;
  margin: 0 auto;
  margin-top: 20px;
}
</style>
