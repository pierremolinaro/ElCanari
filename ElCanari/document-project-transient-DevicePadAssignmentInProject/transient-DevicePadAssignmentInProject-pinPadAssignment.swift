//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_DevicePadAssignmentInProject_pinPadAssignment (
       _ self_mPadName : String,                              
       _ self_mPin_mSymbolInstanceName : String?,             
       _ self_mPin_mPinName : String?
) -> ThreeStrings {
//--- START OF USER ZONE 2
       return ThreeStrings (self_mPadName, self_mPin_mSymbolInstanceName ?? "", self_mPin_mPinName ?? "")
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
