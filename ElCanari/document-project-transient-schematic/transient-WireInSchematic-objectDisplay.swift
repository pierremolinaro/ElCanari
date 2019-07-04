//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_WireInSchematic_objectDisplay (
       _ self_mP1_wireColor : NSColor?,       
       _ prefs_symbolDrawingWidthMultipliedByTenForSchematic : Int,
       _ self_mP1_location : CanariPoint?,    
       _ self_mP2_location : CanariPoint?
) -> EBShape {
//--- START OF USER ZONE 2
        let p1 = self_mP1_location ?? CanariPoint ()
        let p2 = self_mP2_location ?? CanariPoint (x: WIRE_DEFAULT_SIZE_ON_DRAG_AND_DROP, y: WIRE_DEFAULT_SIZE_ON_DRAG_AND_DROP)
        var shape = EBShape ()
      //---
//        do{
//          let bp = NSBezierPath ()
//          bp.move (to: p1.cocoaPoint)
//          bp.line (to: p2.cocoaPoint)
//          bp.lineWidth = CGFloat (prefs_symbolDrawingWidthMultipliedByTen) / 10.0 + 1.0
//          bp.lineCapStyle = .round
//          bp.lineJoinStyle = .round
//          shape.addStrokeBezierPathes ([bp], .white))
//        }
      //---
        do{
          var bp = EBBezierPath ()
          bp.move (to: p1.cocoaPoint)
          bp.line (to: p2.cocoaPoint)
          bp.lineWidth = CGFloat (prefs_symbolDrawingWidthMultipliedByTenForSchematic) / 10.0
          bp.lineCapStyle = .round
          bp.lineJoinStyle = .round
          shape.addStrokeBezierPathes ([bp], self_mP1_wireColor ?? .black)
        }
        return shape
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
