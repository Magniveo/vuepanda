import { h } from 'vue';

export default {
  name: "FormExpand",
  functional: true,
  props: {
    render: Function,
    par: {}//Modifier参数
  },
  render: ({ render, par }) => {
    return render(h, { par }); //h();
  }
};

