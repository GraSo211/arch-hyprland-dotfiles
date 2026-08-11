import QtQuick
import QtQuick.Layouts
import Quickshell

Item{
    RowLayout{
        id:leftRow
        anchors.left: parent.left
        anchors.verticalCenter: parent.verticalCenter

        // poner debajo los widgets
        Text{
            text:"hola"
        }
    }
    Row{
        id:centerRow
        anchors.centerIn: parent

        // poner debajo los widgets
        Text{
            text:"hola"
        }

    }

    RowLayout{
        id:rightRow
        anchors.right: parent.right
    }
}