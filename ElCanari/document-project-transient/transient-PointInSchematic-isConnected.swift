//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_PointInSchematic_isConnected (
       _ self_mNC_none : Bool,               
       _ self_mSymbol_none : Bool,           
       _ self_mWiresP1s_count : Int,         
       _ self_mWiresP2s_count : Int,         
       _ self_mLabels_count : Int
) -> Bool {
//--- START OF USER ZONE 2
       let symbolCount = self_mSymbol_none ? 0 : 1
       return !self_mNC_none || ((symbolCount + self_mWiresP1s_count + self_mWiresP2s_count + self_mLabels_count) > 1)
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
