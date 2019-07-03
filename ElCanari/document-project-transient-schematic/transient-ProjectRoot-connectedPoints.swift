//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_ProjectRoot_connectedPoints (
       _ self_mSelectedSheet_connectedPoints : EBShape?,
       _ self_selectedSheetIssues : CanariIssueArray
) -> EBShape {
//--- START OF USER ZONE 2
        var shape = EBShape ()
      //--- Issues
        var warningPath = EBBezierPath ()
        var errorPath = EBBezierPath ()
        for issue in self_selectedSheetIssues {
          switch issue.kind {
          case .warning :
            warningPath.append (issue.path)
          case .error :
            errorPath.append (issue.path)
          }
        }
        if !warningPath.isEmpty {
          // Color is F6C050
          let myOrange = NSColor (red: 0.961, green: 0.750, blue: 0.3125, alpha: 1.0)
          shape.addFilledBezierPathes ([warningPath], myOrange)
        }
        if !errorPath.isEmpty {
          shape.addFilledBezierPathes ([errorPath], .red)
        }
      //--- Connected points
        if let connectedPointShape = self_mSelectedSheet_connectedPoints {
          shape.add (connectedPointShape)
        }
        return shape
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
