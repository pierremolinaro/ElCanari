//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_ProjectRoot_boardIssues (
       _ self_mBoardObjects_issues : [BoardObject_issues]
) -> CanariIssueArray {
//--- START OF USER ZONE 2
        var issues = CanariIssueArray ()
        for object in self_mBoardObjects_issues {
          if let objectIssues = object.issues {
            issues += objectIssues
          }
        }
        return issues
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
