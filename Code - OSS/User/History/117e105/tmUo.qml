pragma ComponentBehavior: Bound
import "../../services"
import "../../common"
import "../../common/widgets"
import QtQuick
import QtQuick.Layouts
import Quickshell
import Quickshell.Bluetooth
import "./crosshair"
import qs.modules.ii.overlay.volumeMixer
import qs.modules.ii.overlay.floatingImage
import qs.modules.ii.overlay.fpsLimiter
import qs.modules.ii.overlay.recorder
import qs.modules.ii.overlay.resources
import qs.modules.ii.overlay.notes

DelegateChooser {
    id: root
    role: "identifier"

    DelegateChoice { roleValue: "crosshair"; Crosshair {} }
    DelegateChoice { roleValue: "floatingImage"; FloatingImage {} }
    DelegateChoice { roleValue: "fpsLimiter"; FpsLimiter {} }
    DelegateChoice { roleValue: "recorder"; Recorder {} }
    DelegateChoice { roleValue: "resources"; Resources {} }
    DelegateChoice { roleValue: "notes"; Notes {} }
    DelegateChoice { roleValue: "volumeMixer"; VolumeMixer {} }
}
