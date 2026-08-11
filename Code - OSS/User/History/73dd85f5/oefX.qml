
//import qs.modules.ii.dock
//import qs.modules.ii.lock


//import qs.modules.ii.onScreenDisplay
//import qs.modules.ii.onScreenKeyboard

//import qs.modules.ii.polkit
//import qs.modules.ii.sessionScreen
//import qs.modules.ii.sidebarLeft



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
import QtQuick
import Quickshell

Scope {
    
    //PanelLoader { extraCondition: Config.options.dock.enable; component: Dock {} }
    //PanelLoader { component: Lock {} }

    
    //PanelLoader { component: OnScreenDisplay {} }
    //PanelLoader { component: OnScreenKeyboard {} }
    
    //PanelLoader { component: Polkit {} }
    
    //PanelLoader { component: SessionScreen {} }
    //PanelLoader { component: SidebarLeft {} }
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
    Component.onCompleted: {
        console.log("GraSoFamily LOADED");
    }

    PanelLoader {
        component: Bar {
        }

    }

}
