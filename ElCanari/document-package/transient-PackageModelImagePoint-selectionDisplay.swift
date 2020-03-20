//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_PackageModelImagePoint_selectionDisplay (
       _ self_mX : Int,                                 
       _ self_mY : Int
) -> EBShape {
//--- START OF USER ZONE 2
  var shape = EBShape ()
  let x = canariUnitToCocoa (self_mX)
  let y = canariUnitToCocoa (self_mY)
  let RADIUS_IN_COCOA_UNIT : CGFloat = 10.0
  let r = NSRect (center: NSPoint (x: x, y: y), size: NSSize (width: RADIUS_IN_COCOA_UNIT * 2.0, height: RADIUS_IN_COCOA_UNIT * 2.0))
  var bp = EBBezierPath (ovalIn: r)
  bp.lineWidth = 1.0
  shape.add (stroke: [bp], .cyan)
  return shape

//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
