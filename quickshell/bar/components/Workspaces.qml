import QtQuick
import Quickshell.Hyprland

Row{
 
    spacing: bar.dynamicSpacing
    
    Repeater{
        model: Hyprland.workspaces.values
        Rectangle{
            required property int index
            required property var modelData
            
            width: 20
            height: 20

            readonly property bool isFocused: modelData === Hyprland.focusedWorkspace
            color: isFocused ? '#2367ce' : '#353642'
            
            radius: 10
            
            
            Text{
                anchors.centerIn: parent    
                text: `${index + 1}`                 
                color: '#f6f6f6'
                font.family:shellRoot.mainFont
            }
        }

    }

 }