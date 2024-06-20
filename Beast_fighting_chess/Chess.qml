import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
Item {
    id:chess
    property int type
    property bool actar

    Image{
        anchors.fill: parent
        //根据棋子类型和玩家类型分配棋子
        source: {
            if(actar)
            {
                switch(type){
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
            else {
                switch(type){
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
         }



    }
}
