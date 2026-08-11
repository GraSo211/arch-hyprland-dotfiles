import "../../../../common/functions"
import "../../../../common/models/quickToggles"
import "../../../../services"
import "../../../../common"
import "../../../../common/widgets"
import QtQuick
import Quickshell
import Quickshell.Bluetooth

AndroidQuickToggleButton {
    id: root
    
    toggleModel: BluetoothToggle {}
}
