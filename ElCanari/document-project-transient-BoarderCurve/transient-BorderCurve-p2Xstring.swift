//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_BorderCurve_p2Xstring (
       _ self_mNext_mX : Int?,        
       _ self_mRoot_mBoardSelectedCurveDisplayUnit : Int?
) -> String {
//--- START OF USER ZONE 2
        if let x = self_mNext_mX, let unit = self_mRoot_mBoardSelectedCurveDisplayUnit {
          return stringFrom (valueInCanariUnit: x, displayUnit: unit)
        }else{
          return "???"
        }
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
