//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

let CohenSutherlandOutcodeLEFT   : UInt8 = 1
let CohenSutherlandOutcodeRIGHT  : UInt8 = 2
let CohenSutherlandOutcodeBOTTOM : UInt8 = 4
let CohenSutherlandOutcodeTOP    : UInt8 = 8

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   EXTENSION NSRect
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

extension NSRect : Hashable {

  //····················································································································

  init (point p1 : NSPoint, point p2 : NSPoint) {
    self.init ()
    self.origin = NSPoint (x: min (p1.x, p2.x), y: min (p1.y, p2.y))
    self.size = NSSize (width: abs (p1.x - p2.x), height: abs (p1.y - p2.y))
  }

  //····················································································································

  init (center inCenter : NSPoint, size inSize : CGFloat) {
    self.init ()
    self.origin = NSPoint (x: inCenter.x - inSize / 2.0, y: inCenter.y - inSize / 2.0)
    self.size = NSSize (width: inSize, height: inSize)
  }

  //····················································································································
  //   Canari Rect
  //····················································································································

  var canariRect : CanariRect {
    return CanariRect (
      left: cocoaToCanariUnit (self.origin.x),
      bottom: cocoaToCanariUnit (self.origin.y),
      width: cocoaToCanariUnit (self.size.width),
      height: cocoaToCanariUnit (self.size.height)
    )
  }

  //····················································································································
  //   Contains point
  //····················································································································

  func CohenSutherlandOutcode (x inX : CGFloat, y inY : CGFloat) -> UInt8 {
    var result : UInt8 = 0
    if inX < self.minX {
      result |= CohenSutherlandOutcodeLEFT
    }else if inX > self.maxX {
      result |= CohenSutherlandOutcodeRIGHT
    }
    if inY < self.minY {
      result |= CohenSutherlandOutcodeBOTTOM
    }else if inY > self.maxY {
      result |= CohenSutherlandOutcodeTOP
    }
    return result
  }

  //····················································································································
  // https://en.wikipedia.org/wiki/Cohen–Sutherland_algorithm

  func clippedSegment (p1 inP1 : NSPoint, p2 inP2 : NSPoint) -> (NSPoint, NSPoint)? {
    var result : (NSPoint, NSPoint)? = nil
    var p1 = inP1
    var p2 = inP2
    var loop = true
    while loop {
      let p1OutCode = self.CohenSutherlandOutcode (x: p1.x, y: p1.y)
      let p2OutCode = self.CohenSutherlandOutcode (x: p2.x, y: p2.y)
      if (p1OutCode | p2OutCode) == 0 { // Both points are inside
        result = (p1, p2)
        loop = false
      }else if (p1OutCode & p2OutCode) != 0 { // Both points are outside, no intersection
        loop = false // returns nil
      }else{ // non trivial case
      // Failed both tests, so calculate the line segment to clip from an outside point to an intersection with clip edge
        let p : NSPoint
      // At least one endpoint is outside the clip rectangle; pick it.
        let outcode = (p1OutCode != 0) ? p1OutCode : p2OutCode
      // Now find the intersection point;
      // use formulas:
      //   slope = (y2 - y1) / (x2 - x1)
      //   x = x1 + (1 / slope) * (ym - y1), where ym is ymin or ymax
      //   y = y1 + slope * (xm - x1), where xm is xmin or xmax
      // No need to worry about divide-by-zero because, in each case, the
      // outcode bit being tested guarantees the denominator is non-zero
        if (outcode & CohenSutherlandOutcodeTOP) != 0 {           // point is above the clip window
          p = NSPoint (x: p1.x + (p2.x - p1.x) * (self.maxY - p1.y) / (p2.y - p1.y), y: self.maxY)
        }else if (outcode & CohenSutherlandOutcodeBOTTOM) != 0 { // point is below the clip window
          p = NSPoint (x: p1.x + (p2.x - p1.x) * (self.minY - p1.y) / (p2.y - p1.y), y: self.minY)
        }else if (outcode & CohenSutherlandOutcodeRIGHT) != 0 {  // point is to the right of clip window
          p = NSPoint (x: self.maxX, y: p1.y + (p2.y - p1.y) * (self.maxX - p1.x) / (p2.x - p1.x))
        }else{ // if (outcode & CohenSutherlandOutcodeLEFT) != 0 {   // point is to the left of clip window
          p = NSPoint (x: self.minX, y:p1.y + (p2.y - p1.y) * (self.minX - p1.x) / (p2.x - p1.x))
        }
      // Now we move outside point to intersection point to clip and get ready for next pass.
        if outcode == p1OutCode {
          p1 = p
  //        outcode0 = ComputeOutCode(x0, y0);
        }else{
          p2 = p
  //        outcode1 = ComputeOutCode(x1, y1);
        }
      }
    }
    return result
  }

