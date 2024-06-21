import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Item {
    id:board
    width: 630;
    height: 810
    anchors.centerIn: parent //棋盘居中
    //棋盘图片
    Image {
        id: chessboard
        anchors.centerIn: parent
        width: 630
        height: 810
        source: "qrc:/images/map.jpg"

    }

    //游戏方为蓝方，棋子为蓝色棋子
    Chess {
        id: blue_Mouse
        gamer: true
        level: 1
        width: 80
        height: 80
        x:10
        y:188

    }
    Chess {
        id: blue_Cat
        gamer: true
        level: 2
        width: 80
        height: 80
        x:453
        y:99

    }
    Chess{
        id: blue_Dog
        gamer: true
        level: 3
        width: 80
        height: 80
        x:99
        y:99

    }
    Chess{
        id: blue_Wolf
        gamer: true
        level: 4
        width: 80
        height: 80
        x:364
        y:188

    }
    Chess{
        id: blue_Leopard
        gamer: true
        level: 5
        width: 80
        height: 80
        x:187
        y:188

    }
    Chess{
        id: blue_Tiger
        gamer: true
        level: 6
        width: 80
        height: 80
        x:542
        y:10

    }
    Chess{
        id: blue_Lion
        gamer: true
        level: 7
        width: 80
        height: 80
        x:10
        y:10

    }
    Chess{
        id: blue_Elephant
        gamer: true
        level: 8
        width: 80
        height: 80
        x:542
        y:188

    }

    //游戏方为红方，棋子为红色棋子
    Chess {
        id: red_Mouse
        gamer: false
        level: 1
        width: 80
        height: 80
        x:541
        y:542

    }
    Chess {
        id: red_Cat
        gamer: false
        level: 2
        width: 80
        height: 80
        x:99
        y:630

    }
    Chess{
        id: red_Dog
        gamer: false
        level: 3
        width: 80
        height: 80
        x:452
        y:631

    }
    Chess{
        id: red_Wolf
        gamer: false
        level: 4
        width: 80
        height: 80
        x:187
        y:541

    }
    Chess{
        id: red_Leopard
        gamer: false
        level: 5
        width: 80
        height: 80
        x:364
        y:542

    }
    Chess{
        id: red_Tiger
        gamer: false
        level: 6
        width: 80
        height: 80
        x:9
        y:719

    }
    Chess{
        id: red_Lion
        gamer: false
        level: 7
        width: 80
        height: 80
        x:541
        y:720
    }
    Chess{
        id: red_Elephant
        gamer: false
        level: 8
        width: 80
        height: 80
        x:10
        y:540

    }

}
