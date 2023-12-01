const tipxx = {
    install: function (vue) {
        alert(1);
        vue.prototype.$tip = function () {
            alert('Modifieruse')
        };
    }
}
export default { tipxx }