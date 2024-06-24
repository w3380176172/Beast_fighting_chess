import QtQuick


MouseArea{


    anchors.fill: parent
    onClicked: {
        //            console.log("animal is clicked")
        parent.selected=true
        // 动物移动更新初始坐标
        if (parent.selected) {
            parent.lastX=(Math.floor(parent.x/80)*80)+40
            parent.lastY=(Math.floor(parent.y/80)*80)+40
        }
    }


}

