//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_SymbolSolidRect_issues (
       _ self_x : Int,                 
       _ self_y : Int,                 
       _ self_width : Int,             
       _ self_height : Int
) -> CanariIssueArray {
//--- START OF USER ZONE 2
  var issues = [CanariIssue] ()
  if (self_x % SYMBOL_GRID_IN_CANARI_UNIT) != 0 {
    issues.appendSymbolHorizontalIssueAt (x: self_x, y: self_y)
  }
  if (self_y % SYMBOL_GRID_IN_CANARI_UNIT) != 0 {
    issues.appendSymbolVerticalIssueAt (x: self_x, y: self_y)
  }
  if (self_width % SYMBOL_GRID_IN_CANARI_UNIT) != 0 {
    issues.appendSymbolWidthIssueAt (x: self_x, y: self_y, width: self_width, height: self_height)
  }
  if (self_height % SYMBOL_GRID_IN_CANARI_UNIT) != 0 {
    issues.appendSymbolHeightIssueAt (x: self_x, y: self_y, width: self_width, height: self_height)
  }
  return issues
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
