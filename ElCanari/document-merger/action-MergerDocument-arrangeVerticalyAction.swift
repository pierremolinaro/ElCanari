//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

extension MergerDocument {
  func arrangeVerticalyAction (_ sender : NSObject) {
//--- START OF USER ZONE 2
  if self.rootObject.overlapingArrangment {
    self.arrangeVerticalyWithOverlap ()
  }else{
    self.arrangeVerticaly ()
  }
//--- END OF USER ZONE 2
  }
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*