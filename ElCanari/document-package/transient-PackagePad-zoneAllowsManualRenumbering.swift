//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//----------------------------------------------------------------------------------------------------------------------

func transient_PackagePad_zoneAllowsManualRenumbering (
       _ self_zone_zoneNumbering : PadNumbering?
) -> Bool {
//--- START OF USER ZONE 2
   if let zoneNumbering = self_zone_zoneNumbering {
     return zoneNumbering == .noNumbering
   }else{
     return false
   }
//--- END OF USER ZONE 2
}

//----------------------------------------------------------------------------------------------------------------------
