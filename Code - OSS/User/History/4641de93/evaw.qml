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
      }
    }

}
