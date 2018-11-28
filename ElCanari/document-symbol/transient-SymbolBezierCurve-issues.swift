//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_SymbolBezierCurve_issues (
       _ self_x1 : Int,                  
       _ self_y1 : Int,                  
       _ self_x2 : Int,                  
       _ self_y2 : Int,                  
       _ self_cpx1 : Int,                
       _ self_cpy1 : Int,                
       _ self_cpx2 : Int,                
       _ self_cpy2 : Int
) -> CanariIssueArray {
//--- START OF USER ZONE 2
  var issues = [CanariIssue] ()
  if (self_x1 % SYMBOL_GRID_IN_CANARI_UNIT) != 0 {
    issues.appendSymbolHorizontalIssueAt (x: self_x1, y: self_y1)
  }
  if (self_y1 % SYMBOL_GRID_IN_CANARI_UNIT) != 0 {
    issues.appendSymbolVerticalIssueAt (x: self_x1, y: self_y1)
  }
  if (self_x2 % SYMBOL_GRID_IN_CANARI_UNIT) != 0 {
    issues.appendSymbolHorizontalIssueAt (x: self_x2, y: self_y2)
  }
  if (self_y2 % SYMBOL_GRID_IN_CANARI_UNIT) != 0 {
    issues.appendSymbolVerticalIssueAt (x: self_x2, y: self_y2)
  }
  if (self_cpx1 % SYMBOL_GRID_IN_CANARI_UNIT) != 0 {
    issues.appendSymbolHorizontalIssueAt (x: self_cpx1, y: self_cpy1)
  }
  if (self_cpy1 % SYMBOL_GRID_IN_CANARI_UNIT) != 0 {
    issues.appendSymbolVerticalIssueAt (x: self_cpx1, y: self_cpy1)
  }
  if (self_cpx2 % SYMBOL_GRID_IN_CANARI_UNIT) != 0 {
    issues.appendSymbolHorizontalIssueAt (x: self_cpx2, y: self_cpy2)
  }
  if (self_cpy2 % SYMBOL_GRID_IN_CANARI_UNIT) != 0 {
    issues.appendSymbolVerticalIssueAt (x: self_cpx2, y: self_cpy2)
  }
  return issues
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
