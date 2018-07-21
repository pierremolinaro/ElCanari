//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_MergerBoardInstance_instanceDisplay (
       _ self_x : Int,                              
       _ self_y : Int,                              
       _ self_instanceRotation : QuadrantRotation,  
       _ self_myModel_imageForInstances : NSImage?
) -> InstanceDisplay {
//--- START OF USER ZONE 2
  let image = self_myModel_imageForInstances!
  var x = canariUnitToCocoa (self_x)
  var y = canariUnitToCocoa (self_y)
  switch self_instanceRotation {
  case .rotation0, .rotation180 :
    x += image.size.width / 2.0
    y += image.size.height / 2.0
  case .rotation90, .rotation270 :
    x += image.size.height / 2.0
    y += image.size.width / 2.0
  }
  return InstanceDisplay (
    image,
    NSPoint (x: x, y: y),
    CGFloat (self_instanceRotation.rawValue) * CGFloat.pi / 2.0
  )
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
