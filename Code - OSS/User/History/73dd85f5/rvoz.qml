
//import qs.modules.ii.dock
//import qs.modules.ii.lock
//import qs.modules.ii.mediaControls
//import qs.modules.ii.notificationPopup
//import qs.modules.ii.onScreenDisplay
//import qs.modules.ii.onScreenKeyboard

//import qs.modules.ii.polkit
//import qs.modules.ii.regionSelector
//import qs.modules.ii.screenCorners
//import qs.modules.ii.sessionScreen
//import qs.modules.ii.sidebarLeft
//import qs.modules.ii.sidebarRight
//import qs.modules.ii.overlay
//import qs.modules.ii.verticalBar
//

import "../common"
import "../modules/background"
import "../modules/bar"
import "../modules/cheatsheet"
import "../modules/overview"
import QtQuick
import Quickshell

Scope {
    
    //PanelLoader { extraCondition: Config.options.dock.enable; component: Dock {} }
    //PanelLoader { component: Lock {} }
    //PanelLoader { component: MediaControls {} }
    //PanelLoader { component: NotificationPopup {} }
    //PanelLoader { component: OnScreenDisplay {} }
    //PanelLoader { component: OnScreenKeyboard {} }
    //PanelLoader { component: Overlay {} }
    
    //PanelLoader { component: Polkit {} }
    //PanelLoader { component: RegionSelector {} }
    //PanelLoader { component: ScreenCorners {} }
    //PanelLoader { component: SessionScreen {} }
    //PanelLoader { component: SidebarLeft {} }
    //PanelLoader { component: SidebarRight {} }
    //PanelLoader { extraCondition: Config.options.bar.vertical; component: VerticalBar {} }
    //PanelLoader { component: WallpaperSelector {} }
    PanelLoader { component: Background {} }
    PanelLoader { component: Cheatsheet {} }
    PanelLoader { component: Overview {} }
    Component.onCompleted: {
        console.log("GraSoFamily LOADED");
    }

    PanelLoader {
        extraCondition: !Config.options.bar.vertical

        component: Bar {
        }

    }

}
