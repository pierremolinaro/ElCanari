//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func compute_MergerBoardInstanceEntity_backComponentValueDisplay (
       _ self_x : Int,                                            
       _ self_y : Int,                                            
       _ prefs_mergerColorBackComponentValues : NSColor,          
       _ prefs_mergerBoardViewDisplayBackComponentValues : Bool,  
       _ self_myModel_backComponentValueSegments : MergerSegmentArray?
) -> CALayer {
//--- START OF USER ZONE 2
  return self_myModel_backComponentValueSegments!.buildLayer (
    dx:self_x,
    dy:self_y,
    color:prefs_mergerColorBackComponentValues,
    display:prefs_mergerBoardViewDisplayBackComponentValues
  )
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
