import QtQuick
import Quickshell

Scope {
    id: root

    Variants {
        model: Quickshell.screens
        
        PanelWindow {
            required property var modelData
            screen: modelData
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
