//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func compute_BoardModelEntity_backComponentValuesForDisplay (
       _ prefs_mergerDisplayBackComponentValues : Bool,      
       _ self_backComponentValueSegments : MergerSegmentArray
) -> MergerSegmentArray {
//--- START OF USER ZONE 2
  return prefs_mergerDisplayBackComponentValues ? self_backComponentValueSegments : MergerSegmentArray ([])
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
