//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_ConnectorInBoard_objectDisplay (
       _ self_mComponent_componentPadDictionary : ComponentPadDescriptorDictionary?,
       _ self_mComponentPadName : String
) -> EBShape {
//--- START OF USER ZONE 2
        if let descriptor = self_mComponent_componentPadDictionary? [self_mComponentPadName]  {
          let center = descriptor.padLocation
          let SIZE_IN_MILS = 50
          let SIZE_IN_COCOA_UNIT = milsToCocoaUnit (CGFloat (SIZE_IN_MILS))
          let r = NSRect (x: center.x - SIZE_IN_COCOA_UNIT / 2.0, y: center.y - SIZE_IN_COCOA_UNIT / 2.0, width: SIZE_IN_COCOA_UNIT, height: SIZE_IN_COCOA_UNIT)
          let rectBP = EBBezierPath (ovalIn: r)
          return EBFilledBezierPathShape ([rectBP], .orange)
        }else{
          return EBShape ()
        }
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
