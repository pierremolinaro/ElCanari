//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func compute_MergerBoardInstanceEntity_backPadsDisplay (
       _ self_x : Int,                                  
       _ self_y : Int,                                  
       _ prefs_mergerColorBackPads : NSColor,           
       _ prefs_mergerBoardViewDisplayBackPads : Bool,   
       _ self_myModel_backPads : MergerPadArray?
) -> CALayer {
//--- START OF USER ZONE 2
  return self_myModel_backPads!.buildShape (
    dx: self_x,
    dy: self_y,
    color: prefs_mergerColorBackPads,
    display: prefs_mergerBoardViewDisplayBackPads
  )
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
