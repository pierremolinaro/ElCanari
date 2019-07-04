//
//  class-CanariIssue.swift
//  ElCanari
//
//  Created by Pierre Molinaro on 25/07/2018.
//
//
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

let CANARI_ISSUE_HILITE_SIZE : CGFloat = milsToCocoaUnit (25.0) * 4.0

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   CanariIssueKind
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

enum CanariIssueKind {
  case warning
  case error
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   CanariIssue
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

struct CanariIssue : Hashable {

  //····················································································································
  //   Properties
  //····················································································································

  let kind : CanariIssueKind
  let message : String
  let path : EBBezierPath
  let representativeValue : Int

  //····················································································································
  //   Init
  //····················································································································

  init (kind inKind : CanariIssueKind,
        message inMessage : String,
        path inBezierPath : EBBezierPath = EBBezierPath (),
        representativeValue inValue : Int = 0) {
    message = inMessage
    path = inBezierPath
    kind = inKind
    representativeValue = inValue
  }

  //····················································································································
  // Bezier path center point
  //····················································································································

  var center : NSPoint {
    if self.path.isEmpty {
      return NSPoint ()
    }else{
      return NSPoint (x: self.path.bounds.midX, y: self.path.bounds.midY)
    }
  }

  //····················································································································
  // Sorting
  //····················································································································

  public static func displaySortingCompare (lhs: CanariIssue, rhs: CanariIssue) -> Bool {
    let lP = lhs.center
    let rP = rhs.center
    return (lP.x < rP.x) || ((lP.x == rP.x) && (lP.y < rP.y))
  }

  //····················································································································

}


//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
