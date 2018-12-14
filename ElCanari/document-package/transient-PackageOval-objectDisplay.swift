//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_PackageOval_objectDisplay (
       _ self_x : Int,                    
       _ self_y : Int,                    
       _ self_width : Int,                
       _ self_height : Int,               
       _ prefs_packageColor : NSColor,    
       _ prefs_packageDrawingWidthMultipliedByTen : Int
) -> EBShape {
//--- START OF USER ZONE 2
  let r = CGRect (
    x: canariUnitToCocoa (self_x),
    y: canariUnitToCocoa (self_y),
    width: canariUnitToCocoa (self_width),
    height: canariUnitToCocoa (self_height)
  )
  let bp = NSBezierPath (ovalIn: r)
  bp.lineWidth = CGFloat (prefs_packageDrawingWidthMultipliedByTen) / 10.0
  bp.lineCapStyle = .round
  let shape = EBShape ()
  shape.append (EBStrokeBezierPathShape ([bp], prefs_packageColor))
  return shape

//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
