//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_PackageSegment_objectDisplay (
       _ self_strokeBezierPath : NSBezierPath,
       _ prefs_packageColor : NSColor,       
       _ prefs_packageDrawingWidthMultipliedByTen : Int
) -> EBShape {
//--- START OF USER ZONE 2
  var bp = EBBezierPath ()
  bp.append (self_strokeBezierPath)
  bp.lineWidth = CGFloat (prefs_packageDrawingWidthMultipliedByTen) / 10.0
  bp.lineCapStyle = .round
  var shape = EBShape ()
  shape.add (stroke: [bp], prefs_packageColor)
  return shape
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
