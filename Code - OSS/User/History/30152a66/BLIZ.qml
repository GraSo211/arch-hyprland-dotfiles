import QtQuick
import QtQuick.Layouts
import Quickshell

Item{
    RowLayout{
        id:leftRow
        anchors.left: parent.left
        anchors.verticalCenter: parent.verticalCenter
        spacing:4
        Text{
            text:"hola"
        }
    }
    Row{
        id:hRow
    }
}