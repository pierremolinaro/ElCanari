//
//  class-CanariIssueArray.swift
//  ElCanari
//
//  Created by Pierre Molinaro on 25/07/2018.
//
//
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   CanariIssueArray
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

typealias CanariIssueArray = [CanariIssue]

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

extension Array where Element == CanariIssue {

  //····················································································································
  //   errorCount
  //····················································································································

  var errorCount : Int {
    var n = 0
    for issue in self {
      switch issue.mKind {
      case .error :
        n += 1
      case .warning :
        ()
      }
    }
    return n
  }

  //····················································································································
  //   warningCount
  //····················································································································

  var warningCount : Int {
    var n = 0
    for issue in self {
      switch issue.mKind {
      case .error :
        ()
      case .warning :
        n += 1
      }
    }
    return n
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
