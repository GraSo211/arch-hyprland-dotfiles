import "./modules/"
import Quickshell
//@ prama UseQApplication
import qtQuick

shellroot {
    id: root

    Loader {
        active: true

        sourceComponent: Bar {
        }

    }

}
