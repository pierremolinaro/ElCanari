//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func computed_BoardTrack_trackDirectionInDegrees (
       _ self_mConnectorP1_location : CanariPoint?,
       _ self_mConnectorP2_location : CanariPoint?
) -> Int {
//--- START OF USER ZONE 2
    var directionInDegrees = 0
    if let p1 = self_mConnectorP1_location, let p2 = self_mConnectorP2_location {
      let angle = CanariPoint.angleInRadian (p1, p2)
      directionInDegrees = Int ((Double (angle) * 180_000.0 / .pi).rounded ())
    }
    return directionInDegrees
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
