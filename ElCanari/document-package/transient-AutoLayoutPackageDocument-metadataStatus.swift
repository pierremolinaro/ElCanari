//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_AutoLayoutPackageDocument_metadataStatus (
       _ self_issues : CanariIssueArray
) -> MetadataStatus {
//--- START OF USER ZONE 2
  if self_issues.count == 0 {
    return .ok
  }else if self_issues.errorCount != 0 {
    return .warning
  }else{
    return .error
  }
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
