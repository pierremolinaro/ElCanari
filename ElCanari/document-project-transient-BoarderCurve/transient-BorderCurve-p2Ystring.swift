//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//----------------------------------------------------------------------------------------------------------------------

func transient_BorderCurve_p2Ystring (
       _ self_mNext_mY : Int?,        
       _ self_mRoot_mBoardSelectedCurveDisplayUnit : Int?
) -> String {
//--- START OF USER ZONE 2
        if let y = self_mNext_mY, let unit = self_mRoot_mBoardSelectedCurveDisplayUnit {
          return stringFrom (valueInCanariUnit: y, displayUnit: unit)
        }else{
          return "???"
        }
//--- END OF USER ZONE 2
}

//----------------------------------------------------------------------------------------------------------------------
