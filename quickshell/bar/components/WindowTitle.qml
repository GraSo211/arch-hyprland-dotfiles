import QtQuick
import Quickshell
import Quickshell.Hyprland // Importamos el módulo nativo de Hyprland

Rectangle {
    implicitWidth: parent.width / 4.5
    height: 30
    color: "transparent"
    
    anchors {
        left: parent.left
        leftMargin: 30
        verticalCenter: parent.verticalCenter
    }
    clip: true

    Row {
        anchors.fill: parent
        spacing: 8

        Text {
            anchors.verticalCenter: parent.verticalCenter
            text: "󰍹"
            font.family: shellRoot.mainFont
            font.pixelSize: 18
            color: "#89b4fa"
        }

        Text {
            anchors.verticalCenter: parent.verticalCenter
            width: parent.width - 25 

            text: Hyprland.activeToplevel.title ?? ""

            color: "white"
            font.family: shellRoot.mainFont
            font.pixelSize: 16
            
            
            elide: Text.ElideRight 
        }
    }
}