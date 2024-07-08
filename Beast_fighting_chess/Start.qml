import QtQuick
Image {
      id: start
      width: 630
      height: 810
      anchors.centerIn: parent
      source: "qrc:/images/start.jpg"
          //开始游戏按钮
          Image {
              id: game_start
              width: 256
              height: 74
              x:128
              y:472
              MouseArea{
                  anchors.fill: parent
                  onClicked: {
                      start.visible = false;
                  }
              }
          }
          //退出游戏按钮
          Image {
              id: game_quit
              width: 256
              height: 74
              x:177
              y:648
              MouseArea{
                  anchors.fill: parent
                  onClicked: {
                      Qt.quit()
                  }
              }
          }



}
