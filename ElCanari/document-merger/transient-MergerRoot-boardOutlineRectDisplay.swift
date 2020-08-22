//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//----------------------------------------------------------------------------------------------------------------------

func transient_MergerRoot_boardOutlineRectDisplay (
       _ self_boardRect : CanariRect,              
       _ self_boardLimitWidth : Int,               
       _ prefs_mergerBoardViewDisplayBoardLimits : Bool,
       _ prefs_mergerColorBoardLimits : NSColor
) -> EBShape {
//--- START OF USER ZONE 2
    var shape = EBShape ()
    if prefs_mergerBoardViewDisplayBoardLimits && !self_boardRect.isEmpty {
      let limitWidth = canariUnitToCocoa (self_boardLimitWidth)
      let r = self_boardRect.cocoaRect
      var bp = EBBezierPath (rect: r.insetBy (dx: limitWidth / 2.0, dy: limitWidth / 2.0))
      bp.lineWidth = limitWidth
      bp.lineJoinStyle = .round
      shape.add (stroke: [bp], prefs_mergerColorBoardLimits)
    }
  //---
    return shape
//--- END OF USER ZONE 2
}

//----------------------------------------------------------------------------------------------------------------------
