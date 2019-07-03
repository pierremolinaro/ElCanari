//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//--- START OF USER ZONE 1

//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_LabelInSchematic_objectDisplay (
       _ prefs_symbolColorForSchematic : NSColor,
       _ prefs_symbolDrawingWidthMultipliedByTen : Int,
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
          bp.lineWidth = CGFloat (prefs_symbolDrawingWidthMultipliedByTen) / 10.0
        //---
          var af = AffineTransform ()
          af.translate (x: p.x, y: p.y)
          af.rotate (byDegrees: CGFloat (self_mOrientation.rawValue) * 90.0)
          let transformedBP = bp.transformed (by: af)
        //---
          shape.addFilledBezierPathes ([transformedBP], nil)
          shape.addStrokeBezierPathes ([transformedBP], prefs_symbolColorForSchematic)
        //--- Net name
          let labelOrigin = af.transform (NSPoint (x: SCHEMATIC_LABEL_SIZE * 8.0, y: 0.0))
          let textAttributes : [NSAttributedString.Key : Any] = [
            NSAttributedString.Key.font : prefs_pinNameFont
          ]
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
          shape.addText (self_netName, labelOrigin, textAttributes, horizontalAlignment, verticalAlignment)
        }
        return shape
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
