//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func compute_BoardModelEntity_backPadsDisplay (
       _ prefs_mergerDisplayBackPads : Bool,   
       _ self_backPadsLayer : CALayer
) -> CALayer {
//--- START OF USER ZONE 2
  self_backPadsLayer.isHidden = !prefs_mergerDisplayBackPads
  return self_backPadsLayer
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
