//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func compute_BoardModelEntity_backComponentValueDisplay (
       _ prefs_mergerDisplayBackComponentValues : Bool,  
       _ self_backComponentValueLayer : CALayer
) -> CALayer {
//--- START OF USER ZONE 2
  self_backComponentValueLayer.isHidden = !prefs_mergerDisplayBackComponentValues
  return self_backComponentValueLayer
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
