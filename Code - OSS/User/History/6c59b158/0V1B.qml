//@ pragma UseQApplication
import QtQuick
import "./modules/"
import Quickshell
Shellroot {
    id: root

    Loader {
        active: true

        sourceComponent: Bar {
        }

    }

}
