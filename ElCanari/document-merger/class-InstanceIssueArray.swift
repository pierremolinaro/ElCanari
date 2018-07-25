//
//  class-InstanceIssueArray.swift
//  ElCanari
//
//  Created by Pierre Molinaro on 25/07/2018.
//
//
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   InstanceIssueArray
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

struct InstanceIssueArray : Hashable {

  //····················································································································
  //   Properties
  //····················································································································

  let mIssues : [InstanceIssue]

  //····················································································································
  //   Init
  //····················································································································

  init (issues inIssues : [InstanceIssue]) {
    mIssues = inIssues
  }

  //····················································································································
  //   count
  //····················································································································

  var count : Int { return mIssues.count }

  //····················································································································
  //   errorCount
  //····················································································································

  var errorCount : Int {
    var n = 0
    for issue in self.mIssues {
      switch issue.mKind {
      case .intersecting, .outside :
        n += 1
      case .gap :
        break
      }
    }
    return n
  }

  //····················································································································
  //   warningCount
  //····················································································································

  var warningCount : Int {
    var n = 0
    for issue in self.mIssues {
      switch issue.mKind {
      case .intersecting, .outside :
        break
      case .gap :
        n += 1
      }
    }
    return n
  }

  //····················································································································
  //   Protocol Equatable
  //····················································································································

  public static func == (lhs: InstanceIssueArray, rhs: InstanceIssueArray) -> Bool {
    if lhs.mIssues.count != rhs.mIssues.count {
      return false
    }else{
      var idx = 0
      while idx < lhs.mIssues.count {
        if lhs.mIssues [idx] != rhs.mIssues [idx] {
          return false
        }
        idx += 1
      }
      return true
    }
  }

  //····················································································································
  //   Protocol Hashable
  //····················································································································

  public var hashValue : Int {
    var h = 0
    for issue in mIssues {
      h ^= issue.hashValue
    }
    return h
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   InstanceIssueKind
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

enum InstanceIssueKind : Int {
  case intersecting
  case outside
  case gap
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   InstanceIssue
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

struct InstanceIssue : Hashable {

  //····················································································································
  //   Properties
  //····················································································································

  let mKind : InstanceIssueKind
  let mShapes : EBShapes
  let mRefRect : CanariBoardRect

  //····················································································································
  //   Init
  //····················································································································

  init (kind inKind : InstanceIssueKind, shapes inShapes : EBShapes, refRect inRefRect : CanariBoardRect) {
    mKind = inKind
    mShapes = inShapes
    mRefRect = inRefRect
  }

  //····················································································································
  //   Protocol Equatable
  //····················································································································

  public static func == (lhs: InstanceIssue, rhs: InstanceIssue) -> Bool {
    return (lhs.mKind == rhs.mKind) && (lhs.mShapes == rhs.mShapes) && (lhs.mRefRect == rhs.mRefRect)
  }

  //····················································································································
  //   Protocol Hashable
  //····················································································································

  public var hashValue: Int { return self.mKind.hashValue ^ self.mShapes.hashValue ^ self.mRefRect.hashValue }

  //····················································································································
  //
  //····················································································································

  public static func displaySortingCompare (lhs: InstanceIssue, rhs: InstanceIssue) -> Bool {
    return (lhs.mRefRect.bottom < rhs.mRefRect.bottom)
      || ((lhs.mRefRect.bottom == rhs.mRefRect.bottom) && (lhs.mRefRect.left < rhs.mRefRect.left))
  }

  //····················································································································

}


//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
