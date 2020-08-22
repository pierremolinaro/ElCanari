//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//----------------------------------------------------------------------------------------------------------------------

func transient_PackagePad_displayedPadName (
       _ self_padNumber : Int,              
       _ self_zone_zoneName : String?,      
       _ self_zone_displayZoneName : Bool?
) -> String {
//--- START OF USER ZONE 2
        var padString = ""
        if (self_padNumber > 0) && (self_padNumber < VERY_LARGE_PAD_NUMBER) {
          if let display = self_zone_displayZoneName, display, let s = self_zone_zoneName {
            padString += s + ":"
          }
          padString += "\(self_padNumber)"
        }
        return padString
//--- END OF USER ZONE 2
}

//----------------------------------------------------------------------------------------------------------------------
