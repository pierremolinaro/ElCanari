//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func compute_BoardModelEntity_backComponentNameDisplay (
       _ prefs_mergerColorBackComponentNames : NSColor, 
       _ prefs_mergerModelViewDisplayBackComponentNames : Bool,
       _ self_backComponentNameSegments : MergerSegmentArray
) -> CALayer {
//--- START OF USER ZONE 2
  return self_backComponentNameSegments.buildLayer (color:prefs_mergerColorBackComponentNames, display:prefs_mergerModelViewDisplayBackComponentNames)
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
