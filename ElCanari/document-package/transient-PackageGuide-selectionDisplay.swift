//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_PackageGuide_selectionDisplay (
       _ self_x1 : Int,                       
       _ self_y1 : Int,                       
       _ self_x2 : Int,                       
       _ self_y2 : Int
) -> EBShape {
//--- START OF USER ZONE 2
  let p1 = CGPoint (x: canariUnitToCocoa (self_x1), y: canariUnitToCocoa (self_y1))
  let p2 = CGPoint (x: canariUnitToCocoa (self_x2), y: canariUnitToCocoa (self_y2))
  let bp = NSBezierPath ()
  bp.move (to: p1)
  bp.line (to: p2)
  bp.lineWidth = 0.25
  bp.lineCapStyle = .round
  let shape = EBShape ()
  shape.append (EBStrokeBezierPathShape ([bp], NSColor.cyan))
  shape.append (EBKnobShape (at: p1, index: PACKAGE_GUIDE_ENDPOINT_1, .circ))
  shape.append (EBKnobShape (at: p2, index: PACKAGE_GUIDE_ENDPOINT_2, .circ))
  return shape
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
