//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_PackageBezier_strokeBezierPath (
       _ self_x1 : Int,                        
       _ self_y1 : Int,                        
       _ self_x2 : Int,                        
       _ self_y2 : Int,                        
       _ self_cpx1 : Int,                      
       _ self_cpy1 : Int,                      
       _ self_cpx2 : Int,                      
       _ self_cpy2 : Int
) -> NSBezierPath {
//--- START OF USER ZONE 2
  let bp = NSBezierPath ()
  bp.move (to: NSPoint (x: canariUnitToCocoa (self_x1), y: canariUnitToCocoa (self_y1)))
  bp.curve (
    to: NSPoint (x: canariUnitToCocoa (self_x2), y: canariUnitToCocoa (self_y2)),
    controlPoint1: NSPoint (x: canariUnitToCocoa (self_cpx1), y: canariUnitToCocoa (self_cpy1)),
    controlPoint2: NSPoint (x: canariUnitToCocoa (self_cpx2), y: canariUnitToCocoa (self_cpy2))
  )
  return bp
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
