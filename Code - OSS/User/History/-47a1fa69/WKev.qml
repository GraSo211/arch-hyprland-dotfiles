import QtQuick
import Quickshell

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

            visible:true
            implicitHeight: 35
            color: "#ffffff"

            anchors {
                top: true
                left: true
                right: true
            }

            margins {
                top: 0
                bottom: 3
            }

            Text {
                text: "BAR"
            }

        }

    }

}
