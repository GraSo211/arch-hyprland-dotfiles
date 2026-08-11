import Quickshell
import "bar/"
import "Services/"

ShellRoot {
    id: shellRoot
    
    readonly property string mainFont: "Montserrat" 
    
    // services
    SysMonitor {
        id: sysMonitor
    }


    

    // components
    Bar {
        
    }

}


