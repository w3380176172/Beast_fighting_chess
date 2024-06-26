import QtQuick

MouseArea{

    anchors.fill: parent
    onClicked: {
        parent.state=true
        // 棋子移动更新初始坐标
        if (parent.state) {
            parent.middleX=(Math.floor(parent.x/90)*90)+45
            parent.middleY=(Math.floor(parent.y/90)*90)+45
        }
    }

}

