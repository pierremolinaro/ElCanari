//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_NCInSchematic_selectionDisplay (
       _ self_mPoint_location : CanariPoint?,  
       _ self_mOrientation : QuadrantRotation, 
       _ self_mPoint_symbolRotation : QuadrantRotation?,
       _ prefs_pinNameFont : NSFont
) -> EBShape {
//--- START OF USER ZONE 2
        var point = self_mPoint_location!.cocoaPoint
        let ncRotation = self_mOrientation + (self_mPoint_symbolRotation ?? .rotation0)
        let horizontalAlignment : EBTextHorizontalAlignment
        let verticalAlignment : EBTextVerticalAlignment
        switch ncRotation {
        case .rotation0 :
          point.x += NC_DISTANCE_IN_COCOA_UNIT
          horizontalAlignment = .onTheRight
          verticalAlignment = .center
        case .rotation90 :
          point.y += NC_DISTANCE_IN_COCOA_UNIT
          horizontalAlignment = .center
          verticalAlignment = .above
        case .rotation180 :
          point.x -= NC_DISTANCE_IN_COCOA_UNIT
          horizontalAlignment = .onTheLeft
          verticalAlignment = .center
         case .rotation270 :
          point.y -= NC_DISTANCE_IN_COCOA_UNIT
          horizontalAlignment = .center
          verticalAlignment = .below
        }
        let textAttributes : [NSAttributedString.Key : Any] = [
          NSAttributedString.Key.font : prefs_pinNameFont,
        ]
        let textShape = EBTextShape (NC_TITLE, point, textAttributes, horizontalAlignment, verticalAlignment)
      //--- Add line
        let frameBP = NSBezierPath (rect: textShape.boundingBox.insetBy (dx: -1.0, dy: -1.0))
        let line = NSBezierPath ()
        line.move (to: self_mPoint_location!.cocoaPoint)
        line.line (to: textShape.boundingBox.center)
        line.lineWidth = 0.5
        line.lineCapStyle = .round
        let shape = EBShape ()
        shape.append (EBStrokeBezierPathShape ([line], .cyan))
      //--- Add background
        frameBP.lineWidth = 0.5
        shape.append (EBFilledBezierPathShape ([frameBP], .white))
      //--- Add frame
        shape.append (EBStrokeBezierPathShape ([frameBP], .cyan))
      //--- Add Text
        shape.append (textShape)
      //---
        return shape
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
