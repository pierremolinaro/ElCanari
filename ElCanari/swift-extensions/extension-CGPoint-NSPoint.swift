//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Foundation

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   EXTENSION NSPoint
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

extension NSPoint : Hashable {

  //····················································································································

  static func center (_ p1 : NSPoint, _ p2 : NSPoint) -> NSPoint {
    return NSPoint (x: (p1.x + p2.x) / 2.0, y: (p1.y + p2.y) / 2.0)
  }

  //····················································································································

  static func distance (_ p1 : NSPoint, _ p2 : NSPoint) -> CGFloat {
    let dx = p1.x - p2.x
    let dy = p1.y - p2.y
    return sqrt (dx * dx + dy * dy)
  }

  //····················································································································

  func aligned (onGrid inGrid : CGFloat) -> NSPoint {
    var p = self
    p.x = (p.x / inGrid).rounded (.toNearestOrAwayFromZero) * inGrid
    p.y = (p.y / inGrid).rounded (.toNearestOrAwayFromZero) * inGrid
    return p
  }

  //····················································································································

  func canariPointAligned (onCanariGrid inCanariGrid : Int) -> CanariPoint {
    let p = CanariPoint (
     x: ((cocoaToCanariUnit (self.x) + inCanariGrid / 2) / inCanariGrid) * inCanariGrid,
     y: ((cocoaToCanariUnit (self.y) + inCanariGrid / 2) / inCanariGrid) * inCanariGrid
    )
    return p
  }

  //····················································································································

  var canariPoint : CanariPoint {
    return CanariPoint (x: cocoaToCanariUnit (self.x), y: cocoaToCanariUnit (self.y))
  }

  //····················································································································

  static func product (_ p1 : NSPoint, _ p2 : NSPoint, _ p3 : NSPoint) -> CGFloat {
    let dx2 = p2.x - p1.x
    let dy2 = p2.y - p1.y
    let dx3 = p3.x - p1.x
    let dy3 = p3.y - p1.y
    return dx2 * dy3 - dx3 * dy2
  }

  //····················································································································

  static func angleInRadian (_ p1 : NSPoint, _ p2 : NSPoint) -> CGFloat {
    let width = p2.x - p1.x
    let height = p2.y - p1.y
    var angle = atan2 (height, width) // Result in radian
    if angle < 0.0 {
      angle += 2.0 * CGFloat.pi
    }
    return angle
  }

  //····················································································································

  static func angleInDegrees (_ p1 : NSPoint, _ p2 : NSPoint) -> CGFloat {
    return self.angleInRadian (p1, p2) * 180.0 / CGFloat.pi
  }

  //····················································································································

  static func point (fromCenter inCenter : NSPoint, atDistance inDistance : CGFloat, angleInDegrees inRotationInDegrees : CGFloat) -> NSPoint {
    let angleInRadian = inRotationInDegrees * .pi / 180.0
    return NSPoint (x: inCenter.x + inDistance * cos (angleInRadian), y: inCenter.y + inDistance * sin (angleInRadian))
  }

  //····················································································································
  /// The hash value.
  ///
  /// Hash values are not guaranteed to be equal across different executions of
  /// your program. Do not save hash values to use during a future execution.
  //····················································································································

  public func hash (into hasher: inout Hasher) {
    self.x.hash (into: &hasher)
    self.y.hash (into: &hasher)
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
