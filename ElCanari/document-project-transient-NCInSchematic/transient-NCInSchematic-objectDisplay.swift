//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_NCInSchematic_objectDisplay (
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
        return EBShape (text: NC_TITLE, point, textAttributes, horizontalAlignment, verticalAlignment)
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
