import qs.modules.common
import qs.modules.common.models.quickToggles
import qs.modules.common.widgets
import qs.
import "../../../../common/models/quickToggles"
import "../../../../services"
import "../../../../common"
import "../../../../common/widgets"
import QtQuick
import Quickshell
import Quickshell.Io

AndroidQuickToggleButton {
    id: root

    toggleModel: CloudflareWarpToggle {}
}
