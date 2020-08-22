//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//----------------------------------------------------------------------------------------------------------------------

func transient_SymbolBezierCurve_objectDisplay (
       _ self_x1 : Int,                         
       _ self_y1 : Int,                         
       _ self_x2 : Int,                         
       _ self_y2 : Int,                         
       _ self_cpx1 : Int,                       
       _ self_cpy1 : Int,                       
       _ self_cpx2 : Int,                       
       _ self_cpy2 : Int,                       
       _ prefs_symbolColor : NSColor,           
       _ prefs_symbolDrawingWidthMultipliedByTen : Int
) -> EBShape {
//--- START OF USER ZONE 2
  var bp = EBBezierPath ()
  bp.move (to: NSPoint (x: canariUnitToCocoa (self_x1), y: canariUnitToCocoa (self_y1)))
  bp.curve (
    to: NSPoint (x: canariUnitToCocoa (self_x2), y: canariUnitToCocoa (self_y2)),
    controlPoint1: NSPoint (x: canariUnitToCocoa (self_cpx1), y: canariUnitToCocoa (self_cpy1)),
    controlPoint2: NSPoint (x: canariUnitToCocoa (self_cpx2), y: canariUnitToCocoa (self_cpy2))
  )
  bp.lineWidth = CGFloat (prefs_symbolDrawingWidthMultipliedByTen) / 10.0
  bp.lineCapStyle = .round
  var shape = EBShape ()
  shape.add (stroke: [bp], prefs_symbolColor)
  return shape
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
