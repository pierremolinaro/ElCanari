//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_SymbolOval_strokeBezierPath (
       _ self_x : Int,                      
       _ self_y : Int,                      
       _ self_width : Int,                  
       _ self_height : Int
) -> NSBezierPath {
//--- START OF USER ZONE 2
  let r = NSRect (
    x: canariUnitToCocoa (self_x),
    y: canariUnitToCocoa (self_y),
    width: canariUnitToCocoa (self_width),
    height: canariUnitToCocoa (self_height)
  )
  return NSBezierPath (ovalIn: r)
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
