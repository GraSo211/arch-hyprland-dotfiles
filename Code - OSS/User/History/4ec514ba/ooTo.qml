import qs
import qs.modules.common
import qs.modules.common.models.quickToggles
import qs.modules.common.widgets
import qs.services

import "../../../../common/models/quickToggles"
import "../../../../services"
import "../../../../common"
import "../../../../common/widgets"
import QtQuick
import Quickshell

AndroidQuickToggleButton {
    id: root

    toggleModel: AudioToggle {}
}
