//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_PointInSchematics_isConnected (
       _ self_mNC_none : Bool,                
       _ self_mWiresP1s_count : Int,          
       _ self_mWiresP2s_count : Int,          
       _ self_mLabels_count : Int
) -> Bool {
//--- START OF USER ZONE 2
       return !self_mNC_none || ((self_mWiresP1s_count + self_mWiresP2s_count + self_mLabels_count) > 1)
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
