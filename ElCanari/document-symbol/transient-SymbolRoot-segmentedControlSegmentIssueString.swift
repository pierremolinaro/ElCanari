//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_SymbolRoot_segmentedControlSegmentIssueString (
       _ self_issues : CanariIssueArray
) -> String {
//--- START OF USER ZONE 2
   var errorCount = 0
    var warningCount = 0
    for issue in self_issues {
      switch issue.kind {
      case .error :
        errorCount += 1
      case .warning :
        warningCount += 1
      }
    }
    var title = ""
    if errorCount > 0 {
      title = "\(errorCount)"
    }else if warningCount > 0 {
      title = "\(warningCount)"
    }
    return title
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
