//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_AutoLayoutSymbolDocument_issues (
       _ root_issues : CanariIssueArray,        
       _ self_documentFileName : String
) -> CanariIssueArray {
//--- START OF USER ZONE 2
       var result = CanariIssueArray ()
       if let issue = libraryDocumentFileNameIssue (self_documentFileName) {
         result.append (issue)
       }
       result += root_issues
       return result
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
