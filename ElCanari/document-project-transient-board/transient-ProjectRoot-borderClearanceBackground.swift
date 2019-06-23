//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_ProjectRoot_borderClearanceBackground (
       _ self_mBorderCurves_descriptor : [BorderCurve_descriptor],
       _ self_mBoardLimitsWidth : Int,                
       _ self_mBoardClearance : Int,                  
       _ prefs_boardClearanceColorForBoard : NSColor
) -> EBShape {
//--- START OF USER ZONE 2
        var curveDictionary = [CanariPoint : BorderCurveDescriptor] ()
        for curve in self_mBorderCurves_descriptor {
          let descriptor = curve.descriptor!
          curveDictionary [descriptor.p1] = descriptor
        }
        var clearanceBP = EBBezierPath ()
        var descriptor = self_mBorderCurves_descriptor [0].descriptor!
        let p = descriptor.p1
        clearanceBP.move (to: p.cocoaPoint)
        var loop = true
        while loop {
          switch descriptor.shape {
          case .line :
            clearanceBP.line (to: descriptor.p2.cocoaPoint)
          case .bezier :
            let cp1 = descriptor.cp1.cocoaPoint
            let cp2 = descriptor.cp2.cocoaPoint
            clearanceBP.curve (to: descriptor.p2.cocoaPoint, controlPoint1: cp1, controlPoint2: cp2)
          }
          descriptor = curveDictionary [descriptor.p2]!
          loop = p != descriptor.p1
        }
        clearanceBP.lineCapStyle = .round
        clearanceBP.lineJoinStyle = .round
        clearanceBP.lineWidth = canariUnitToCocoa (self_mBoardLimitsWidth + self_mBoardClearance)
        return EBStrokeBezierPathShape ([clearanceBP], prefs_boardClearanceColorForBoard, clip: clearanceBP)
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
