
import QtQuick
import QtQuick.Layouts
RowLayout {

    spacing:5

    anchors {
        right: parent.right
        verticalCenter: parent.verticalCenter
        rightMargin:30
    }
    Rectangle {
        color:'#6a6b6767'
        width:30
        height:30


        radius: width/2
        Text {

            anchors.centerIn: parent


            text: ""
            font.family: "JetBrainsMono Nerd Font"
            font.pixelSize: 18
            color: 'white'
        }
    }


    Text {
        color:"white"
        text:`${sysMonitor.ramUsagePercent.toFixed()}`
        font.pixelSize:18
        font.family:shellRoot.mainFont
    }

    Rectangle {
        color:'#6a6b6767'
        width:30
        height:30


        radius: width/2
        Text {

            anchors.centerIn: parent


            text: "󰓡"
            font.family: "JetBrainsMono Nerd Font"
            font.pixelSize: 22
            color: 'white'
        }
    }

    Text {
        color:"white"
        text:`${sysMonitor.swapUsagePercent.toFixed()}`
        font.pixelSize:18
        font.family:shellRoot.mainFont
    }

    Rectangle {
        color:'#6a6b6767'
        width:30
        height:30


        radius: width/2
        Text {

            anchors.centerIn: parent


            text: ""
            font.family: "JetBrainsMono Nerd Font"
            font.pixelSize: 20
            color: 'white'
        }
    }

    Text {
        color:"white"
        text:`${sysMonitor.cpuUsagePercent.toFixed()}`
        font.pixelSize:18
        font.family:shellRoot.mainFont
    }
    Rectangle {
        color:'#6a6b6767'
        width:30
        height:30


        radius: width/2
        Text {

            anchors.centerIn: parent


            text: ""
            font.family: "JetBrainsMono Nerd Font"
            font.pixelSize: 20
            color: 'white'
        }
    }

    Text {
        color:"white"
        text:`${sysMonitor.cpuTemp.toFixed()}`
        font.pixelSize:18
        font.family:shellRoot.mainFont
    }

}