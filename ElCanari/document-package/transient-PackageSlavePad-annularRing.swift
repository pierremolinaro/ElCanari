//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//----------------------------------------------------------------------------------------------------------------------

func transient_PackageSlavePad_annularRing (
       _ self_width : Int,                  
       _ self_height : Int,                 
       _ self_holeWidth : Int,              
       _ self_holeHeight : Int
) -> Int {
//--- START OF USER ZONE 2
    let h = self_height - self_holeHeight
    let w = self_width - self_holeWidth
    return min (w, h) / 2
//--- END OF USER ZONE 2
}

//----------------------------------------------------------------------------------------------------------------------
