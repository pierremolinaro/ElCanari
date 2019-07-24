//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_ProjectRoot_trackLengthString (
       _ self_mBoardObjects_trackLength : [BoardObject_trackLength],
       _ self_mTrackLengthUnit : Int
) -> String {
//--- START OF USER ZONE 2
        var trackLengthInCanariUnit = 0.0
        for object in self_mBoardObjects_trackLength {
          if let length = object.trackLength {
            trackLengthInCanariUnit += length
          }
        }
        let trackLength = trackLengthInCanariUnit / Double (self_mTrackLengthUnit)
        return "\(String (format: "%.3f", trackLength))"
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————