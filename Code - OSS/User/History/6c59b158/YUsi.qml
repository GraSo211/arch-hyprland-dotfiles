//@ pragma UseQApplication
import QtQuick
import "./modules/"
import Quickshell
ShellRoot {
    id: root

    Loader {
        active: true
        sourceComponent: Bar {}

    }

}
