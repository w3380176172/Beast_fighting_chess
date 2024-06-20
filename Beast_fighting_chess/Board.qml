import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Item {
    id:root
    width: 700;
    height: 900
    anchors.centerIn: parent //棋盘居中
    //添加棋盘图片
    Image {
        id: chessboard
        anchors.centerIn: parent
        width: 700
        height: 900
        source: "qrc:/images/map.jpg"

    }
    //红鼠
    Chess {
        id: red_Mouse
        actar: true
        type: 1
        x:0
        y:200
        width: 100
        height: 100

    }
    //红猫
    Chess {
        id: red_Cat
        actar: true
        type: 2
        x:500
        y:100
        width: 100
        height: 100

    }
    //红狗
    Chess{
        id: red_Dog
        actar: true
        type: 3
        width: 100
        height: 100
        x:100
        y:100

    }
    //红狼
    Chess{
        id: red_Wolf
        actar: true
        type: 4
        width: 100
        height: 100
        x:400
        y:200

    }
    //红豹
    Chess{
        id: red_Leopard
        actar: true
        type: 5
        width: 100
        height: 100
        x:200
        y:200

    }
    //红虎
    Chess{
        id: red_Tiger
        actar: true
        type: 5
        width: 100
        height: 100
        x:600
        y:0

    }

}
