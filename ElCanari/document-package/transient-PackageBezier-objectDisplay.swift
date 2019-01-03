//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_PackageBezier_objectDisplay (
       _ self_x1 : Int,                     
       _ self_y1 : Int,                     
       _ self_x2 : Int,                     
       _ self_y2 : Int,                     
       _ self_cpx1 : Int,                   
       _ self_cpy1 : Int,                   
       _ self_cpx2 : Int,                   
       _ self_cpy2 : Int,                   
       _ prefs_packageColor : NSColor,      
       _ prefs_packageDrawingWidthMultipliedByTen : Int
) -> EBShape {
//--- START OF USER ZONE 2
  let bp = NSBezierPath ()
  bp.move (to: CGPoint (x: canariUnitToCocoa (self_x1), y: canariUnitToCocoa (self_y1)))
  bp.curve (
    to: CGPoint (x: canariUnitToCocoa (self_x2), y: canariUnitToCocoa (self_y2)),
    controlPoint1: CGPoint (x: canariUnitToCocoa (self_cpx1), y: canariUnitToCocoa (self_cpy1)),
    controlPoint2: CGPoint (x: canariUnitToCocoa (self_cpx2), y: canariUnitToCocoa (self_cpy2))
  )
  bp.lineWidth = CGFloat (prefs_packageDrawingWidthMultipliedByTen) / 10.0
  bp.lineCapStyle = .round
  return EBStrokeBezierPathShape ([bp], prefs_packageColor)
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
