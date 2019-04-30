//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_SymbolPin_selectionDisplay (
       _ self_xPin : Int,                  
       _ self_yPin : Int,                  
       _ self_xName : Int,                 
       _ self_yName : Int,                 
       _ self_xNumber : Int,               
       _ self_yNumber : Int,               
       _ self_nameHorizontalAlignment : HorizontalAlignment,
       _ self_numberHorizontalAlignment : HorizontalAlignment
) -> EBShape {
//--- START OF USER ZONE 2
    let shape = EBShape ()
    let pinPoint = NSPoint (x: canariUnitToCocoa (self_xPin), y: canariUnitToCocoa (self_yPin))
    let namePoint = NSPoint (x: canariUnitToCocoa (self_xName), y: canariUnitToCocoa (self_yName))
    let numberPoint = NSPoint (x: canariUnitToCocoa (self_xNumber), y: canariUnitToCocoa (self_yNumber))
    let bp = NSBezierPath ()
    bp.move (to: numberPoint)
    bp.line (to: pinPoint)
    bp.line (to: namePoint)
    bp.lineWidth = 0.25
    bp.lineCapStyle = .round
    shape.append (EBStrokeBezierPathShape ([bp], NSColor.cyan))
  //--- Pin
    shape.append (EBKnobShape (at: pinPoint, index: SYMBOL_PIN_ENDPOINT, .rect, 2.0))
  //--- Name
    shape.append (EBKnobShape (at: namePoint, index: SYMBOL_PIN_LABEL, .circ, 2.0))
  //--- Number
    shape.append (EBKnobShape (at: numberPoint, index: SYMBOL_PIN_NUMBER, .circ, 2.0))
  //---
    return shape
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