  //····················································································································

  func intersectsStrokeBezierPath (_ inPath: NSBezierPath) -> Bool {
    var intersect = self.intersects (inPath.bounds)
    if intersect {
      intersect = false
      var points = [NSPoint] (repeating: .zero, count: 3)
      var currentPoint = NSPoint ()
      let flattenedPath = inPath.flattened
      var idx = 0
      while (idx < flattenedPath.elementCount) && !intersect {
        let type = flattenedPath.element (at: idx, associatedPoints: &points)
        idx += 1
        switch type {
        case .moveTo:
          currentPoint = points [0]
        case .lineTo:
          let p = points [0]
          let possibleResultSegment = self.clippedSegment (p1: currentPoint, p2: p)
          intersect = possibleResultSegment != nil
          currentPoint = p
        case .curveTo, .closePath: // Flattened path has no element of theses types
          ()
        @unknown default:
          ()
        }
      }
    }
    return intersect
  }

  //····················································································································

  func intersectsFilledBezierPath (_ inPath: NSBezierPath) -> Bool {
    var intersect = self.intersects (inPath.bounds)
    if intersect {
      intersect = inPath.contains (self.origin) // Bottom left
      if !intersect {
        intersect = inPath.contains (NSPoint (x: self.minX, y: self.maxY)) // Top left
      }
      if !intersect {
        intersect = inPath.contains (NSPoint (x: self.maxX, y: self.maxY)) // Top right
      }
      if !intersect {
        intersect = inPath.contains (NSPoint (x: self.maxX, y: self.minY)) // Bottom right
      }
      if !intersect {
        var points = [NSPoint] (repeating: .zero, count: 3)
        var currentPoint = NSPoint ()
        let flattenedPath = inPath.flattened
        var idx = 0
        while (idx < flattenedPath.elementCount) && !intersect {
          let type = flattenedPath.element (at: idx, associatedPoints: &points)
          idx += 1
          switch type {
          case .moveTo:
            currentPoint = points [0]
          case .lineTo:
            let p = points [0]
            let possibleResultSegment = self.clippedSegment (p1: currentPoint, p2: p)
            intersect = possibleResultSegment != nil
            currentPoint = p
          case .curveTo, .closePath: // Flattened path has no element of theses types
            ()
          @unknown default:
            ()
          }
        }
      }
    }
    return intersect
  }

  //····················································································································

  var center : NSPoint {
    return NSPoint (x: self.origin.x + self.size.width / 2.0, y: self.origin.y + self.size.height / 2.0)
  }

  //····················································································································
  //   Protocol Hashable
  //····················································································································

  public func hash (into hasher : inout Hasher) {
    self.origin.hash (into: &hasher)
    self.size.hash (into: &hasher)
  }

  //····················································································································
  // Relative location of a point from rectangle center
  //
  //    *———————————————*
  //    |\             /|
  //    | \   above   / |
  //    |  \         /  |
  //    |   \       /   |
  //    |    \     /    |
  //    |     \   /     |
  //    |      \ /      |
  //    | left  * right |
  //    |      / \      |
  //    |     /   \     |
  //    |    /     \    |
  //    |   /       \   |
  //    |  /         \  |
  //    | /   below   \ |
  //    |/             \|
  //    *———————————————*
  //
  //····················································································································

  enum RelativeLocation { case right ; case above ; case left ; case below}

  //····················································································································

  func relativeLocation (of inPoint : NSPoint) -> RelativeLocation {
    if self.isEmpty {
      return .left
    }else{
      let dx = inPoint.x - self.origin.x
      let dy = inPoint.y - self.origin.y
      if (dx == 0) && (dy == 0) {
        return .left
      }else{
         let underAscendingDiagonal  = (self.size.width * dy) < (self.size.height * dx)
         let descendingDiagonalX = self.size.width
         let descendingDiagonalY = -self.size.height
         let dxFromTopLeft = dx
         let dyFromTopLeft = inPoint.y - self.origin.y - self.size.height
         let underDescendingDiagonal = (descendingDiagonalX * dyFromTopLeft) < (descendingDiagonalY * dxFromTopLeft)
         switch (underAscendingDiagonal, underDescendingDiagonal) {
         case (false, false) :
           return .above
         case (false, true) :
           return .left
         case (true, false) :
           return .right
         case (true, true) :
           return .below
         }
      }
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
