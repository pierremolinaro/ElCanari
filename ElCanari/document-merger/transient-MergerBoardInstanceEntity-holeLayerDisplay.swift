//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func compute_MergerBoardInstanceEntity_holeLayerDisplay (
       _ self_x : Int,                                   
       _ self_y : Int,                                   
       _ prefs_mergerColorHoles : NSColor,               
       _ prefs_mergerBoardViewDisplayHoles : Bool,       
       _ self_myModel_holes : MergerHoleArray?
) -> CALayer {
//--- START OF USER ZONE 2
  return self_myModel_holes!.buildShape (dx:self_x, dy:self_y, color:prefs_mergerColorHoles, display:prefs_mergerBoardViewDisplayHoles)
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
