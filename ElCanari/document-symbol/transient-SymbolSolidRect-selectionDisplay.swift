//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_SymbolSolidRect_selectionDisplay (
       _ self_x : Int,                           
       _ self_y : Int,                           
       _ self_width : Int,                       
       _ self_height : Int
) -> EBShape {
//--- START OF USER ZONE 2
  let x = canariUnitToCocoa (self_x)
  let y = canariUnitToCocoa (self_y)
  let width = canariUnitToCocoa (self_width)
  let height = canariUnitToCocoa (self_height)
  let shape = EBShape ()
  shape.append (shape: EBKnobShape (at: CGPoint (x: x + width / 2.0, y: y), index: SYMBOL_SOLID_RECT_BOTTOM))
  shape.append (shape: EBKnobShape (at: CGPoint (x: x + width / 2.0, y: y + height), index: SYMBOL_SOLID_RECT_TOP))
  shape.append (shape: EBKnobShape (at: CGPoint (x: x + width, y: y + height / 2.0), index: SYMBOL_SOLID_RECT_RIGHT))
  shape.append (shape: EBKnobShape (at: CGPoint (x: x, y: y + height / 2.0), index: SYMBOL_SOLID_RECT_LEFT))
  return shape
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
