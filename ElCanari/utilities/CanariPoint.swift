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

//  var hashValue : Int {
//    return self.x ^ self.y
//  }
  public func hash (into hasher: inout Hasher) {
    self.x.hash (into: &hasher)
    self.y.hash (into: &hasher)
  }

  //····················································································································
  //   Cocoa Point
  //····················································································································

  func cocoaPoint () -> NSPoint {
    return NSPoint (x: canariUnitToCocoa (self.x), y: canariUnitToCocoa (self.y))
  }

  //····················································································································
  //   Aligned Point
  //····················································································································

  func point (alignedOnGrid inGrid: Int) -> CanariPoint {
    return CanariPoint (x: ((self.x + inGrid / 2) / inGrid) * inGrid, y: ((self.y + inGrid / 2) / inGrid) * inGrid)
  }

  //····················································································································

  static func angleInRadian (_ p1 : CanariPoint, _ p2 : CanariPoint) -> CGFloat {
    let width  = CGFloat (p2.x - p1.x)
    let height = CGFloat (p2.y - p1.y)
    var angle = atan2 (height, width) // Result in radian
    if angle < 0.0 {
      angle += 2.0 * CGFloat.pi
    }
    return angle
  }

 //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
