//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_BorderCurve_selectionDisplay (
       _ self_mX : Int,                      
       _ self_mY : Int,                      
       _ self_mNext_mX : Int?,               
       _ self_mNext_mY : Int?,               
       _ self_mCPX1 : Int,                   
       _ self_mCPY1 : Int,                   
       _ self_mCPX2 : Int,                   
       _ self_mCPY2 : Int,                   
       _ self_mShape : BorderCurveShape
) -> EBShape {
//--- START OF USER ZONE 2
        let shape = EBShape ()
        if let x2 = self_mNext_mX, let y2 = self_mNext_mY {
          let p1 = CanariPoint (x: self_mX, y: self_mY).cocoaPoint
          let p2 = CanariPoint (x: x2, y: y2).cocoaPoint
          let cp1 = CanariPoint (x: self_mCPX1, y: self_mCPY1).cocoaPoint
          let cp2 = CanariPoint (x: self_mCPX2, y: self_mCPY2).cocoaPoint
          var bp = EBBezierPath ()
          bp.move (to: p1)
          switch self_mShape {
          case .line :
            bp.line (to: p2)
          case .bezier :
            let cp1 = CanariPoint (x: self_mCPX1, y: self_mCPY1).cocoaPoint
            let cp2 = CanariPoint (x: self_mCPX2, y: self_mCPY2).cocoaPoint
            bp.curve (to: p2, controlPoint1: cp1, controlPoint2: cp2)
          }
          bp.lineWidth = 1.0
          bp.lineCapStyle = .round
          bp.lineJoinStyle = .round
          if self_mShape == .bezier {
            bp.move (to: p1)
            bp.line (to: cp1)
            bp.move (to: p2)
            bp.line (to: cp2)
          }
          shape.append (EBStrokeBezierPathShape ([bp], .cyan))
          shape.append (EBKnobShape (at: p1, index: BOARD_LIMIT_P1_KNOB, .circ, BOARD_LIMITS_KNOB_SIZE))
          shape.append (EBKnobShape (at: p2, index: BOARD_LIMIT_P2_KNOB, .circ, BOARD_LIMITS_KNOB_SIZE))
          if self_mShape == .bezier {
            shape.append (EBKnobShape (at: cp1, index: BOARD_LIMIT_CP1_KNOB, .circ, BOARD_LIMITS_KNOB_SIZE))
            shape.append (EBKnobShape (at: cp2, index: BOARD_LIMIT_CP2_KNOB, .circ, BOARD_LIMITS_KNOB_SIZE))
          }
        }
        return shape
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
