//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_ProjectRoot_boardStatusImage (
       _ self_boardIssues : CanariIssueArray
) -> NSImage {
//--- START OF USER ZONE 2
        var errorCount = 0
        var warningCount = 0
        for issue in self_boardIssues {
          switch issue.kind {
          case .error : errorCount += 1
          case .warning : warningCount += 1
          }
        }
        if errorCount > 0 {
          return NSImage (named: errorStatusImageName)!
        }else if warningCount > 0 {
          return NSImage (named: warningStatusImageName)!
        }else{
          return NSImage (named: okStatusImageName)!
        }
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
