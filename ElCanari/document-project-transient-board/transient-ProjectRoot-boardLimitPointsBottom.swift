//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_ProjectRoot_boardLimitPointsBottom (
       _ self_mBorderCurves_mY : [BorderCurve_mY], 
       _ self_mBoardPointsBoundingBoxUnit : Int
) -> String {
//--- START OF USER ZONE 2
        var minY = Int.max
        for p in self_mBorderCurves_mY {
          minY = min (minY, p.mY)
        }
        return stringFrom (valueInCanariUnit: minY, displayUnit: self_mBoardPointsBoundingBoxUnit)
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
