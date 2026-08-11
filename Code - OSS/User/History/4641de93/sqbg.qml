import QtQuick
// Bar.qml
import Quickshell
import "widgets/"

Scope {
    // the Time type we just created
    Time {
        id: timeSource
    }

    Variants {
        model: Quickshell.screens

        PanelWindow {
            id: panel

            required property var modelData

            screen: modelData
            implicitHeight: 30

            anchors {
                top: true
                left: true
                right: true
            }

            RowLayout {
                Layout.fillWidth: true
                Layout.alignment: Qt.AlignVCenter
                spacing: 16

                ClockWidget {
                    // now using the time from timeSource
                    time: timeSource.time
                    Layout.alignment: Qt.AlignVCenter
                }

                Workspaces {
                    Layout.alignment: Qt.AlignVCenter
                }

            }

        }

    }

}
