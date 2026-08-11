import QtQuick
import QtQuick.Layouts
import Quickshell

Item{
    RowLayout{
        id:leftRow
        anchors.left: parent.left
        anchors.verticalCenter: parent.verticalCenter
        spacing:4
        // poner debajo los widgets
        Text{
            text:"hola"
        }
        Text{
            text:"chau"
        }
    }
    Row{
        id:centerRow
        anchors.centerIn: parent
        spacing:4
        // poner debajo los widgets
        Text{
            text:"hola"
        }

    }

    RowLayout{
        id:rightRow
        anchors.right: parent.right
        anchors.verticalCenter: parent.verticalCenter
        spacing:4
    }
}