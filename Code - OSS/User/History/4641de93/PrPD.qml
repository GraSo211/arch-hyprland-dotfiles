import QtQuick
// Bar.qml
import Quickshell
import "widgets/"

PanelWindow {
    id: panel

    anchors {
        top: true
        left: true
        right: true
    }

    implicitHeight: 40
    margins{
      top: 8
      left: 2
      right: 2

      Rectangle{
        id: bar
        anchors.fill:parent
        color: #1a1a1a
        radius: 15
        border.color: "#333333"
        border.width: 3


        row{
          id: workspacesRow

          anchors{
            left.parent.left
            verticalCenter: parent.verticalCenter
            leftMargin: 16
          }
          spacing:8

          Repeater{
            model : Hyprland.workspacesRow

            Rectangle{
              width:32
              height: 24
              radius: 4
              color: modelData.active? "#4a9eff":"#333333"
              border.color:"#555555"
              border.width: 2

              MouseArea{
                anchors.fill: parent
              }
            }
          }
        }
        
      }
    }

}
