//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//----------------------------------------------------------------------------------------------------------------------

func transient_AutoLayoutDeviceDocument_mStatusImage (
       _ root_issues : CanariIssueArray
) -> NSImage {
//--- START OF USER ZONE 2
  if root_issues.count == 0 {
    return NSImage (named: okStatusImageName)!
  }else if root_issues.errorCount != 0 {
    return NSImage (named: errorStatusImageName)!
  }else{
    return NSImage (named: warningStatusImageName)!
  }
//--- END OF USER ZONE 2
}

//----------------------------------------------------------------------------------------------------------------------
