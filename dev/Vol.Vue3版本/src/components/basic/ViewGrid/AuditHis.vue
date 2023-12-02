<template>
  <vol-table
    :tableData="tableData"
    :columns="columns"
    :height="411"
    :pagination-hide="true"
    :load-key="false"
    :text-inline="false"
    :ck="false"
  ></vol-table>
</template>
<script>
import VolTable from '@/components/basic/VolTable.vue';
import {
  defineComponent,
  ref,
  reactive,
  toRefs,
  getCurrentInstance
} from 'vue';
export default defineComponent({
  components: {
    VolTable
  },
  props: {
    tableData: {
      type: Array,
      default: () => {
        return [];
      }
    }
  },
  setup() {
    const columns = reactive([
      { title: 'Node', field: 'stepName' },
      { title: 'Approval人', field: 'auditor' },
      { title: 'Approval结果', field: 'auditStatus' },
      { title: 'Approval时间', field: 'auditDate',width:150 },
      { title: 'Remark', field: 'remark' }
    ]);
    return {
        columns
    }
  }
});
</script>
