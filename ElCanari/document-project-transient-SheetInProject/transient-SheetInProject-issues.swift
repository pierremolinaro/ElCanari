//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//----------------------------------------------------------------------------------------------------------------------

func transient_SheetInProject_issues (
       _ self_mPoints_status : [PointInSchematic_status]
) -> CanariIssueArray {
//--- START OF USER ZONE 2
        var pointDictionary = [CanariPoint : [SchematicPointStatus]] ()
        for object in self_mPoints_status {
          if let status = object.status {
            if let array = pointDictionary [status.location] {
              pointDictionary [status.location] = array + [status]
            }else{
              pointDictionary [status.location] = [status]
            }
          }
        }
        var issues = CanariIssueArray ()
        for (location, statusArray) in pointDictionary {
          if statusArray.count > 1 {
            let r = NSRect (
              x: canariUnitToCocoa (location.x) - SCHEMATIC_GRID_IN_COCOA_UNIT,
              y: canariUnitToCocoa (location.y) - SCHEMATIC_GRID_IN_COCOA_UNIT,
              width: SCHEMATIC_GRID_IN_COCOA_UNIT * 2.0,
              height: SCHEMATIC_GRID_IN_COCOA_UNIT * 2.0
            )
            let path = EBBezierPath (ovalIn: r)
            issues.append (CanariIssue (kind: .error, message: "\(statusArray.count) points at the same location", pathes: [path]))
          }else if !statusArray [0].connected {
            let r = NSRect (
              x: canariUnitToCocoa (location.x) - SCHEMATIC_GRID_IN_COCOA_UNIT,
              y: canariUnitToCocoa (location.y) - SCHEMATIC_GRID_IN_COCOA_UNIT,
              width: SCHEMATIC_GRID_IN_COCOA_UNIT * 2.0,
              height: SCHEMATIC_GRID_IN_COCOA_UNIT * 2.0
            )
            let path = EBBezierPath (ovalIn: r)
            issues.append (CanariIssue (kind: .warning, message: "Unconnected pin", pathes: [path]))
          }
        }
        return issues
//--- END OF USER ZONE 2
}

//----------------------------------------------------------------------------------------------------------------------
