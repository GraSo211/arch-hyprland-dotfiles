

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
        ActiveWindow {}

    }

    Row {
        id: centerRow

        anchors.centerIn: parent
        spacing: 4

        // poner debajo los widgets
        Text {
            text: "hola"
        }
        Resources{}

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
