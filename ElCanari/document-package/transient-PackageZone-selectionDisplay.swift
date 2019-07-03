//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_PackageZone_selectionDisplay (
       _ self_x : Int,                       
       _ self_y : Int,                       
       _ self_width : Int,                   
       _ self_height : Int,                  
       _ self_xName : Int,                   
       _ self_yName : Int,                   
       _ self_zoneName : String,             
       _ prefs_padZoneFont : NSFont,         
       _ prefs_padZoneColor : NSColor
) -> EBShape {
//--- START OF USER ZONE 2
    var shape = EBShape ()
    let x = canariUnitToCocoa (self_x)
    let y = canariUnitToCocoa (self_y)
    let width = canariUnitToCocoa (self_width)
    let height = canariUnitToCocoa (self_height)
    var bp : EBBezierPath
    if (self_width <= 0) && (self_height <= 0) { // Oval is a point
      bp = EBBezierPath ()
      bp.move (to: NSPoint (x: x, y: y))
      bp.line (to: NSPoint (x: x, y: y))
    }else if self_width <= 0 { // Vertical line
      bp = EBBezierPath ()
      bp.move (to: NSPoint (x: x, y: y))
      bp.line (to: NSPoint (x: x, y: y + height))
    }else if self_height <= 0 { // Horizontal line
      bp = EBBezierPath ()
      bp.move (to: NSPoint (x: x, y: y))
      bp.line (to: NSPoint (x: x + width, y: y))
    }else{
      let r = CGRect (x: x, y: y, width: width, height: height)
      bp = EBBezierPath (rect: r)
    }
    bp.lineWidth = 0.25
    shape.addStrokeBezierPathes ([bp], NSColor.cyan)
    shape.addKnob (at: CGPoint (x: x + width / 2.0, y: y), index: PACKAGE_ZONE_BOTTOM, .circ, 2.0)
    shape.addKnob (at: CGPoint (x: x, y: y + height / 2.0), index: PACKAGE_ZONE_LEFT, .circ, 2.0)
    shape.addKnob (at: CGPoint (x: x + width / 2.0, y: y + height), index: PACKAGE_ZONE_TOP, .circ, 2.0)
    shape.addKnob (at: CGPoint (x: x + width, y: y + height / 2.0), index: PACKAGE_ZONE_RIGHT, .circ, 2.0)
  //--- Zone
    let text = (self_zoneName == "") ? "?" : self_zoneName
    let pText = CanariPoint (x: self_xName, y: self_yName).cocoaPoint
    shape.addTextKnob (text, pText, prefs_padZoneFont, .center, .center, PACKAGE_ZONE_NAME)
  //---
    return shape
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
