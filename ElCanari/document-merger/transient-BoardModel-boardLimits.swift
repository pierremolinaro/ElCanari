//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func compute_BoardModel_boardLimits (
       _ self_modelWidth : Int,      
       _ self_modelHeight : Int,     
       _ self_modelLimitWidth : Int, 
       _ prefs_mergerModelViewDisplayBoardLimits : Bool
) -> MergerBoardLimits {
//--- START OF USER ZONE 2
  return MergerBoardLimits (
    boardWidth:self_modelWidth,
    boardHeight:self_modelHeight,
    lineWidth:prefs_mergerModelViewDisplayBoardLimits ? self_modelLimitWidth : 0
  )
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————