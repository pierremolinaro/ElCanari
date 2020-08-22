//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//----------------------------------------------------------------------------------------------------------------------

func transient_PackageSlavePad_selectionDisplay (
       _ self_xCenter : Int,                     
       _ self_yCenter : Int,                     
       _ self_width : Int,                       
       _ self_height : Int,                      
       _ self_padShape : PadShape
) -> EBShape {
//--- START OF USER ZONE 2
    let xCenter = canariUnitToCocoa (self_xCenter)
    let yCenter = canariUnitToCocoa (self_yCenter)
    let width = canariUnitToCocoa (self_width)
    let height = canariUnitToCocoa (self_height)
    let rPad = NSRect (x: xCenter - width / 2.0, y: yCenter - height / 2.0, width: width, height: height)
    var bp : EBBezierPath
    switch self_padShape {
    case .rect :
      bp = EBBezierPath (rect: rPad)
    case .round :
      if width < height {
        bp = EBBezierPath (roundedRect: rPad, xRadius: width / 2.0, yRadius: width / 2.0)
      }else if width > height {
        bp = EBBezierPath (roundedRect: rPad, xRadius: height / 2.0, yRadius: height / 2.0)
      }else{
        bp = EBBezierPath (ovalIn: rPad)
      }
    case .octo :
      bp = EBBezierPath (octogonInRect: rPad)
    }
    bp.lineWidth = 0.25
    bp.lineCapStyle = .round
    return EBShape (stroke: [bp], NSColor.cyan)
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
