import QtQuick
import Quickshell
import "../common/widgets"
Scope {
    id: root

    Variants {
        // instancia por cada monitor que tengamos
        model: Quickshell.screens

        PanelWindow {
            id: barWindow

            // aplicamos en cada monitor por separado
            required property var modelData

            screen: modelData
            visible: true // en un futuro que podamos activarla y desactivar con variable  global
            implicitHeight: 35
            color: "transparent"

            anchors {
                top: true
                left: true
                right: true
            }

            margins {
                top: 0
                bottom: 3
            }

            Rectangle {
                id: background

                anchors.fill: parent
                color: "#999999"
                radius: 10

                BarContent {
                    anchors.fill: parent
                }

            }

            // Round decorators
            Loader {
                id: roundDecorators

                height: 20
                active: true

                anchors {
                    left: parent.left
                    right: parent.right
                    top: barContent.bottom
                    bottom: undefined
                }


                sourceComponent: Item {
                    implicitHeight: Appearance.rounding.screenRounding

                    RoundCorner {
                        id: leftCorner

                        implicitSize: 20
                        color: showBarBackground ? Appearance.colors.colLayer0 : "#225ffd"
                        corner: RoundCorner.CornerEnum.TopLeft

                        anchors {
                            top: parent.top
                            bottom: parent.bottom
                            left: parent.left
                        }

                        states: State {
                            name: "bottom"
                            when: Config.options.bar.bottom

                            PropertyChanges {
                                leftCorner.corner: RoundCorner.CornerEnum.BottomLeft
                            }

                        }

                    }

                    RoundCorner {
                        id: rightCorner

                        implicitSize: Appearance.rounding.screenRounding
                        color: showBarBackground ? Appearance.colors.colLayer0 : "transparent"
                        corner: RoundCorner.CornerEnum.TopRight

                        anchors {
                            right: parent.right
                            top: !Config.options.bar.bottom ? parent.top : undefined
                            bottom: Config.options.bar.bottom ? parent.bottom : undefined
                        }

                        states: State {
                            name: "bottom"
                            when: Config.options.bar.bottom

                            PropertyChanges {
                                rightCorner.corner: RoundCorner.CornerEnum.BottomRight
                            }

                        }

                    }

                }

            }

        }

    }

}
