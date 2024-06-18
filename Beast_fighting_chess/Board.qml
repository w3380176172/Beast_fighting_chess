import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

ApplicationWindow {
    visible: true
        width: 700
        height: 900
        title: "斗兽棋"

        Rectangle {
            anchors.fill: parent
            color: "red" // 设置背景为黄色

            Grid {
                id: chessBoard
                rows: 9
                columns: 7
                anchors.centerIn: parent
                spacing: 1

                Repeater {
                    model: 63 // 7x9的棋盘有63个格子
                    delegate: Rectangle {
                        width: 80
                        height: 80
                        color: (index % 2 === 0) ? "white" : "lightgray" // 交替颜色，白色和浅灰色

                        Text {
                            anchors.centerIn: parent
                            text: index
                            color: "black"
                        }
                    }
                }
            }
        }
}
