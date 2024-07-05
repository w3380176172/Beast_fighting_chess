import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Item {
    id: chess
    property int level  // 棋子等级
    property bool gamer  // true代表蓝方，false代表红方
    property double middleX: 0  // 记录当前位置的中心点x坐标
    property double middleY: 0  // 记录当前位置的中心点y坐标
    property bool state: false  // 棋子状态，true为可移动，false不可移动

    readonly property var animalNames: ["Mouse", "Cat", "Dog", "Wolf", "Leopard", "Tiger", "Lion", "Elephant"]

    Image {
        anchors.fill: parent
        source: {
            const color = gamer ? "blue" : "red"
            const animal = animalNames[level - 1]
            return `qrc:/images/${color}_${animal}.jpg`
        }
    }
}

