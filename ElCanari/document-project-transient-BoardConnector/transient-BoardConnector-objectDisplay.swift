//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//----------------------------------------------------------------------------------------------------------------------

func transient_BoardConnector_objectDisplay (
       _ self_connectedToComponent : Bool,   
       _ self_side : ConnectorSide,          
       _ self_location : CanariPoint,        
       _ self_actualHoleDiameter : Int,      
       _ self_actualPadDiameter : Int,       
       _ prefs_frontSidePadColorForBoard : NSColor
) -> EBShape {
//--- START OF USER ZONE 2
        var shape = EBShape ()
        if !self_connectedToComponent && (self_side == .both) {
          let p = self_location.cocoaPoint
          let padDiameter = canariUnitToCocoa (self_actualPadDiameter)
          let rPad = NSRect (x: p.x - padDiameter / 2.0, y: p.y - padDiameter / 2.0, width: padDiameter, height: padDiameter)
          var bp = EBBezierPath (ovalIn: rPad)
          let holeDiameter = canariUnitToCocoa (self_actualHoleDiameter)
          let rHole = NSRect (x: p.x - holeDiameter / 2.0, y: p.y - holeDiameter / 2.0, width: holeDiameter, height: holeDiameter)
          bp.appendOval (in: rHole)
          bp.windingRule = .evenOdd
          shape.add (filled: [bp], prefs_frontSidePadColorForBoard)
        }
        return shape
//--- END OF USER ZONE 2
}

//----------------------------------------------------------------------------------------------------------------------
