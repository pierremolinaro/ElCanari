//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_MergerDocument_issues (
       _ root_overlapingArrangment : Bool,
       _ root_boardRect : CanariRect, 
       _ root_boardDisplayRect : CanariRect,
       _ root_boardInstances_instanceRect : [MergerBoardInstance_instanceRect],
       _ root_boardInstances_boardLimitWidth : [MergerBoardInstance_boardLimitWidth]
) -> CanariIssueArray {
//--- START OF USER ZONE 2
      let cocoaDisplayRect = root_boardDisplayRect.cocoaRect ()
      var array = [CanariIssue] ()
    //-------------------- Check for instance intersection
      var idx = 0
      while idx < root_boardInstances_instanceRect.count {
        let instanceRect = root_boardInstances_instanceRect [idx].instanceRect!
        let instanceLimits = root_boardInstances_boardLimitWidth [idx].boardLimitWidth!
        var idy = idx + 1
        while idy < root_boardInstances_instanceRect.count {
          let otherInstanceRect = root_boardInstances_instanceRect [idy].instanceRect!
          let otherInstanceLimits = root_boardInstances_boardLimitWidth [idy].boardLimitWidth!
          let inset = root_overlapingArrangment ? min (instanceLimits, otherInstanceLimits) : 0
          let intersection = instanceRect.intersection (otherInstanceRect.insetBy (dx: inset, dy: inset))
          if !intersection.isEmpty {
            let intersectionEnlarged : NSRect = intersection.cocoaRect ().insetBy (dx: -3.0, dy: -3.0)
            let bp1 = NSBezierPath (rect: cocoaDisplayRect)
            bp1.appendRect (intersectionEnlarged)
            bp1.windingRule = .evenOdd
            let shapes = EBShape ()
            shapes.append (shape: EBFilledBezierPathShape ([bp1], NSColor.gray.withAlphaComponent (0.5)))
            let bp2 = NSBezierPath (rect: intersectionEnlarged)
            bp2.lineWidth = 2.0
            shapes.append (shape: EBStrokeBezierPathShape ([bp2], NSColor.red))
            let issue = CanariIssue (kind: .error, message: "Intersection", shapes: shapes, refRect: intersection)
            array.append (issue)
          }
          idy += 1
        }
        idx += 1
      }
    //-------------------- Check instance are within bounds
      for instance in root_boardInstances_instanceRect {
        let instanceRect = instance.instanceRect!
        let r = root_boardRect.union (instanceRect)
        if r != root_boardRect {
          let intersectionEnlarged : NSRect = instanceRect.cocoaRect ().insetBy (dx: -3.0, dy: -3.0)
          let bp1 = NSBezierPath (rect: cocoaDisplayRect)
          bp1.appendRect (intersectionEnlarged)
          bp1.windingRule = .evenOdd
          let shapes = EBShape ()
          shapes.append (shape: EBFilledBezierPathShape ([bp1], NSColor.gray.withAlphaComponent (0.5)))
          let bp2 = NSBezierPath (rect: intersectionEnlarged)
          bp2.lineWidth = 2.0
          shapes.append (shape: EBStrokeBezierPathShape ([bp2], NSColor.red))
          let issue = CanariIssue (kind: .error, message: "Outside board", shapes: shapes, refRect: instanceRect)
          array.append (issue)
        }
      }
    //-------------------- Sort issues
      array.sort (by: CanariIssue.displaySortingCompare)
    //--------------------
      return CanariIssueArray (issues: array)
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
