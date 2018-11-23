//
//  CanariPoint.swift
//  ElCanari
//
//  Created by Pierre Molinaro on 21/11/2018.
//
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Foundation

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  Struct CanariPoint
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

struct CanariPoint : Equatable, Hashable {
  var x : Int
  var y : Int

  //····················································································································
  //   init
  //····················································································································

  init () {
    x = 0
    y = 0
  }

  //····················································································································

  init (x inX : Int, y inY : Int) {
    x = inX
    y = inY
  }

   //····················································································································
  //   Protocol Equatable
  //····················································································································

  public static func == (lhs: CanariPoint, rhs: CanariPoint) -> Bool {
    return (lhs.x == rhs.x) && (lhs.y == rhs.y)
  }

  //····················································································································
  //   Protocol Hashable: hashValue
  //····················································································································

  var hashValue : Int {
    return self.x ^ self.y
  }

  //····················································································································
  //   Cocoa Point
  //····················································································································

  func cocoaPoint () -> NSPoint {
    return NSPoint (x: canariUnitToCocoa (self.x), y: canariUnitToCocoa (self.y))
  }

 //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
