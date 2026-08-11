import QtQuick
import QtQuick.Layouts
import Quickshell

Item{
    RowLayout{
        id:leftRow
        anchors.left: parent.left
        anchors.verticalCenter: parent.verticalCenter
        spacing:10
        // poner debajo los widgets
        Text{
            text:"hola"
        }
    }
    Row{
        id:centerRow
        anchors.left: parent.center
        Text{
            text:"hola"
        }

    }
}