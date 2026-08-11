import "./modules/"
import Quickshell
//@ prama UseQApplication
import QtQuick

Shellroot {
    id: root

    Loader {
        active: true

        sourceComponent: Bar {
        }

    }

}
