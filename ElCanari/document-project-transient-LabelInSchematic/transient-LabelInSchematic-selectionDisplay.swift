//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_LabelInSchematic_selectionDisplay (
       _ self_mPoint_location : CanariPoint?,     
       _ self_netName : String,                   
       _ prefs_pinNameFont : NSFont,              
       _ self_mOrientation : QuadrantRotation
) -> EBShape {
//--- START OF USER ZONE 2
        var shape = EBShape ()
        if let p = self_mPoint_location?.cocoaPoint {
          var bp = EBBezierPath ()
          bp.move (to: NSPoint (x: 0.0, y: 0.0))
          bp.line (to: NSPoint (x: SCHEMATIC_LABEL_SIZE * 2.0, y: 0.0))
          bp.line (to: NSPoint (x: SCHEMATIC_LABEL_SIZE * 3.0, y: SCHEMATIC_LABEL_SIZE))
          bp.line (to: NSPoint (x: SCHEMATIC_LABEL_SIZE * 7.0, y: SCHEMATIC_LABEL_SIZE))
          bp.line (to: NSPoint (x: SCHEMATIC_LABEL_SIZE * 7.0, y: -SCHEMATIC_LABEL_SIZE))
          bp.line (to: NSPoint (x: SCHEMATIC_LABEL_SIZE * 3.0, y: -SCHEMATIC_LABEL_SIZE))
          bp.line (to: NSPoint (x: SCHEMATIC_LABEL_SIZE * 2.0, y: 0.0))
          bp.lineCapStyle = .round
          bp.lineJoinStyle = .round
          bp.lineWidth = SCHEMATIC_HILITE_WIDTH
        //---
          var af = AffineTransform ()
          af.translate (x: p.x, y: p.y)
          af.rotate (byDegrees: CGFloat (self_mOrientation.rawValue) * 90.0)
        //---
          shape.add (stroke: [bp.transformed (by: af)], .cyan)
          shape.add (knobAt:  p, knobIndex: 0, .rect, SCHEMATIC_KNOB_SIZE)
        }
        return shape
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
