//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//----------------------------------------------------------------------------------------------------------------------

func transient_BoardTrack_actualTrackWidth (
       _ self_mNet_netClassTrackWidth : Int?,
       _ self_mUsesCustomTrackWidth : Bool, 
       _ self_mCustomTrackWidth : Int
) -> Int {
//--- START OF USER ZONE 2
        if self_mUsesCustomTrackWidth {
          return self_mCustomTrackWidth
        }else if let w = self_mNet_netClassTrackWidth {
          return w
        }else{
          return 0
        }
//--- END OF USER ZONE 2
}

//----------------------------------------------------------------------------------------------------------------------
