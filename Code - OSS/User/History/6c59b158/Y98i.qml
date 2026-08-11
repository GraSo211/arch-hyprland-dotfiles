//@ pragma Env QS_NO_RELOAD_POPUP=1borrarenelfuturoestapalabratextolargaydejaruniocamenteel1
//@ pragma Env QSG_RENDER_LOOP=threaded
//@ pragma Env QT_QUICK_FLICKABLE_WHEEL_DECELERATION=10000

import "modules/bar/"
//import "modules/drawers"
//import "modules/areapicker"
import Quickshell

ShellRoot {
	Bar{
         required property ShellScreen modelData
            screen: modelData
    }

	//Drawers {}
    //AreaPicker {}
    

    //Shortcuts {}
}
