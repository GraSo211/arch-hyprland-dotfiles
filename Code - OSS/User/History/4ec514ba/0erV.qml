import qs
import qs.modules.common
import qs.modules.common.models.quickToggles
import qs.modules.common.widget
import "../../../../"
import "../../../../common"
import "../../../../common/widgets"
import "../../../../services"
import "../../../../common/functions"
import qs.services
import QtQuick
import Quickshell

AndroidQuickToggleButton {
    id: root

    toggleModel: AudioToggle {}
}
