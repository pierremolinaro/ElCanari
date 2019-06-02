//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_BoardLimit_objectDisplay (
       _ self_mP1_mX : Int?,             
       _ self_mP1_mY : Int?,             
       _ self_mP2_mX : Int?,             
       _ self_mP2_mY : Int?,             
       _ prefs_boardLimitsColorForBoard : NSColor
) -> EBShape {
//--- START OF USER ZONE 2
        let result = EBShape ()
        if let x1 = self_mP1_mX, let y1 = self_mP1_mY, let x2 = self_mP2_mX, let y2 = self_mP2_mY {
          let p1 = CanariPoint (x: x1, y: y1).cocoaPoint
          let p2 = CanariPoint (x: x2, y: y2).cocoaPoint
          let bp = NSBezierPath ()
          bp.move (to: p1)
          bp.line (to: p2)
          bp.lineWidth = 5.0
          bp.lineCapStyle = .round
          bp.lineJoinStyle = .round
          result.append (EBStrokeBezierPathShape ([bp], prefs_boardLimitsColorForBoard))
        }
        return result
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
