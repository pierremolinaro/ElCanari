//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//----------------------------------------------------------------------------------------------------------------------

func transient_ProjectRoot_viaCountString (
       _ self_mBoardObjects_isVia : [BoardObject_isVia]
) -> String {
//--- START OF USER ZONE 2
        var viaCount = 0
        for object in self_mBoardObjects_isVia {
          if let isVia = object.isVia, isVia {
            viaCount += 1
          }
        }
        return "\(viaCount)"
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
