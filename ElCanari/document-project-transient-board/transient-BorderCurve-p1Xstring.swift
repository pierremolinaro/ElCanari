//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_BorderCurve_p1Xstring (
       _ self_mX : Int,               
       _ self_mRoot_mBoardSelectedCurveDisplayUnit : Int?
) -> String {
//--- START OF USER ZONE 2
        if let unit = self_mRoot_mBoardSelectedCurveDisplayUnit {
          return stringFrom (valueInCanariUnit: self_mX, displayUnit: unit)
        }else{
          return "???"
        }
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
