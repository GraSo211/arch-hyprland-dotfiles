

import "../common"
import "../modules/background"
import "../modules/bar"
import "../modules/cheatsheet"
import "../modules/overview"
import "../modules/wallpaperSelector" 
import "../modules/notificationPopup"
import "../modules/overlay"
import "../modules/sidebarRight"
import "../modules/mediaControls"
import "../modules/regionSelector"
import "../modules/screenCorners"
import "../modules/polkit"
import "../modules/dock"
import "../modules/onScreenDisplay"
import "../modules/onScreenKeyboard"
import "../modules/sessionScreen"
import "../modules/sidebarLeft"
//import qs.modules.ii.lock
import QtQuick
import Quickshell

Scope {
    
    
    //PanelLoader { component: Lock {} }


    PanelLoader { component: Background {} }
    PanelLoader { component: Cheatsheet {} }
    PanelLoader { component: Overview {} }
    PanelLoader { component: WallpaperSelector {} }
    PanelLoader { component: NotificationPopup {} }
    PanelLoader { component: Overlay {} }
    PanelLoader { component: SidebarRight {} }
    PanelLoader { component: MediaControls {} }
    PanelLoader { component: RegionSelector {} }
    PanelLoader { component: ScreenCorners {} }
    PanelLoader { component: Polkit {} }
    PanelLoader { extraCondition: Config.options.dock.enable; component: Dock {} }
    PanelLoader { component: OnScreenDisplay {} }
    PanelLoader { component: OnScreenKeyboard {} }
    PanelLoader { component: SessionScreen {} }
    PanelLoader { component: SidebarLeft {} }
    Component.onCompleted: {
        console.log("GraSoFamily LOADED");
    }

    PanelLoader {
        component: Bar {
        }

    }

}
