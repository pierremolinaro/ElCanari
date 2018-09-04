//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_MergerRoot_boardRect (
       _ self_automaticBoardSize : Bool,
       _ self_boardManualWidth : Int,
       _ self_boardManualHeight : Int,
       _ self_boardInstances_instanceRect : [MergerBoardInstance_instanceRect]
) -> CanariHorizontalRect {
//--- START OF USER ZONE 2
    if self_automaticBoardSize {
      var r = CanariHorizontalRect () // Empty rect
      for board in self_boardInstances_instanceRect {
        if let rect = board.instanceRect {
          r = r.union (rect)
        }
      }
      return CanariHorizontalRect (left:0, bottom:0, width: r.left + r.width, height: r.bottom + r.height)
//    }else if self_boardInstances_instanceRect.count == 0 {
//      return CanariHorizontalRect ()  // Empty rect
    }else{
      return CanariHorizontalRect (left:0, bottom:0, width: self_boardManualWidth, height: self_boardManualHeight)
    }
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
