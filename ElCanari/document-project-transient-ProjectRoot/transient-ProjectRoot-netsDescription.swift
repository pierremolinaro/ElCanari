//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//----------------------------------------------------------------------------------------------------------------------

func transient_ProjectRoot_netsDescription (
       _ self_mNetClasses_netsDescription : [NetClassInProject_netsDescription]
) -> NetInfoArray {
//--- START OF USER ZONE 2
        var array = NetInfoArray ()
        for netClass in self_mNetClasses_netsDescription {
          if let d = netClass.netsDescription {
            array += d
          }
        }
        return array
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
