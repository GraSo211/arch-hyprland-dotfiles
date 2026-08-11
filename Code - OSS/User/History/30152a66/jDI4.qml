import QtQuick
import QtQuick.Layouts
import Quickshell

Item {
    id: root

    RowLayout {
        id: leftRow

        anchors.left: parent.left
        anchors.verticalCenter: parent.verticalCenter
        spacing: 4

        // poner debajo los widgets
        // nombre de la ventana
        ActiveWindow {
        }

    }

    Row {
        id: middleSection

        spacing: 4

        anchors {
            top: parent.top
            bottom: parent.bottom
            horizontalCenter: parent.horizontalCenter
        }

        BarGroup {
            id: leftCenterGroup

            anchors.verticalCenter: parent.verticalCenter
            implicitWidth: root.centerSideModuleWidth

            Resources {
                alwaysShowAllResources: root.useShortenedForm === 2
                Layout.fillWidth: root.useShortenedForm === 2
            }

            Media {
                visible: root.useShortenedForm < 2
                Layout.fillWidth: true
            }

        }

    }

    RowLayout {
        id: rightRow

        anchors.right: parent.right
        anchors.verticalCenter: parent.verticalCenter
        spacing: 4

        // poner debajo los widgets
        Text {
            text: "hoal"
        }

    }

}
