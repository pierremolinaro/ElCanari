//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//----------------------------------------------------------------------------------------------------------------------

func transient_BoardConnector_netNameFromComponentPad (
       _ self_mComponent_padNetDictionary : PadNetDictionary?,
       _ self_mComponentPadName : String
) -> String {
//--- START OF USER ZONE 2
       if let netName = self_mComponent_padNetDictionary? [self_mComponentPadName] {
         return netName
       }else{
         return "—"
       }
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
