import Quickshell
import QtQuick

Scope {
    id:bar
    PanelWindow{
        implicitHeight:35
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