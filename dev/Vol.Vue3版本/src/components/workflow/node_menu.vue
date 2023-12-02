<template>
    <div class="flow-menu" ref="tool">
        <div v-for="menu  in  menuList" :key="menu.id">
            <div class="ef-node-pmenu-item"><i class="el-icon-notebook-2"></i>NodeConfiguration</div>
            <ul v-show="menu.open" class="ef-node-menu-ul">
                <draggable @end="end" @start="move" v-model="menu.children" :options="draggableOptions">
                    <li v-for="subMenu in menu.children" class="ef-node-menu-li" :key="subMenu.id" :type="subMenu.type">
                        <i :class="subMenu.ico"></i> {{ subMenu.name }}
                    </li>
                </draggable>
            </ul>
        </div>
    </div>
</template>
<script>
import { VueDraggableNext as draggable } from "vue-draggable-next";

var mousePosition = {
    left: -1,
    top: -1
}

export default {
    data() {
        return {
            activeNames: '1',
            // draggableConfiguration参数参考 https://www.cnblogs.com/weixin186/p/10108679.html
            draggableOptions: {
                preventOnFilter: false,
                sort: false,
                disabled: false,
                ghostClass: 'tt',
                // 不使用H5原生的Configuration
                forceFallback: true,
                // 拖拽的时候样式
                // fallbackClass: 'flow-node-draggable'
            },
            // 默认打开的左侧DishSingle的id
            defaultOpeneds: ['1', '2'],
            menuList: [
                {
                    id: '1',
                    type: 'group',
                    name: 'StartNode',
                    ico: 'el-icon-video-play',
                    open: true,
                    children: [
                        {
                            id: '0',
                            type: 'start',
                            name: 'ProcessStart',
                            ico: 'el-icon-time',
                            // Customize覆盖样式
                            style: {}
                        },
                        {
                            id: '1',
                            type: 'end',
                            name: 'ProcessEnd',
                            ico: 'el-icon-switch-button',
                            // Customize覆盖样式
                            style: {}
                        },   {
                            id: '2',
                            type: 'node',
                            name: 'ProcessNode',
                            ico: 'el-icon-news',
                            // Customize覆盖样式
                            style: {}
                        }
                    ]
                }],

            nodeMenu: {}
        }
    },
    components: {
        draggable
    },
    created() {
        /**
         * 以下是为了解决在火狐浏览Device上推拽时弹出tab页到搜索问题
         * @param event
         */
        if (this.isFirefox()) {
            document.body.ondrop = function (event) {
                // 解决火狐浏览DeviceNone法获取鼠标拖拽End的坐标问题
                mousePosition.left = event.layerX
                mousePosition.top = event.clientY - 50
                event.preventDefault();
                event.stopPropagation();
            }
        }
    },
    methods: {
        // 根据AppType获取左侧DishSingle对象
        getMenuByType(type) {
            for (let i = 0; i < this.menuList.length; i++) {
                let children = this.menuList[i].children;
                for (let j = 0; j < children.length; j++) {
                    if (children[j].type === type) {
                        return children[j]
                    }
                }
            }
        },
        // 拖拽Start时触发
        move(evt, a, b, c) {
            var type = evt.item.attributes.type.nodeValue
            this.nodeMenu = this.getMenuByType(type)
        },
        // 拖拽End时触发
        end(evt, e) {
            this.$emit('addNode', evt, this.nodeMenu, mousePosition)
        },
        // 是否是火狐浏览Device
        isFirefox() {
            var userAgent = navigator.userAgent
            if (userAgent.indexOf("Firefox") > -1) {
                return true
            }
            return false
        }
    }
}
</script>
