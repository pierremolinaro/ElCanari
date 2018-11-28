//
//  extension-CGPoint.swift
//  ElCanari
//
//  Created by Pierre Molinaro on 13/11/2016.
//
//
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Foundation

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   EXTENSION CGPoint
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

extension CGPoint {

  //····················································································································

  static func distance (_ p1 : CGPoint, _ p2 : CGPoint) -> CGFloat {
    let dx = p1.x - p2.x
    let dy = p1.y - p2.y
    return sqrt (dx * dx + dy * dy)
  }

  //····················································································································

  func aligned (onGrid inGrid : CGFloat) -> CGPoint {
    var p = self
    p.x = (p.x / inGrid).rounded (.toNearestOrAwayFromZero) * inGrid
    p.y = (p.y / inGrid).rounded (.toNearestOrAwayFromZero) * inGrid
    return p
  }

  //····················································································································

  func canariPointAligned (onCanariGrid inCanariGrid : Int) -> CanariPoint {
    let p = CanariPoint (
     x: ((cocoaToCanariUnit (self.x) + inCanariGrid / 2) / inCanariGrid) * inCanariGrid,
     y:  ((cocoaToCanariUnit (self.y) + inCanariGrid / 2) / inCanariGrid) * inCanariGrid
    )
    return p
  }

  //····················································································································

  static func product (_ p1 : CGPoint, _ p2 : CGPoint, _ p3 : CGPoint) -> CGFloat {
    let dx2 = p2.x - p1.x
    let dy2 = p2.y - p1.y
    let dx3 = p3.x - p1.x
    let dy3 = p3.y - p1.y
    return dx2 * dy3 - dx3 * dy2
  }

  //····················································································································

  static func angleInRadian (_ p1 : CGPoint, _ p2 : CGPoint) -> CGFloat {
    let width = p2.x - p1.x
    let height = p2.y - p1.y
    let angle = atan2 (height, width) // Result in radian
//    if width == 0.0 && height == 0.0 {
//      print ("width \(width), height \(height), angle \(angle * 180.0 / CGFloat.pi)")
//    }
    return angle
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
