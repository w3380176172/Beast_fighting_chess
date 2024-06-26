import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

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
        //蓝方先动，判断蓝方玩家只能在chessboard.round%2=1的情况下移动，红方玩家只能在chessboard.round%2=0的情况下移动
        function gamerjudge(Chess){
            if(chessboard.round%2==1&&Chess.gamer===true){
                Chess.state=false
            }
            else if(chessboard.round%2==0&&Chess.gamer===false)
            {
                Chess.state=false
            }
        }

        MouseArea{
            anchors.fill: parent
            onClicked: {
                chessboard.state=true
                //实现坐标改变
                function coordinate(Chess,dx,dy){
                    Chess.x+=dx
                    Chess.y+=dy
                    Chess.middleX=Chess.x+45
                    Chess.middleY=Chess.y+45
                    Chess.state=false
                    chessboard.round+=1
                }
                //实现棋子移动
                function move(Chess,Chessboard){
                    var a=(Math.floor(mouseX/90)*90)
                    var b=(Math.floor(mouseY/90)*90)
                    var c=a+45
                    var dx=a+45-Chess.middleX
                    var dy=b+45-Chess.middleY
                    chessboard.gamerjudge(Chess)
                    //棋子在地图移动
                    if(Chess.state&&Chessboard.state){
                        if((Math.abs(dx)==90&&Math.abs(dy)==0)||(Math.abs(dy)==90&&Math.abs(dx)==0)){
                            coordinate(Chess,dx,dy)
                        }
                        else{
                            Chess.state=false
                        }
                    }
                }
                move(blue_Mouse,parent)
                move(blue_Cat,parent)
                move(blue_Dog,parent)
                move(blue_Wolf,parent)
                move(blue_Leopard,parent)
                move(blue_Tiger,parent)
                move(red_Mouse,parent)
                move(blue_Lion,parent)
                move(blue_Elephant,parent)
                move(red_Cat,parent)
                move(red_Dog,parent)
                move(red_Wolf,parent)
                move(red_Leopard,parent)
                move(red_Tiger,parent)
                move(red_Lion,parent)
                move(red_Elephant,parent)
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
