//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//----------------------------------------------------------------------------------------------------------------------

func transient_SheetInProject_connexionErrors (
       _ self_issues : CanariIssueArray
) -> Int {
//--- START OF USER ZONE 2
        var n = 0
        for issue in self_issues {
          if issue.kind == .error {
            n += 1
          }
        }
        return n

//--- END OF USER ZONE 2
}

//----------------------------------------------------------------------------------------------------------------------
