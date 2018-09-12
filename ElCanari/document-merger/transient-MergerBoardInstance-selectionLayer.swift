//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_MergerBoardInstance_selectionLayer (
       _ self_instanceRect : CanariHorizontalRect
) -> EBShape {
//--- START OF USER ZONE 2
  let r : NSRect = self_instanceRect.cocoaRect().insetBy (dx: 0.5, dy: 0.5)
  let bp = NSBezierPath (rect: r)
  bp.lineWidth = 1.0
  bp.lineJoinStyle = .roundLineJoinStyle
  let shapes = EBShape ()
  shapes.append (shape: EBFilledBezierPathShape ([bp], NSColor.cyan.withAlphaComponent (0.15)))
  shapes.append (shape: EBStrokeBezierPathShape ([bp], NSColor.cyan))
  return shapes
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
