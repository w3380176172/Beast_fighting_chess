import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Item {
    id:chess
    property int level  //棋子等级
    property bool gamer  //true代表蓝方，false代表红方
    property double middleX:0  //记录当前位置的中心点x坐标
    property double middleY:0  //记录当前位置的中心点y坐标
    property bool state:false  //棋子状态，true为可移动，false不可移动

    Image{
        anchors.fill: parent
        source: {
            //蓝方棋子图片
            if(gamer)
            {
                switch(level){
                case 1: return "qrc:/images/blue_Mouse.jpg"
                case 2: return "qrc:/images/blue_Cat.jpg"
                case 3: return "qrc:/images/blue_Dog.jpg"
                case 4: return "qrc:/images/blue_Wolf.jpg"
                case 5: return "qrc:/images/blue_Leopard.jpg"
                case 6: return "qrc:/images/blue_Tiger.jpg"
                case 7: return "qrc:/images/blue_Lion.jpg"
                case 8: return "qrc:/images/blue_Elephant.jpg"
                }
            }
            //红方棋子图片
            else {
                switch(level){
                case 1: return "qrc:/images/red_Mouse.jpg"
                case 2: return "qrc:/images/red_Cat.jpg"
                case 3: return "qrc:/images/red_Dog.jpg"
                case 4: return "qrc:/images/red_Wolf.jpg"
                case 5: return "qrc:/images/red_Leopard.jpg"
                case 6: return "qrc:/images/red_Tiger.jpg"
                case 7: return "qrc:/images/red_Lion.jpg"
                case 8: return "qrc:/images/red_Elephant.jpg"
                }
            }
        }
    }
}

