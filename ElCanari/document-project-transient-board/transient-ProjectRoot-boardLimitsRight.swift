//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_ProjectRoot_boardLimitsRight (
       _ self_mBorderPoints_mX : [BorderPoint_mX],
       _ self_mBoardLimitsBoundingBoxUnit : Int
) -> String {
//--- START OF USER ZONE 2
        var maxX = Int.min
        for p in self_mBorderPoints_mX {
          maxX = max (maxX, p.mX)
        }
        return stringFrom (valueInCanariUnit: maxX, displayUnit: self_mBoardLimitsBoundingBoxUnit)
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
