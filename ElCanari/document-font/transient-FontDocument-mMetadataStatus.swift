//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_FontDocument_mMetadataStatus (
       _ root_issues : CanariIssueArray
) -> MetadataStatus {
//--- START OF USER ZONE 2
  if root_issues.count == 0 {
    return .ok
  }else if root_issues.errorCount != 0 {
    return .warning
  }else{
    return .error
  }
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
