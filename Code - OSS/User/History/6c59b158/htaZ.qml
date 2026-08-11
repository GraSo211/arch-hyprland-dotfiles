import "./modules/"
import Quickshell
//@ prama UseQApplication
import qtQuick

Shellroot {
    id: root

    Loader {
        active: true

        sourceComponent: Bar {
        }

    }

}
