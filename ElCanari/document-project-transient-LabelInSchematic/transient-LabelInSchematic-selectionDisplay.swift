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
          shape.add (knobAt:  p, knobIndex: LABEL_IN_SCHEMATICS_TRANSLATION_KNOB, .rect, SCHEMATIC_KNOB_SIZE)
        //--- Net name
          let labelOrigin = af.transform (NSPoint (x: SCHEMATIC_LABEL_SIZE * 8.0, y: 0.0))
          let horizontalAlignment : EBTextHorizontalAlignment
          let verticalAlignment : EBTextVerticalAlignment
          switch self_mOrientation {
          case .rotation0 :
            horizontalAlignment = .onTheRight
            verticalAlignment = .center
          case .rotation90 :
            horizontalAlignment = .center
            verticalAlignment = .above
          case .rotation180 :
            horizontalAlignment = .onTheLeft
            verticalAlignment = .center
          case .rotation270 :
            horizontalAlignment = .center
            verticalAlignment = .below
          }
          shape.add (
            textKnob: self_netName,
            labelOrigin,
            prefs_pinNameFont,
            foreColor: .black,
            backColor: .white,
            horizontalAlignment,
            verticalAlignment,
            .rect,
            knobIndex: LABEL_IN_SCHEMATICS_TRANSLATION_KNOB
          )

          shape.add (
            knobAt: af.transform (NSPoint (x: SCHEMATIC_LABEL_SIZE * 7.0, y: 0.0)),
            knobIndex: LABEL_IN_SCHEMATICS_ROTATION_KNOB,
            .circ,
            SCHEMATIC_KNOB_SIZE
          )
        }
        return shape
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
