//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_SymbolRoot_issues (
       _ self_symbolObjects_issues : [SymbolObject_issues],
       _ self_symbolPins_name : [SymbolPin_name],
       _ self_symbolPins_nameRect : [SymbolPin_nameRect],
       _ self_symbolPins_xPin : [SymbolPin_xPin],
       _ self_symbolPins_yPin : [SymbolPin_yPin]
) -> CanariIssueArray {
//--- START OF USER ZONE 2
    //--- Inventory of all pin locations, with their occurrence count
      var pinLocationDict = [CanariPoint : Int] ()
      var idx = 0
      while idx < self_symbolPins_xPin.count {
        let p = CanariPoint (x: self_symbolPins_xPin [idx].xPin, y: self_symbolPins_yPin [idx].yPin)
        idx += 1
        if let n = pinLocationDict [p] {
          pinLocationDict [p] = n + 1
        }else{
          pinLocationDict [p] = 1
        }
      }
    //--- Detect pin at the same location
      var issues = [CanariIssue] ()
      for (point, n) in pinLocationDict {
        if n > 1 {
          issues.appendSymbolSeveralPinAtSameLocationIssue (pinLocation: point)
        }
      }
    //--- Inventory of all non empty names, with their occurrence count
      var dict = [String : Int] ()
      for pin in self_symbolPins_name {
        let name = pin.name
        if name != "" {
          if let n = dict [name] {
            dict [name] = n + 1
          }else{
            dict [name] = 1
          }
        }
      }
    //--- Detect duplicated pin names
      idx = 0
      while idx < self_symbolPins_name.count {
        let name = self_symbolPins_name [idx].name
        if let n = dict [name], n > 1, let rect = self_symbolPins_nameRect [idx].nameRect {
          issues.appendSymbolDuplicatedPinNameIssueAt (rect: rect)
        }
        idx += 1
      }
    //-------------------- Warn if no pin
      if self_symbolPins_name.count == 0 {
        issues.appendSymbolNoPinNameIssue ()
      }
    //-------------------- Append issues from symbol objects
      for optionalIssueArray in self_symbolObjects_issues {
        if let issueArray = optionalIssueArray.issues {
          issues += issueArray
        }
      }
    //-------------------- Sort issues
    //  issues.sort (by: CanariIssue.displaySortingCompare)
    //---
      return issues
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
