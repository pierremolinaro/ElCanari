//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func compute_BoardModelEntity_boardLimits (
       _ self_modelWidth : Int,            
       _ self_modelHeight : Int,           
       _ self_boardLimitWidth : Int,       
       _ prefs_mergerDisplayBoardLimits : Bool
) -> MergerBoardLimits {
//--- START OF USER ZONE 2
  return MergerBoardLimits (
    boardWidth:self_modelWidth,
    boardHeight:self_modelHeight,
    lineWidth:prefs_mergerDisplayBoardLimits ? self_boardLimitWidth : 0
  )
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
