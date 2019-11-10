//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

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
       _ prefs_packageBackgroundColor : NSColor,
       _ prefs_padZoneColor : NSColor,       
       _ self_PackageObject_knobSize : Double
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
      let r = NSRect (x: x, y: y, width: width, height: height)
      bp = EBBezierPath (rect: r)
    }
    bp.lineWidth = 0.25
    shape.add (stroke: [bp], NSColor.cyan)
    shape.add (knobAt:  NSPoint (x: x + width / 2.0, y: y), knobIndex: PACKAGE_ZONE_BOTTOM, .circ, CGFloat (self_PackageObject_knobSize))
    shape.add (knobAt:  NSPoint (x: x, y: y + height / 2.0), knobIndex: PACKAGE_ZONE_LEFT, .circ, CGFloat (self_PackageObject_knobSize))
    shape.add (knobAt:  NSPoint (x: x + width / 2.0, y: y + height), knobIndex: PACKAGE_ZONE_TOP, .circ, CGFloat (self_PackageObject_knobSize))
    shape.add (knobAt:  NSPoint (x: x + width, y: y + height / 2.0), knobIndex: PACKAGE_ZONE_RIGHT, .circ, CGFloat (self_PackageObject_knobSize))
  //--- Zone
    let text = (self_zoneName == "") ? "?" : self_zoneName
    let pText = CanariPoint (x: self_xName, y: self_yName).cocoaPoint
    shape.add (
      textKnob: text,
      pText,
      prefs_padZoneFont,
      foreColor: prefs_padZoneColor,
      backColor: prefs_packageBackgroundColor,
      .center,
      .center,
      knobIndex: PACKAGE_ZONE_NAME
    )
  //---
    return shape
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
