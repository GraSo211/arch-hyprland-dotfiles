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
      left: 0
      right: 0

      Rectangle{
        id: bar
      }
    }

}
