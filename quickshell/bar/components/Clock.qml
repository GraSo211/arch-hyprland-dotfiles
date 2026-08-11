import Quickshell
import QtQuick

Text{
    



    SystemClock{
        id: clock
        precision: SystemClock.Minutes
    }


    text: Qt.formatDateTime(clock.date, "hh:mm")
    color: "white"
    font.pixelSize: 20
    font.family:shellRoot.mainFont
}