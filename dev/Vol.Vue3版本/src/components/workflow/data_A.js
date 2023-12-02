let dataA = {
    "name": "ProcessA",
    "nodeList": [
        {
            "id": "0",
            "name": "ProcessStart",
            "type": "start",
            "left": "346px",
            "top": "22px",
            "ico": "el-icon-user-solid"
        },
        {
            "id": "nodeA",
            "name": "ProcessA-NodeA",
            "type": "node",
            "left": "346px",
            "top": "132px",
            "ico": "el-icon-user-solid"
        },
    //     {
    //         "id": "nodeB",
    //         "name": "ProcessA-NodeB",
    //         "type": "node",
    //         "left": "347px",
    //         "top": "235px",
    //         "ico": "el-icon-goods"
    //     },
    //     {
    //         "id": "nodeC",
    //         "name": "ProcessA-NodeC",
    //         "type": "node",
    //         "left": "323px",
    //         "top": "399px",
    //         "ico": "el-icon-present"
    //     }
    ],
    "lineList": [
        {
            "from": "0",
            "to": "nodeA"
        },
        // {
        //     "from": "nodeA",
        //     "to": "nodeB"
        // },
        // {
        //     "from": "nodeB",
        //     "to": "nodeC"
        // }
    ]
}
export function getDataA () {
    return dataA
}
