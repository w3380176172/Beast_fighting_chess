import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import "Beast_fighting_chess.js" as Bfc

Item {
    id:board
    width: 630;
    height: 810
    anchors.centerIn: parent
    //棋盘
    Image {
        property double middleX:0
        property double middleY:0
        property int round: 0  //回合数，走一步加一
        property bool state:false  //棋子的状态，true可移动，false不可移动
        id: chessboard
        anchors.centerIn: parent
        width: 630
        height: 810
        source: "qrc:/images/map.jpg"


        MouseArea{
            anchors.fill: parent
            onClicked: {
                chessboard.state=true
                Bfc.move(blue_Mouse,parent,mouseX,mouseY)
                Bfc.move(blue_Cat,parent,mouseX,mouseY)
                Bfc.move(blue_Dog,parent,mouseX,mouseY)
                Bfc.move(blue_Wolf,parent,mouseX,mouseY)
                Bfc.move(blue_Leopard,parent,mouseX,mouseY)
                Bfc.move(blue_Tiger,parent,mouseX,mouseY)
                Bfc.move(red_Mouse,parent,mouseX,mouseY)
                Bfc.move(blue_Lion,parent,mouseX,mouseY)
                Bfc.move(blue_Elephant,parent,mouseX,mouseY)
                Bfc.move(red_Cat,parent,mouseX,mouseY)
                Bfc.move(red_Dog,parent,mouseX,mouseY)
                Bfc.move(red_Wolf,parent,mouseX,mouseY)
                Bfc.move(red_Leopard,parent,mouseX,mouseY)
                Bfc.move(red_Tiger,parent,mouseX,mouseY)
                Bfc.move(red_Lion,parent,mouseX,mouseY)
                Bfc.move(red_Elephant,parent,mouseX,mouseY)
                chessboard.state=false
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
                Actions{
                    onClicked: {

                    }
                }
            }
            Chess {
                id: blue_Cat
                gamer: true
                level: 2
                width: 80
                height: 80
                x:453
                y:99
                Actions{
                    onClicked: {

                    }
                }
            }
            Chess{
                id: blue_Dog
                gamer: true
                level: 3
                width: 80
                height: 80
                x:99
                y:99
                Actions{
                    onClicked: {

                    }
                }
            }
            Chess{
                id: blue_Wolf
                gamer: true
                level: 4
                width: 80
                height: 80
                x:364
                y:188
                Actions{
                    onClicked: {

                    }
                }
            }
            Chess{
                id: blue_Leopard
                gamer: true
                level: 5
                width: 80
                height: 80
                x:187
                y:188
                Actions{
                    onClicked: {

                    }
                }
            }
            Chess{
                id: blue_Tiger
                gamer: true
                level: 6
                width: 80
                height: 80
                x:542
                y:10
                Actions{
                    onClicked: {

                    }
                }
            }
            Chess{
                id: blue_Lion
                gamer: true
                level: 7
                width: 80
                height: 80
                x:10
                y:10
                Actions{
                    onClicked: {

                    }
                }
            }
            Chess{
                id: blue_Elephant
                gamer: true
                level: 8
                width: 80
                height: 80
                x:542
                y:188
                Actions{
                    onClicked: {

                    }
                }
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
                Actions{
                    onClicked: {

                    }
                }
            }
        }
        Chess {
            id: red_Cat
            gamer: false
            level: 2
            width: 80
            height: 80
            x:99
            y:630
            Actions{
                onClicked: {

                }
            }
        }
        Chess{
            id: red_Dog
            gamer: false
            level: 3
            width: 80
            height: 80
            x:452
            y:631
            Actions{
                onClicked: {

                }
            }
        }
        Chess{
            id: red_Wolf
            gamer: false
            level: 4
            width: 80
            height: 80
            x:187
            y:541
            Actions{
                onClicked: {

                }
            }
        }
        Chess{
            id: red_Leopard
            gamer: false
            level: 5
            width: 80
            height: 80
            x:364
            y:542
            Actions{
                onClicked: {

                }
            }
        }
        Chess{
            id: red_Tiger
            gamer: false
            level: 6
            width: 80
            height: 80
            x:9
            y:719
            Actions{
                onClicked: {

                }
            }
        }
        Chess{
            id: red_Lion
            gamer: false
            level: 7
            width: 80
            height: 80
            x:541
            y:720
            Actions{
                onClicked: {

                }
            }
        }
        Chess{
            id: red_Elephant
            gamer: false
            level: 8
            width: 80
            height: 80
            x:10
            y:540
            Actions{
                onClicked: {

                }
            }
        }
    }

}
