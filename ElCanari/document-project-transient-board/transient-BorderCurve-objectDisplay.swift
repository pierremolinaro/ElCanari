//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_BorderCurve_objectDisplay (
       _ self_mX : Int,                   
       _ self_mY : Int,                   
       _ self_mNext_mX : Int?,            
       _ self_mNext_mY : Int?,            
       _ self_mCPX1 : Int,                
       _ self_mCPY1 : Int,                
       _ self_mCPX2 : Int,                
       _ self_mCPY2 : Int,                
       _ self_mShape : BorderCurveShape,  
       _ self_mRoot_mBoardLimitsWidth : Int?,
       _ self_mRoot_mBoardClearance : Int?
) -> EBShape {
//--- START OF USER ZONE 2
        var result = EBShape ()
        if let x2 = self_mNext_mX,
           let y2 = self_mNext_mY,
           let boardWidth = self_mRoot_mBoardLimitsWidth,
           let boardClearance = self_mRoot_mBoardClearance {
          let p1 = CanariPoint (x: self_mX, y: self_mY).cocoaPoint
          let p2 = CanariPoint (x: x2, y: y2).cocoaPoint
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
          bp.lineCapStyle = .round
          bp.lineJoinStyle = .round
          bp.lineWidth = 2.0 * canariUnitToCocoa (boardWidth + boardClearance)
          result.add (stroke: [bp], nil)
        }
        return result
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
