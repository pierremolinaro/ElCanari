//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_SymbolSegment_objectDisplay (
       _ self_x1 : Int,                     
       _ self_y1 : Int,                     
       _ self_x2 : Int,                     
       _ self_y2 : Int,                     
       _ prefs_symbolColor : NSColor,       
       _ prefs_symbolDrawingWidthMultipliedByTen : Int
) -> EBShape {
//--- START OF USER ZONE 2
  let bp = NSBezierPath ()
  bp.move (to: CGPoint (x: canariUnitToCocoa (self_x1), y: canariUnitToCocoa (self_y1)))
  bp.line (to: CGPoint (x: canariUnitToCocoa (self_x2), y: canariUnitToCocoa (self_y2)))
  bp.lineWidth = CGFloat (prefs_symbolDrawingWidthMultipliedByTen) / 10.0
  bp.lineCapStyle = .round
  let shape = EBShape ()
  shape.append (shape: EBStrokeBezierPathShape ([bp], prefs_symbolColor))
  return shape
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
