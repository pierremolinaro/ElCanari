//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_SheetInProject_issues (
       _ self_mObjects_issues : [SchematicsObject_issues]
) -> CanariIssueArray {
//--- START OF USER ZONE 2
        var issues = CanariIssueArray ()
        for object in self_mObjects_issues {
          if let objectIssues = object.issues {
            issues += objectIssues
          }
        }
        return issues
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————