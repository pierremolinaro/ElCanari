//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//----------------------------------------------------------------------------------------------------------------------

func transient_WireInSchematic_selectionDisplay (
       _ self_mP1_location : CanariPoint?,       
       _ self_mP1_canMove : Bool?,               
       _ self_mP2_location : CanariPoint?,       
       _ self_mP2_canMove : Bool?
) -> EBShape {
//--- START OF USER ZONE 2
        let p1 = (self_mP1_location ?? CanariPoint ()).cocoaPoint
        let p2 = (self_mP2_location ?? CanariPoint (x: WIRE_DEFAULT_SIZE_ON_DRAG_AND_DROP, y: WIRE_DEFAULT_SIZE_ON_DRAG_AND_DROP)).cocoaPoint
      //--- Hilite wire
        var bp = EBBezierPath ()
        bp.move (to: p1)
        bp.line (to: p2)
        bp.lineWidth = SCHEMATIC_HILITE_WIDTH
        bp.lineCapStyle = .round
        bp.lineJoinStyle = .round
        var shape = EBShape ()
        shape.add (stroke: [bp], .cyan)
      //--- Knob at center ?
        if (self_mP1_canMove ?? false) && (self_mP2_canMove ?? false) {
          shape.add (knobAt: NSPoint.center (p1, p2), knobIndex: WIRE_CENTER_KNOB, .rect, SCHEMATIC_KNOB_SIZE)
        }
      //--- Knob at P1 ?
          if self_mP1_canMove ?? false {
            shape.add (knobAt:  p1, knobIndex: WIRE_P1_KNOB, .circ, SCHEMATIC_KNOB_SIZE)
          }
      //--- Knob at P2 ?
        if self_mP2_canMove ?? false {
          shape.add (knobAt:  p2, knobIndex: WIRE_P2_KNOB, .circ, SCHEMATIC_KNOB_SIZE)
        }
      //---
        return shape
//--- END OF USER ZONE 2
}

//----------------------------------------------------------------------------------------------------------------------
