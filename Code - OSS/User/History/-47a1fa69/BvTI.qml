pragma ComponentBehavior: Bound

import QtQuick
import Quickshell
import Quickshell.Io
import Quickshell.Wayland
import Quickshell.Hyprland

import "../../services"
import "../../common"

import "../../common/widgets"
Scope {
    id: root

    Variants {
        // instancia por cada monitor que tengamos
        model: Quickshell.screens

        PanelWindow {
            id: barWindow

            // aplicamos en cada monitor por separado
            required property var modelData

            screen: modelData
            visible: true // en un futuro que podamos activarla y desactivar con variable  global
            implicitHeight: 35
            color: "transparent"

            anchors {
                top: true
                left: true
                right: true
            }

            margins {
                top: 0
                bottom: 3
            }

            Rectangle {
                id: background

                anchors.fill: parent
                color: "#999999"
                radius: 10
                Component.onCompleted: {
    console.log("Appearance:", Appearance)
}

                BarContent {
                    implicitHeight: Appearance.sizes.barHeight
                    anchors.fill: parent
                }

            }


        }

    }

}
