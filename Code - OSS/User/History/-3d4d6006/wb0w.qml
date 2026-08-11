import qs.services
import qs.modules.common
import qs.modules.common.models.quickToggles
import qs.modules.common.functions
import qs.modules.common.widgets
import "../../../../common/functions"
import "../../../../common/models/quickToggles"
import "../../../../services"
import "../../../../common"
import "../../../../common/widgets"
import QtQuick

AndroidQuickToggleButton {
    toggleModel: IdleInhibitorToggle {}
}

