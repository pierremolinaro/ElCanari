//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//----------------------------------------------------------------------------------------------------------------------

func transient_BoardTrack_trackLength (
       _ self_mConnectorP1_location : CanariPoint?,
       _ self_mConnectorP2_location : CanariPoint?
) -> Double {
//--- START OF USER ZONE 2
       if let p1 = self_mConnectorP1_location, let p2 = self_mConnectorP2_location {
         return CanariPoint.squareOfCanariDistance (p1, p2).squareRoot()
       }else{
         return 0.0
       }
//--- END OF USER ZONE 2
}

//----------------------------------------------------------------------------------------------------------------------
