//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_PackageSlavePad_backSideFilledBezierPath (
       _ self_xCenter : Int,                             
       _ self_yCenter : Int,                             
       _ self_width : Int,                               
       _ self_height : Int,                              
       _ self_holeDiameter : Int,                        
       _ self_padShape : PadShape,                       
       _ self_padStyle : SlavePadStyle
) -> NSBezierPath {
//--- START OF USER ZONE 2
    let xCenter = canariUnitToCocoa (self_xCenter)
    let yCenter = canariUnitToCocoa (self_yCenter)
    let width = canariUnitToCocoa (self_width)
    let height = canariUnitToCocoa (self_height)
    let holeDiameter = canariUnitToCocoa (self_holeDiameter)
    let rPad = NSRect (x: xCenter - width / 2.0, y: yCenter - height / 2.0, width: width, height: height)
    let bp : NSBezierPath
    switch self_padShape {
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
    switch self_padStyle {
    case .traversing :
      let rHole = NSRect (x: xCenter - holeDiameter / 2.0, y: yCenter - holeDiameter / 2.0, width: holeDiameter, height: holeDiameter)
      bp.appendOval (in: rHole)
    case .topSide :
      bp.removeAllPoints ()
    case .bottomSide :
      ()
    }
    return bp
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
