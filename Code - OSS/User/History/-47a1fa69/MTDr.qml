import Quickshell
import QtQuick

Scope {
    id:bar
    PanelWindow{
        implicitHeight:32
        anchors{
            top:true
            left:true
            right:true
        }
        color: "#ffffff"

        Text{
            text:"BAR"
        }

    }
}