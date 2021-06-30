//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_SymbolPin_objectDisplay (
       _ self_xPin : Int,               
       _ self_yPin : Int,               
       _ self_xName : Int,              
       _ self_yName : Int,              
       _ self_xNumber : Int,            
       _ self_yNumber : Int,            
       _ self_name : String,            
       _ self_pinNameIsDisplayedInSchematics : Bool,
       _ self_nameHorizontalAlignment : HorizontalAlignment,
       _ self_numberHorizontalAlignment : HorizontalAlignment,
       _ prefs_symbolColor : NSColor,   
       _ prefs_pinNameFont : NSFont
) -> EBShape {
//--- START OF USER ZONE 2
    var shape = EBShape ()
  //--- Pin
    let pinRect = NSRect (
      x: canariUnitToCocoa (self_xPin) - SYMBOL_GRID_IN_COCOA_UNIT,
      y: canariUnitToCocoa (self_yPin) - SYMBOL_GRID_IN_COCOA_UNIT,
      width: SYMBOL_GRID_IN_COCOA_UNIT * 2.0,
      height: SYMBOL_GRID_IN_COCOA_UNIT * 2.0
    )
    let filledBP = EBBezierPath (ovalIn: pinRect)
    shape.add (filled: [filledBP], prefs_symbolColor)
  //--- Name
    let nameTextAttributes : [NSAttributedString.Key : Any] = [
      NSAttributedString.Key.font : prefs_pinNameFont,
      NSAttributedString.Key.foregroundColor : self_pinNameIsDisplayedInSchematics ? NSColor.black : NSColor.lightGray
    ]
    let labelOrigin = NSPoint (x: canariUnitToCocoa (self_xName), y: canariUnitToCocoa (self_yName))
    let label = (self_name == "") ? "?" : self_name
    shape.add (text: label, labelOrigin, nameTextAttributes, self_nameHorizontalAlignment.ebTextShapeHorizontalAlignment, .center)
  //--- Number
    let numberTextAttributes : [NSAttributedString.Key : Any] = [
      NSAttributedString.Key.font : prefs_pinNameFont,
      NSAttributedString.Key.foregroundColor : NSColor.black
    ]
    let numberOrigin = NSPoint (x: canariUnitToCocoa (self_xNumber), y: canariUnitToCocoa (self_yNumber))
    shape.add (text: "##", numberOrigin, numberTextAttributes, self_numberHorizontalAlignment.ebTextShapeHorizontalAlignment, .center)
    return shape
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
