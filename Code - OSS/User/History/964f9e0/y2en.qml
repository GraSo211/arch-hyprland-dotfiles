import QtQuick
import "../../../../common"
import "../../../../common/widgets"
import "../../../../services"
import Quickshell.Io

QuickToggleButton {
    id: nightLightButton
    toggled: Hyprsunset.active
    buttonIcon: Config.options.light.night.automatic ? "night_sight_auto" : "bedtime"
    onClicked: {
        Hyprsunset.toggle()
    }

    altAction: () => {
        Config.options.light.night.automatic = !Config.options.light.night.automatic
    }

    Component.onCompleted: {
        Hyprsunset.fetchState()
    }
    
    StyledToolTip {
        text: Translation.tr("Night Light | Right-click to toggle Auto mode")
    }
}
