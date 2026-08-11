import Quickshell
import QtQuick

Item{
    id:bar
    PanelWindow{
        implicitHeight:35
        anchors{
            top:true
            left:true
            right:true
        }
        margins{
            top:0
            bottom:3
        }
        color: "#ffffff"

        Text{
            text:"BAR"
        }

    }
}