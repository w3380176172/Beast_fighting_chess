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
        property int round: 0  //回合数，走一步加一
        property var vectorystate;
        id: chessboard
        anchors.centerIn: parent
        width: 630
        height: 810
        source: "qrc:/images/map.jpg"


        MouseArea{
            anchors.fill: parent
            onClicked: {
                var Chess = [
                            blue_Mouse, blue_Cat, blue_Dog, blue_Wolf, blue_Leopard, blue_Tiger, blue_Lion, blue_Elephant,
                            red_Mouse, red_Cat, red_Dog, red_Wolf, red_Leopard, red_Tiger, red_Lion, red_Elephant
                        ];

                for (var i = 0; i < Chess.length; i++) {
                    Bfc.move(Chess[i], parent, mouseX, mouseY);
                }
                Bfc.vectoryjudge(chessboard.vectorystate);
            }

            //游戏方为蓝方，棋子为蓝色棋子
            Chess {
                id: blue_Mouse
                gamer: true
                level: 1
                width: 90
                height: 90
                x:0
                y:180
                Actions{
                    onClicked: {
                        var redChess = [red_Mouse, red_Cat, red_Dog, red_Wolf, red_Leopard, red_Tiger, red_Lion, red_Elephant];

                        for (var i = 0; i < redChess.length; i++) {
                            Bfc.eatChess(blue_Mouse, redChess[i], chessboard);
                        }
                    }
                }
            }
            Chess {
                id: blue_Cat
                gamer: true
                level: 2
                width: 90
                height: 90
                x:450
                y:90
                Actions{
                    onClicked: {
                        var redChess = [red_Mouse, red_Cat, red_Dog, red_Wolf, red_Leopard, red_Tiger, red_Lion, red_Elephant];

                        for (var i = 0; i < redChess.length; i++) {
                            Bfc.eatChess(blue_Cat, redChess[i], chessboard);
                        }
                    }
                }
            }
            Chess{
                id: blue_Dog
                gamer: true
                level: 3
                width: 90
                height: 90
                x:90
                y:90
                Actions{
                    onClicked: {
                        var redChess = [red_Mouse, red_Cat, red_Dog, red_Wolf, red_Leopard, red_Tiger, red_Lion, red_Elephant];

                        for (var i = 0; i < redChess.length; i++) {
                            Bfc.eatChess(blue_Dog, redChess[i], chessboard);
                        }
                    }
                }
            }
            Chess{
                id: blue_Wolf
                gamer: true
                level: 4
                width: 90
                height: 90
                x:360
                y:180
                Actions{
                    onClicked: {
                        var redChess = [red_Mouse, red_Cat, red_Dog, red_Wolf, red_Leopard, red_Tiger, red_Lion, red_Elephant];

                        for (var i = 0; i < redChess.length; i++) {
                            Bfc.eatChess(blue_Wolf, redChess[i], chessboard);
                        }
                    }
                }
            }
            Chess{
                id: blue_Leopard
                gamer: true
                level: 5
                width: 90
                height: 90
                x:180
                y:180
                Actions{
                    onClicked: {
                        var redChess = [red_Mouse, red_Cat, red_Dog, red_Wolf, red_Leopard, red_Tiger, red_Lion, red_Elephant];

                        for (var i = 0; i < redChess.length; i++) {
                            Bfc.eatChess(blue_Leopard, redChess[i], chessboard);
                        }
                    }
                }
            }
            Chess{
                id: blue_Tiger
                gamer: true
                level: 6
                width: 90
                height: 90
                x:540
                y:0
                Actions{
                    onClicked: {
                        var redChess = [red_Mouse, red_Cat, red_Dog, red_Wolf, red_Leopard, red_Tiger, red_Lion, red_Elephant];

                        for (var i = 0; i < redChess.length; i++) {
                            Bfc.eatChess(blue_Tiger, redChess[i], chessboard);
                        }
                    }
                }
            }
            Chess{
                id: blue_Lion
                gamer: true
                level: 7
                width: 90
                height: 90
                x:0
                y:0
                Actions{
                    onClicked: {
                        var redChess = [red_Mouse, red_Cat, red_Dog, red_Wolf, red_Leopard, red_Tiger, red_Lion, red_Elephant];

                        for (var i = 0; i < redChess.length; i++) {
                            Bfc.eatChess(blue_Lion, redChess[i], chessboard);
                        }
                    }
                }
            }
            Chess{
                id: blue_Elephant
                gamer: true
                level: 8
                width: 90
                height: 90
                x:540
                y:180
                Actions{
                    onClicked: {
                        var redChess = [red_Mouse, red_Cat, red_Dog, red_Wolf, red_Leopard, red_Tiger, red_Lion, red_Elephant];

                        for (var i = 0; i < redChess.length; i++) {
                            Bfc.eatChess(blue_Elephant, redChess[i], chessboard);
                        }
                    }
                }
            }

            //游戏方为红方，棋子为红色棋子
            Chess {
                id: red_Mouse
                gamer: false
                level: 1
                width: 90
                height: 90
                x:540
                y:540
                Actions{
                    onClicked: {
                        var blueChess = [blue_Mouse, blue_Cat, blue_Dog, blue_Wolf, blue_Leopard, blue_Tiger, blue_Lion, blue_Elephant];

                        for (var i = 0; i < blueChess.length; i++) {
                            Bfc.eatChess(red_Mouse, blueChess[i], chessboard);
                        }
                    }
                }
            }

            Chess {
                id: red_Cat
                gamer: false
                level: 2
                width: 90
                height: 90
                x:90
                y:630
                Actions{
                    onClicked: {
                        var blueChess = [blue_Mouse, blue_Cat, blue_Dog, blue_Wolf, blue_Leopard, blue_Tiger, blue_Lion, blue_Elephant];

                        for (var i = 0; i < blueChess.length; i++) {
                            Bfc.eatChess(red_Cat, blueChess[i], chessboard);
                        }
                    }
                }
            }

            Chess{
                id: red_Dog
                gamer: false
                level: 3
                width: 90
                height: 90
                x:450
                y:630
                Actions{
                    onClicked: {
                        var blueChess = [blue_Mouse, blue_Cat, blue_Dog, blue_Wolf, blue_Leopard, blue_Tiger, blue_Lion, blue_Elephant];

                        for (var i = 0; i < blueChess.length; i++) {
                            Bfc.eatChess(red_Dog, blueChess[i], chessboard);
                        }
                    }

                }
            }
            Chess{
                id: red_Wolf
                gamer: false
                level: 4
                width: 90
                height: 90
                x:180
                y:540
                Actions{
                    onClicked: {
                        var blueChess = [blue_Mouse, blue_Cat, blue_Dog, blue_Wolf, blue_Leopard, blue_Tiger, blue_Lion, blue_Elephant];

                        for (var i = 0; i < blueChess.length; i++) {
                            Bfc.eatChess(red_Wolf, blueChess[i], chessboard);
                        }

                    }
                }
            }
            Chess{
                id: red_Leopard
                gamer: false
                level: 5
                width: 90
                height: 90
                x:360
                y:540
                Actions{
                    onClicked: {
                        var blueChess = [blue_Mouse, blue_Cat, blue_Dog, blue_Wolf, blue_Leopard, blue_Tiger, blue_Lion, blue_Elephant];

                        for (var i = 0; i < blueChess.length; i++) {
                            Bfc.eatChess(red_Leopard, blueChess[i], chessboard);
                        }

                    }
                }
            }
            Chess{
                id: red_Tiger
                gamer: false
                level: 6
                width: 90
                height: 90
                x:0
                y:720
                Actions{
                    onClicked: {
                        var blueChess = [blue_Mouse, blue_Cat, blue_Dog, blue_Wolf, blue_Leopard, blue_Tiger, blue_Lion, blue_Elephant];

                        for (var i = 0; i < blueChess.length; i++) {
                            Bfc.eatChess(red_Tiger, blueChess[i], chessboard);
                        }

                    }
                }
            }
            Chess{
                id: red_Lion
                gamer: false
                level: 7
                width: 90
                height: 90
                x:540
                y:720
                Actions{
                    onClicked: {
                        var blueChess = [blue_Mouse, blue_Cat, blue_Dog, blue_Wolf, blue_Leopard, blue_Tiger, blue_Lion, blue_Elephant];

                        for (var i = 0; i < blueChess.length; i++) {
                            Bfc.eatChess(red_Lion, blueChess[i], chessboard);
                        }

                    }
                }
            }
            Chess{
                id: red_Elephant
                gamer: false
                level: 8
                width: 90
                height: 90
                x:0
                y:540
                Actions{
                    onClicked: {
                        var blueChess = [blue_Mouse, blue_Cat, blue_Dog, blue_Wolf, blue_Leopard, blue_Tiger, blue_Lion, blue_Elephant];

                        for (var i = 0; i < blueChess.length; i++) {
                            Bfc.eatChess(red_Elephant, blueChess[i], chessboard);
                        }

                    }
                }
            }
            //蓝方胜利背景图
            Image{
                id:blue_Vectory
                width: 630
                height: 810
                anchors.centerIn: parent
                visible: false
                source: "qrc:/images/blue_Vectory.png"
                //继续游戏按钮
                Image {
                    id: game_continue
                    width: 270
                    height: 90
                    x:177
                    y:449
                    source: "qrc:/images/continue.png"
                    MouseArea{
                        anchors.fill: parent
                        onClicked: {
                            Bfc.init();
                            blue_Vectory.visible = false;
                        }
                    }
                }
                //退出游戏按钮
                Image {
                    id: game_quit
                    width: 270
                    height: 90
                    x:177
                    y:538
                    source: "qrc:/images/quit.png"
                    MouseArea{
                        anchors.fill: parent
                        onClicked: {
                            Qt.quit()
                        }
                    }
                }
            }
            //红方胜利背景图
            Image{
                id:red_Vectory
                width: 630
                height: 810
                anchors.centerIn: parent
                visible: false
                source: "qrc:/images/red_Vectory.png"
                //继续游戏按钮
                Image {
                    id: game_continue1
                    width: 270
                    height: 90
                    x:177
                    y:449
                    source: "qrc:/images/continue.png"
                    MouseArea{
                        anchors.fill: parent
                        onClicked: {
                            Bfc.init();
                            red_Vectory.visible = false;
                        }
                    }
                }
                //退出游戏按钮
                Image {
                    id: game_quit1
                    width: 270
                    height: 90
                    x:177
                    y:538
                    source: "qrc:/images/quit.png"
                    MouseArea{
                        anchors.fill: parent
                        onClicked: {
                            Qt.quit()
                        }
                    }
                }
            }
        }
    }
}
