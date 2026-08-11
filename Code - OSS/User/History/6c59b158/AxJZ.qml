import QtQuick
import Quickshell
import Quickshell.Io

import "./modules/bar"
ShellRoot {
	Bar{
        modelData: screen.modelData
    }
}