//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//----------------------------------------------------------------------------------------------------------------------

func transient_SymbolPin_issues (
       _ self_xPin : Int,        
       _ self_yPin : Int,        
       _ self_xName : Int,       
       _ self_yName : Int,       
       _ self_xNumber : Int,     
       _ self_yNumber : Int,     
       _ self_name : String
) -> CanariIssueArray {
//--- START OF USER ZONE 2
  var issues = [CanariIssue] ()
  if self_name == "" {
    issues.appendSymbolEmptyPinNameIssueAt (x:self_xName, y: self_yName)
  }
  if (self_xPin % (SYMBOL_GRID_IN_CANARI_UNIT * 4)) != 0 {
    issues.appendSymbolPinHorizontalIssueAt (x: self_xPin, y: self_yPin)
  }
  if (self_yPin % (SYMBOL_GRID_IN_CANARI_UNIT * 4)) != 0 {
    issues.appendSymbolPinVerticalIssueAt (x: self_xPin, y: self_yPin)
  }
  if (self_xName % SYMBOL_GRID_IN_CANARI_UNIT) != 0 {
    issues.appendSymbolHorizontalIssueAt (x: self_xName, y: self_yName)
  }
  if (self_yName % SYMBOL_GRID_IN_CANARI_UNIT) != 0 {
    issues.appendSymbolVerticalIssueAt (x: self_xName, y: self_yName)
  }
  if (self_xNumber % SYMBOL_GRID_IN_CANARI_UNIT) != 0 {
    issues.appendSymbolHorizontalIssueAt (x: self_xNumber, y: self_yNumber)
  }
  if (self_yNumber % SYMBOL_GRID_IN_CANARI_UNIT) != 0 {
    issues.appendSymbolVerticalIssueAt (x: self_xNumber, y: self_yNumber)
  }
  return issues
//--- END OF USER ZONE 2
}

//----------------------------------------------------------------------------------------------------------------------
