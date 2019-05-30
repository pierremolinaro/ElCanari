//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_MergerBoardInstance_instanceRect (
       _ self_x : Int,                           
       _ self_y : Int,                           
       _ self_myModel_modelWidth : Int?,         
       _ self_myModel_modelHeight : Int?,        
       _ self_instanceRotation : QuadrantRotation
) -> CanariRect {
//--- START OF USER ZONE 2
  switch self_instanceRotation {
  case .rotation0, .rotation180 :
    return CanariRect (left:self_x, bottom:self_y, width: self_myModel_modelWidth!, height:self_myModel_modelHeight!)
  case .rotation90, .rotation270 :
    return CanariRect (left:self_x, bottom:self_y, width: self_myModel_modelHeight!, height: self_myModel_modelWidth!)
  }
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
