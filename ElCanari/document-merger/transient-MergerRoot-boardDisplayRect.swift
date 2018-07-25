//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_MergerRoot_boardDisplayRect (
       _ self_automaticBoardSize : Bool,    
       _ self_boardManualWidth : Int,       
       _ self_boardManualHeight : Int,      
       _ self_boardInstances_instanceRect : [MergerBoardInstance_instanceRect]
) -> CanariBoardRect {
//--- START OF USER ZONE 2
  //--- Automatic size
    var r = CanariBoardRect () // Empty rect
    for board in self_boardInstances_instanceRect {
      if let rect = board.instanceRect {
        r = r.union (rect)
      }
    }
  //--- Add manual size, id selected
    if !self_automaticBoardSize {
      let manualBoardRect = CanariBoardRect (left:0, bottom:0, width: self_boardManualWidth, height: self_boardManualHeight)
      r = r.union (manualBoardRect)
    }
    return r
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————