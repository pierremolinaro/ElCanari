//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_SymbolSolidOval_selectionDisplay (
       _ self_x : Int,                           
       _ self_y : Int,                           
       _ self_width : Int,                       
       _ self_height : Int
) -> EBShape {
//--- START OF USER ZONE 2
  var shape = EBShape ()
  let x = canariUnitToCocoa (self_x)
  let y = canariUnitToCocoa (self_y)
  let width = canariUnitToCocoa (self_width)
  let height = canariUnitToCocoa (self_height)
  var bp = EBBezierPath (ovalIn: NSRect (x: x, y:y, width: width, height: height))
  bp.lineWidth = 0.25
  shape.add (stroke: [bp], NSColor.cyan)
  shape.add (knobAt:  NSPoint (x: x + width / 2.0, y: y), knobIndex: SYMBOL_SOLID_OVAL_BOTTOM, .circ, 2.0)
  shape.add (knobAt:  NSPoint (x: x + width / 2.0, y: y + height), knobIndex: SYMBOL_SOLID_OVAL_TOP, .circ, 2.0)
  shape.add (knobAt:  NSPoint (x: x + width, y: y + height / 2.0), knobIndex: SYMBOL_SOLID_OVAL_RIGHT, .circ, 2.0)
  shape.add (knobAt:  NSPoint (x: x, y: y + height / 2.0), knobIndex: SYMBOL_SOLID_OVAL_LEFT, .circ, 2.0)
  return shape

//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
