//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_PackageArc_selectionDisplay (
       _ self_xCenter : Int,                
       _ self_yCenter : Int,                
       _ self_radius : Int,                 
       _ self_startAngle : Int,             
       _ self_arcAngle : Int,               
       _ self_startTangent : Int,           
       _ self_endTangent : Int,             
       _ self_pathIsClosed : Bool
) -> EBShape {
//--- START OF USER ZONE 2
    let center = CanariPoint (x: self_xCenter, y: self_yCenter).cocoaPoint
    let radius = canariUnitToCocoa (self_radius)
    let startTangentLength = canariUnitToCocoa (self_startTangent)
    let endTangentLength = canariUnitToCocoa (self_endTangent)
    let startAngle = CGFloat (self_startAngle) / 1000.0
    let arcAngle = CGFloat (self_arcAngle) / 1000.0
    var bp = EBBezierPath (
      arcWithTangentFromCenter: center,
      radius: radius,
      startAngleInDegrees: startAngle,
      arcAngleInDegrees: arcAngle,
      startTangentLength: startTangentLength,
      endTangentLength: endTangentLength,
      pathIsClosed: self_pathIsClosed
    )
    bp.lineWidth = 0.25
    bp.lineCapStyle = .round
    let shape = EBShape ()
    shape.append (EBStrokeBezierPathShape ([bp], NSColor.cyan))
  //--- Add center knob
    shape.append (EBKnobShape (at: center, index: PACKAGE_ARC_CENTER, .rect, 2.0))
  //--- Add radius knob
    var t = NSAffineTransform ()
    t.translateX (by: center.x, yBy: center.y)
    t.rotate (byDegrees: startAngle + arcAngle / 2.0)
    let radiusKnob = t.transform (NSPoint (x: radius, y: 0.0))
    shape.append (EBKnobShape (at: radiusKnob, index: PACKAGE_ARC_RADIUS, .circ, 2.0))
  //--- Add start point knob
    t = NSAffineTransform ()
    t.translateX (by: center.x, yBy: center.y)
    t.rotate (byDegrees: startAngle)
    let startPointKnob = t.transform (NSPoint (x: radius, y: 0.0))
    shape.append (EBKnobShape (at: startPointKnob, index: PACKAGE_ARC_START_ANGLE, .circ, 2.0))
  //--- Add end point knob
    t = NSAffineTransform ()
    t.translateX (by: center.x, yBy: center.y)
    t.rotate (byDegrees: startAngle + arcAngle)
    let endPointKnob = t.transform (NSPoint (x: radius, y: 0.0))
    shape.append (EBKnobShape (at: endPointKnob, index: PACKAGE_ARC_END_ANGLE, .circ, 2.0))
  //---
    return shape
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
