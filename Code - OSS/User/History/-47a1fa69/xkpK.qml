import Quickshell
import Quickshell.Hyprland


Scope {
    id:bar
    PanelWindow{
        implicitHeight:32
        anchors{
            top:true
            left:true
            right:true
        }
        color: "#ffffff"
        HyprlandWindow.opacity:0.8

    }
}