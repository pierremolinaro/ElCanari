//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//----------------------------------------------------------------------------------------------------------------------

func transient_DeviceDocument_mStatusMessage (
       _ root_issues : CanariIssueArray
) -> String {
//--- START OF USER ZONE 2
  var s = "No error, no warning"
  if root_issues.count > 0 {
    let errorCount = root_issues.errorCount
    let warningCount = root_issues.warningCount
    if errorCount == 0 {
      s = "No error"
    }else if errorCount == 1 {
      s = "1 error"
    }else {
      s = "\(errorCount) errors"
    }
    s += ", "
    if warningCount == 0 {
      s += "no warning"
    }else if warningCount == 1 {
      s += "1 warning"
    }else {
      s += "\(warningCount) warnings"
    }
    s += "."
  }
  for issue in root_issues {
    s += "\n"
    switch issue.kind {
    case .error   : s += "Error"
    case .warning : s += "Warning"
    }
    s += ": " + issue.message
  }
  return s
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
