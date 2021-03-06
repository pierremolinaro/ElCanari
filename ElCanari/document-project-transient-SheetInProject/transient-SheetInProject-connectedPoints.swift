//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_SheetInProject_connectedPoints (
       _ self_mPoints_connectedPoints : [PointInSchematic_connectedPoints]
) -> EBShape {
//--- START OF USER ZONE 2
        var bp = EBBezierPath ()
        for object in self_mPoints_connectedPoints {
          if let a = object.connectedPoints {
            for point in a {
              let p = point.cocoaPoint
              let r = NSRect (x: p.x - CONNECTED_POINT_DIAMETER / 2.0, y: p.y - CONNECTED_POINT_DIAMETER / 2.0, width: CONNECTED_POINT_DIAMETER, height: CONNECTED_POINT_DIAMETER)
              bp.appendOval (in: r)
            }
          }
        }
        return EBShape (filled: [bp], .black)
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
