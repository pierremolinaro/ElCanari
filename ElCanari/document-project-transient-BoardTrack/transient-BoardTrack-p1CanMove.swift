//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//----------------------------------------------------------------------------------------------------------------------

func transient_BoardTrack_p1CanMove (
       _ self_mManualLockP1 : Bool,  
       _ self_p1ConnectedToSomePad : Bool
) -> Bool {
//--- START OF USER ZONE 2
        return !self_mManualLockP1 && !self_p1ConnectedToSomePad
//--- END OF USER ZONE 2
}

//----------------------------------------------------------------------------------------------------------------------
