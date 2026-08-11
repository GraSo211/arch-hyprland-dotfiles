import QtQuick
import Quickshell
import QtQuick.Layouts
import "components/"


Variants {
    model: Quickshell.screens
    PanelWindow {
        id:bar

        required property var modelData
        readonly property bool isSmallScreen: modelData.width < 1600
            readonly property real dynamicSpacing: isSmallScreen ? 3 : 8
                screen: modelData

                anchors {
                    top:true
                    left:true
                    right:true
                }

                implicitHeight: 40

                color: "transparent"


                Rectangle {

                    id:topRect
                    height: 40

                    anchors {
                        top: parent.top
                        left: parent.left
                        right: parent.right
                    }

                    color: 'transparent'
                    topLeftRadius:80
                    topRightRadius:80


                    // IZQUIERDA
                    WindowTitle {}


                    // CENTRO
                    Rectangle {
                        color: '#b6171616'


                        width: isSmallScreen? parent.width/2 : parent.width/3
                        height:parent.height
                        anchors {
                            verticalCenter: parent.verticalCenter
                            horizontalCenter: parent.horizontalCenter
                        }

                        bottomLeftRadius:80
                        bottomRightRadius:80



                        // WORKSPACES
                        Workspaces {
                            anchors.verticalCenter: parent.verticalCenter
                            anchors.left: parent.left
                            anchors.leftMargin: 20
                        }



                        // CLOCK
                        Clock {
                            anchors.verticalCenter: parent.verticalCenter
                            anchors.horizontalCenter: parent.horizontalCenter
                        }


                        // PROCESS
                        Wlogout {
                            anchors.right: parent.right

                            anchors.verticalCenter: parent.verticalCenter
                            anchors.rightMargin: 20
                        }


                    }


                    // DERECHA
                    PerformanceIndicators{}

                }
            }

        }


