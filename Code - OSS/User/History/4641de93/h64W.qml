import QtQuick
// Bar.qml
import Quickshell
import "widgets/"

PanelWindow {
    anchors { top: true; left: true; right: true }
    implicitHeight: 48

    Item {
        anchors.fill: parent
        anchors.margins: 8

        Rectangle {
            anchors.fill: parent
            radius: 15
            color: "#1a1a1a"

            RowLayout {
                anchors.left: parent.left
                anchors.verticalCenter: parent.verticalCenter
                spacing: 8
                leftPadding: 16

                Repeater {
                    model: Hyprland.workspaces

                    delegate: Rectangle {
                        Layout.preferredWidth: 32
                        Layout.preferredHeight: 24
                        color: modelData.active ? "#4a9eff" : "#333333"

                        MouseArea {
                            anchors.fill: parent
                            onClicked: Hyprland.dispatch("workspace " + modelData.id)
                        }
                    }
                }
            }

            Text {
                anchors.right: parent.right
                anchors.verticalCenter: parent.verticalCenter
                anchors.rightMargin: 16
                text: Qt.formatDateTime(new Date(), "HH:mm")
            }
        }
    }
}
