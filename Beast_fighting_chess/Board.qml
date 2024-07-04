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
        id: chessboard
        anchors.centerIn: parent
        width: 630
        height: 810
        source: "qrc:/images/map.jpg"


        MouseArea{
            anchors.fill: parent
            onClicked: {
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
                        Bfc.eatChess(blue_Mouse,red_Mouse,chessboard)
                        Bfc.eatChess(blue_Mouse,red_Cat,chessboard)
                        Bfc.eatChess(blue_Mouse,red_Dog,chessboard)
                        Bfc.eatChess(blue_Mouse,red_Wolf,chessboard)
                        Bfc.eatChess(blue_Mouse,red_Leopard,chessboard)
                        Bfc.eatChess(blue_Mouse,red_Tiger,chessboard)
                        Bfc.eatChess(blue_Mouse,red_Lion,chessboard)
                        Bfc.eatChess(blue_Mouse,red_Elephant,chessboard)
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
                        Bfc.eatChess(blue_Cat,red_Mouse,chessboard)
                        Bfc.eatChess(blue_Cat,red_Cat,chessboard)
                        Bfc.eatChess(blue_Cat,red_Dog,chessboard)
                        Bfc.eatChess(blue_Cat,red_Wolf,chessboard)
                        Bfc.eatChess(blue_Cat,red_Leopard,chessboard)
                        Bfc.eatChess(blue_Cat,red_Tiger,chessboard)
                        Bfc.eatChess(blue_Cat,red_Lion,chessboard)
                        Bfc.eatChess(blue_Cat,red_Elephant,chessboard)
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
                        Bfc.eatChess(blue_Dog,red_Mouse,chessboard)
                        Bfc.eatChess(blue_Dog,red_Cat,chessboard)
                        Bfc.eatChess(blue_Dog,red_Dog,chessboard)
                        Bfc.eatChess(blue_Dog,red_Wolf,chessboard)
                        Bfc.eatChess(blue_Dog,red_Leopard,chessboard)
                        Bfc.eatChess(blue_Dog,red_Tiger,chessboard)
                        Bfc.eatChess(blue_Dog,red_Lion,chessboard)
                        Bfc.eatChess(blue_Dog,red_Elephant,chessboard)
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
                        Bfc.eatChess(blue_Wolf,red_Mouse,chessboard)
                        Bfc.eatChess(blue_Wolf,red_Cat,chessboard)
                        Bfc.eatChess(blue_Wolf,red_Dog,chessboard)
                        Bfc.eatChess(blue_Wolf,red_Wolf,chessboard)
                        Bfc.eatChess(blue_Wolf,red_Leopard,chessboard)
                        Bfc.eatChess(blue_Wolf,red_Tiger,chessboard)
                        Bfc.eatChess(blue_Wolf,red_Lion,chessboard)
                        Bfc.eatChess(blue_Wolf,red_Elephant,chessboard)
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
                        Bfc.eatChess(blue_Leopard,red_Mouse,chessboard)
                        Bfc.eatChess(blue_Leopard,red_Cat,chessboard)
                        Bfc.eatChess(blue_Leopard,red_Dog,chessboard)
                        Bfc.eatChess(blue_Leopard,red_Wolf,chessboard)
                        Bfc.eatChess(blue_Leopard,red_Leopard,chessboard)
                        Bfc.eatChess(blue_Leopard,red_Tiger,chessboard)
                        Bfc.eatChess(blue_Leopard,red_Lion,chessboard)
                        Bfc.eatChess(blue_Leopard,red_Elephant,chessboard)
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
                        Bfc.eatChess(blue_Tiger,red_Mouse,chessboard)
                        Bfc.eatChess(blue_Tiger,red_Cat,chessboard)
                        Bfc.eatChess(blue_Tiger,red_Dog,chessboard)
                        Bfc.eatChess(blue_Tiger,red_Wolf,chessboard)
                        Bfc.eatChess(blue_Tiger,red_Leopard,chessboard)
                        Bfc.eatChess(blue_Tiger,red_Tiger,chessboard)
                        Bfc.eatChess(blue_Tiger,red_Lion,chessboard)
                        Bfc.eatChess(blue_Tiger,red_Elephant,chessboard)
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
                        Bfc.eatChess(blue_Lion,red_Mouse,chessboard)
                        Bfc.eatChess(blue_Lion,red_Cat,chessboard)
                        Bfc.eatChess(blue_Lion,red_Dog,chessboard)
                        Bfc.eatChess(blue_Lion,red_Wolf,chessboard)
                        Bfc.eatChess(blue_Lion,red_Leopard,chessboard)
                        Bfc.eatChess(blue_Lion,red_Tiger,chessboard)
                        Bfc.eatChess(blue_Lion,red_Lion,chessboard)
                        Bfc.eatChess(blue_Lion,red_Elephant,chessboard)
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
                        Bfc.eatChess(blue_Elephant,red_Mouse,chessboard)
                        Bfc.eatChess(blue_Elephant,red_Cat,chessboard)
                        Bfc.eatChess(blue_Elephant,red_Dog,chessboard)
                        Bfc.eatChess(blue_Elephant,red_Wolf,chessboard)
                        Bfc.eatChess(blue_Elephant,red_Leopard,chessboard)
                        Bfc.eatChess(blue_Elephant,red_Tiger,chessboard)
                        Bfc.eatChess(blue_Elephant,red_Mouse,chessboard)
                        Bfc.eatChess(blue_Elephant,red_Elephant,chessboard)
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
                        Bfc.eatChess(red_Mouse,blue_Mouse,chessboard)
                        Bfc.eatChess(red_Mouse,blue_Cat,chessboard)
                        Bfc.eatChess(red_Mouse,blue_Dog,chessboard)
                        Bfc.eatChess(red_Mouse,blue_Wolf,chessboard)
                        Bfc.eatChess(red_Mouse,blue_Leopard,chessboard)
                        Bfc.eatChess(red_Mouse,blue_Tiger,chessboard)
                        Bfc.eatChess(red_Mouse,blue_Lion,chessboard)
                        Bfc.eatChess(red_Mouse,blue_Elephant,chessboard)
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
                    Bfc.eatChess(red_Cat,blue_Mouse,chessboard)
                    Bfc.eatChess(red_Cat,blue_Cat,chessboard)
                    Bfc.eatChess(red_Cat,blue_Dog,chessboard)
                    Bfc.eatChess(red_Cat,blue_Wolf,chessboard)
                    Bfc.eatChess(red_Cat,blue_Leopard,chessboard)
                    Bfc.eatChess(red_Cat,blue_Tiger,chessboard)
                    Bfc.eatChess(red_Cat,blue_Lion,chessboard)
                    Bfc.eatChess(red_Cat,blue_Elephant,chessboard)
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
                    Bfc.eatChess(red_Dog,blue_Mouse,chessboard)
                    Bfc.eatChess(red_Dog,blue_Cat,chessboard)
                    Bfc.eatChess(red_Dog,blue_Dog,chessboard)
                    Bfc.eatChess(red_Dog,blue_Wolf,chessboard)
                    Bfc.eatChess(red_Dog,blue_Leopard,chessboard)
                    Bfc.eatChess(red_Dog,blue_Tiger,chessboard)
                    Bfc.eatChess(red_Dog,blue_Lion,chessboard)
                    Bfc.eatChess(red_Dog,blue_Elephant,chessboard)
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
                    Bfc.eatChess(red_Wolf,blue_Mouse,chessboard)
                    Bfc.eatChess(red_Wolf,blue_Cat,chessboard)
                    Bfc.eatChess(red_Wolf,blue_Dog,chessboard)
                    Bfc.eatChess(red_Wolf,blue_Wolf,chessboard)
                    Bfc.eatChess(red_Wolf,blue_Leopard,chessboard)
                    Bfc.eatChess(red_Wolf,blue_Tiger,chessboard)
                    Bfc.eatChess(red_Wolf,blue_Lion,chessboard)
                    Bfc.eatChess(red_Wolf,blue_Elephant,chessboard)
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
                    Bfc.eatChess(red_Leopard,blue_Mouse,chessboard)
                    Bfc.eatChess(red_Leopard,blue_Cat,chessboard)
                    Bfc.eatChess(red_Leopard,red_Dog,chessboard)
                    Bfc.eatChess(red_Leopard,blue_Wolf,chessboard)
                    Bfc.eatChess(red_Leopard,blue_Leopard,chessboard)
                    Bfc.eatChess(red_Leopard,blue_Tiger,chessboard)
                    Bfc.eatChess(red_Leopard,blue_Lion,chessboard)
                    Bfc.eatChess(red_Leopard,blue_Elephant,chessboard)
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
                    Bfc.eatChess(red_Tiger,blue_Mouse,chessboard)
                    Bfc.eatChess(red_Tiger,blue_Cat,chessboard)
                    Bfc.eatChess(red_Tiger,blue_Dog,chessboard)
                    Bfc.eatChess(red_Tiger,blue_Wolf,chessboard)
                    Bfc.eatChess(red_Tiger,blue_Leopard,chessboard)
                    Bfc.eatChess(red_Tiger,blue_Tiger,chessboard)
                    Bfc.eatChess(red_Tiger,blue_Lion,chessboard)
                    Bfc.eatChess(red_Tiger,blue_Elephant,chessboard)
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
                    Bfc.eatChess(red_Lion,blue_Mouse,chessboard)
                    Bfc.eatChess(red_Lion,blue_Cat,chessboard)
                    Bfc.eatChess(red_Lion,blue_Dog,chessboard)
                    Bfc.eatChess(red_Lion,blue_Wolf,chessboard)
                    Bfc.eatChess(red_Lion,blue_Leopard,chessboard)
                    Bfc.eatChess(red_Lion,blue_Tiger,chessboard)
                    Bfc.eatChess(red_Lion,blue_Lion,chessboard)
                    Bfc.eatChess(red_Lion,blue_Elephant,chessboard)
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
                    Bfc.eatChess(red_Elephant,blue_Mouse,chessboard)
                    Bfc.eatChess(red_Elephant,blue_Cat,chessboard)
                    Bfc.eatChess(red_Elephant,blue_Dog,chessboard)
                    Bfc.eatChess(red_Elephant,blue_Wolf,chessboard)
                    Bfc.eatChess(red_Elephant,blue_Leopard,chessboard)
                    Bfc.eatChess(red_Elephant,blue_Tiger,chessboard)
                    Bfc.eatChess(red_Elephant,blue_Mouse,chessboard)
                    Bfc.eatChess(red_Elephant,blue_Elephant,chessboard)
                }
            }
        }
    }

}
