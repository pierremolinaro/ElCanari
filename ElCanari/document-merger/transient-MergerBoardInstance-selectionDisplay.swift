//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_MergerBoardInstance_selectionDisplay (
       _ self_instanceRect : CanariRect
) -> EBShape {
//--- START OF USER ZONE 2
  let r : NSRect = self_instanceRect.cocoaRect
  var bp = EBBezierPath (rect: r)
  bp.lineWidth = 0.0
  bp.lineJoinStyle = .round
  var shapes = EBShape ()
  shapes.add (filled: [bp], NSColor.cyan.withAlphaComponent (0.15))
  shapes.add (stroke: [bp], NSColor.cyan)
  return shapes
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
