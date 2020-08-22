//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//----------------------------------------------------------------------------------------------------------------------

func transient_SymbolText_objectDisplay (
       _ self_x : Int,                   
       _ self_y : Int,                   
       _ self_text : String,             
       _ self_horizontalAlignment : HorizontalAlignment,
       _ prefs_symbolColor : NSColor,    
       _ prefs_pinNameFont : NSFont
) -> EBShape {
//--- START OF USER ZONE 2
    let textAttributes : [NSAttributedString.Key : Any] = [
      NSAttributedString.Key.font : prefs_pinNameFont,
      NSAttributedString.Key.foregroundColor : prefs_symbolColor
    ]
    let origin = NSPoint (x: canariUnitToCocoa (self_x), y: canariUnitToCocoa (self_y))
    var shape = EBShape ()
    shape.add (text: self_text, origin, textAttributes, self_horizontalAlignment.ebTextShapeHorizontalAlignment, .center)
    return shape
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
