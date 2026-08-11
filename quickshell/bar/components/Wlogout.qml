import Quickshell
import QtQuick
import Quickshell.Io 
Rectangle{
    width: 30
    height: 30
    color: "transparent"
    Process{
        id: proc
        command: ["wlogout"]
    }

    Text {
        anchors.centerIn: parent
            text: "󰐥" 
            font.family: "JetBrainsMono Nerd Font" 
            font.pixelSize: 28
            color: '#3735cf' 
            
    }
    MouseArea{
        anchors.fill: parent
        hoverEnabled: true
        cursorShape: Qt.PointingHandCursor
        onClicked: {
            proc.running = true
        }
    }
}
