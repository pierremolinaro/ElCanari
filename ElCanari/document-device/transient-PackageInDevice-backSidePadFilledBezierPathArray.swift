//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//----------------------------------------------------------------------------------------------------------------------

func transient_PackageInDevice_backSidePadFilledBezierPathArray (
       _ self_mMasterPads_backSideFilledBezierPathArray : [MasterPadInDevice_backSideFilledBezierPathArray]
) -> BezierPathArray {
//--- START OF USER ZONE 2
   var result = BezierPathArray ()
   for filledBezierPath in self_mMasterPads_backSideFilledBezierPathArray {
     if let bpArray = filledBezierPath.backSideFilledBezierPathArray {
       result.append (bpArray)
     }
   }
   return result
//--- END OF USER ZONE 2
}

//----------------------------------------------------------------------------------------------------------------------
