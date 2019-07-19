//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_BoardConnector_issues (
       _ self_location : CanariPoint, 
       _ self_mComponent_none : Bool, 
       _ self_mComponentPadName : String,
       _ self_mTracksP1_count : Int,  
       _ self_mTracksP2_count : Int,  
       _ self_BoardObject_errorOrWarningIssueSize : Double,
       _ self_mComponent_padNetDictionary : PadNetDictionary?
) -> CanariIssueArray {
//--- START OF USER ZONE 2
        let trackCount = self_mTracksP1_count + self_mTracksP2_count
        var issues = CanariIssueArray ()
        let noConnectionWarning : Bool
        if self_mComponent_none {
          noConnectionWarning = trackCount < 2
        }else if let padNetDictionary = self_mComponent_padNetDictionary {
          noConnectionWarning = (padNetDictionary [self_mComponentPadName] != nil) && (trackCount == 0)
        }else{
          noConnectionWarning = false // Temp
        }
        if noConnectionWarning {
          let location = self_location.cocoaPoint
          let issueSize = CGFloat (self_BoardObject_errorOrWarningIssueSize)
          let r = NSRect (x: location.x - issueSize / 2.0, y: location.y - issueSize / 2.0, width: issueSize, height: issueSize)
          let bp = EBBezierPath (ovalIn: r)
          let issue = CanariIssue (kind: .warning, message: "No Connection", pathes: [bp])
          issues.append (issue)
        }
        return issues
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
