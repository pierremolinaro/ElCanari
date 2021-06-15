//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//----------------------------------------------------------------------------------------------------------------------

func transient_PackageZone_objectDisplay (
       _ self_x : Int,                    
       _ self_y : Int,                    
       _ self_width : Int,                
       _ self_height : Int,               
       _ self_xName : Int,                
       _ self_yName : Int,                
       _ self_zoneName : String,          
       _ prefs_padZoneFont : NSFont,      
       _ prefs_padZoneColor : NSColor,    
       _ self_displayZoneName : Bool
) -> EBShape {
//--- START OF USER ZONE 2
    let x = canariUnitToCocoa (self_x)
    let y = canariUnitToCocoa (self_y)
    let width = canariUnitToCocoa (self_width)
    let height = canariUnitToCocoa (self_height)
    var bp = EBBezierPath ()
    if (self_width <= 0) && (self_height <= 0) { // Oval is a point
      bp.move (to: NSPoint (x: x, y: y))
      bp.line (to: NSPoint (x: x, y: y))
    }else if self_width <= 0 { // Vertical line
      bp.move (to: NSPoint (x: x, y: y))
      bp.line (to: NSPoint (x: x, y: y + height))
    }else if self_height <= 0 { // Horizontal line
      bp.move (to: NSPoint (x: x, y: y))
      bp.line (to: NSPoint (x: x + width, y: y))
    }else{
      let r = NSRect (x: x, y: y, width: width, height: height)
      bp.appendRect (r)
    }
    bp.lineWidth = 0.5
    bp.lineCapStyle = .round
    var shape = EBShape ()
    shape.add (stroke: [bp], prefs_padZoneColor)
  //--- Name
    if self_displayZoneName {
      let text = (self_zoneName == "") ? "?" : self_zoneName
      let p = CanariPoint (x: self_xName, y: self_yName).cocoaPoint
      let textAttributes : [NSAttributedString.Key : Any] = [
        NSAttributedString.Key.font : prefs_padZoneFont,
        NSAttributedString.Key.foregroundColor : prefs_padZoneColor
      ]
      shape.add (text: text, p, textAttributes, .center, .center)
    }
  //---
    return shape
//--- END OF USER ZONE 2
}

//----------------------------------------------------------------------------------------------------------------------
