//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_ProjectRoot_trackCountString (
       _ self_mBoardObjects_trackLength : [BoardObject_trackLength]
) -> String {
//--- START OF USER ZONE 2
        var trackCount = 0
        for object in self_mBoardObjects_trackLength {
          if object.trackLength != nil {
            trackCount += 1
          }
        }
        return "\(trackCount)"
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————