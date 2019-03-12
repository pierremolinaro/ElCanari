//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_MasterPadInDevice_frontSideFilledBezierPathArray (
       _ self_mCenterX : Int,                                    
       _ self_mCenterY : Int,                                    
       _ self_mWidth : Int,                                      
       _ self_mHeight : Int,                                     
       _ self_mHoleDiameter : Int,                               
       _ self_mShape : PadShape,                                 
       _ self_mStyle : PadStyle,                                 
       _ self_mSlavePads_frontSideFilledBezierPath : [SlavePadInDevice_frontSideFilledBezierPath]
) -> BezierPathArray {
//--- START OF USER ZONE 2
    let xCenter = canariUnitToCocoa (self_mCenterX)
    let yCenter = canariUnitToCocoa (self_mCenterY)
    let width = canariUnitToCocoa (self_mWidth)
    let height = canariUnitToCocoa (self_mHeight)
    let holeDiameter = canariUnitToCocoa (self_mHoleDiameter)
    let rPad = NSRect (x: xCenter - width / 2.0, y: yCenter - height / 2.0, width: width, height: height)
    let bp : NSBezierPath
    switch self_mShape {
    case .rect :
      bp = NSBezierPath (rect: rPad)
    case .round :
      if width < height {
        bp = NSBezierPath (roundedRect: rPad, xRadius: width / 2.0, yRadius: width / 2.0)
      }else if width > height {
        bp = NSBezierPath (roundedRect: rPad, xRadius: height / 2.0, yRadius: height / 2.0)
      }else{
        bp = NSBezierPath (ovalIn: rPad)
      }
    case .octo :
      bp = NSBezierPath (octogonInRect: rPad)
    }
    switch self_mStyle {
    case .traversing :
      let rHole = NSRect (x: xCenter - holeDiameter / 2.0, y: yCenter - holeDiameter / 2.0, width: holeDiameter, height: holeDiameter)
      bp.appendOval (in: rHole)
      bp.windingRule = .evenOdd
    case .surface :
      ()
    }
    var array = BezierPathArray ()
    array.append (bp)
    for slavePad in self_mSlavePads_frontSideFilledBezierPath {
      if let bp = slavePad.frontSideFilledBezierPath {
        array.append (bp)
      }
    }
    return array
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
