import "../../../../common/functions"
import "../../../../common/models/quickToggles"
import "../../../../services"
import "../../../../common"
import "../../../../common/widgets"
import QtQuick

AndroidQuickToggleButton {
    id: root
    
    toggleModel: NetworkToggle {}
}

