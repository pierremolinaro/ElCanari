//
//  MergerSegmentArray.swift
//  ElCanari
//
//  Created by Pierre Molinaro on 26/06/2018.
//
//
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Foundation

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   MergerSegmentArray
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class MergerSegmentArray : EBSimpleClass {

  //····················································································································

  let segmentArray : [MergerSegment]

  //····················································································································

  init (_ inArray : [MergerSegment]) {
    segmentArray = inArray
    super.init ()
  }

  //····················································································································

  override init () {
    segmentArray = []
    super.init ()
  }

  //····················································································································

  override var description : String {
    get {
      return "MergerSegmentArray " + String (self.segmentArray.count)
    }
  }

  //····················································································································

  func buildLayer (color inColor : NSColor, display inDisplay : Bool) -> CALayer {
    return self.buildLayer (dx:0, dy:0, color:inColor, display:inDisplay)
  }

  //····················································································································

  func buildLayer (dx inDx : Int, dy inDy: Int, color inColor : NSColor, display inDisplay : Bool) -> CALayer {
    var components = [CAShapeLayer] ()
    if inDisplay {
      for segment in self.segmentArray {
        let shape = segment.segmentShape (color:inColor.cgColor)
    //    shape.drawsAsynchronously = DRAWS_ASYNCHRONOUSLY
        shape.isOpaque = true
        components.append (shape)
      }
    }
    let result = CALayer ()
    result.position = CGPoint (x:canariUnitToCocoa (inDx), y:canariUnitToCocoa (inDy))
    result.sublayers = components
    return result
  }

  //····················································································································

  func add (toArchiveArray : inout [String], dx inDx : Int, dy inDy: Int) {
    for segment in self.segmentArray {
      let s = "\(segment.x1 + inDx) \(segment.y1 + inDy) \(segment.x2 + inDx) \(segment.y2 + inDy) \(segment.width)"
      toArchiveArray.append (s)
    }
  }

  //····················································································································

  func add (toStrokeBezierPaths ioBezierPaths : inout [NSBezierPath],
            dx inDx : Int,
            dy inDy: Int,
            horizontalMirror inHorizontalMirror : Bool,
            boardWidth inBoardWidth : Int) {
    for segment in self.segmentArray {
      let x1 = canariUnitToCocoa (inHorizontalMirror ? (inBoardWidth - segment.x1 - inDx) : (segment.x1 + inDx))
      let y1 = canariUnitToCocoa (segment.y1 + inDy)
      let x2 = canariUnitToCocoa (inHorizontalMirror ? (inBoardWidth - segment.x2 - inDx) : (segment.x2 + inDx))
      let y2 = canariUnitToCocoa (segment.y2 + inDy)
      let width = canariUnitToCocoa (segment.width)
      let bp = NSBezierPath ()
      bp.move (to:CGPoint (x:x1, y:y1))
      bp.line (to:CGPoint (x:x2, y:y2))
      bp.lineWidth = width
      bp.lineCapStyle = .roundLineCapStyle
      ioBezierPaths.append (bp)
    }
  }

  //····················································································································

  func add (toApertures ioApertures : inout [String : [String]],
            dx inDx : Int,
            dy inDy: Int,
            horizontalMirror inHorizontalMirror : Bool,
            boardWidth inBoardWidth : Int) {
    for segment in self.segmentArray {
      let x1 = canariUnitToMilTenth (inHorizontalMirror ? (inBoardWidth - segment.x1 - inDx) : (segment.x1 + inDx))
      let y1 = canariUnitToMilTenth (segment.y1 + inDy)
      let x2 = canariUnitToMilTenth (inHorizontalMirror ? (inBoardWidth - segment.x2 - inDx) : (segment.x2 + inDx))
      let y2 = canariUnitToMilTenth (segment.y2 + inDy)
      let apertureString = "C,\(String(format: "%.4f", canariUnitToInch (segment.width)))"
      let moveTo = "X\(x1)Y\(y1)D02"
      let lineTo = "X\(x2)Y\(y2)D01"
      if let array = ioApertures [apertureString] {
        var a = array
        let possibleLastLineTo = "X\(x1)Y\(y1)D01"
        if possibleLastLineTo != a.last! {
          a.append (moveTo)
        }
        a.append (lineTo)
        ioApertures [apertureString] = a
      }else{
        ioApertures [apertureString] = [moveTo, lineTo]
      }
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   MergerSegment
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class MergerSegment : EBSimpleClass {

  //····················································································································

  let x1 : Int
  let y1 : Int
  let x2 : Int
  let y2 : Int
  let width : Int

  //····················································································································

  init (x1 inX1 : Int, y1 inY1 : Int, x2 inX2 : Int, y2 inY2 : Int, width inWidth : Int) {
    x1 = inX1
    y1 = inY1
    x2 = inX2
    y2 = inY2
    width = inWidth
    super.init ()
  }

  //····················································································································

  func segmentShape (color : CGColor) -> CAShapeLayer {
    let x1f : CGFloat = canariUnitToCocoa (self.x1)
    let y1f : CGFloat = canariUnitToCocoa (self.y1)
    let x2f : CGFloat = canariUnitToCocoa (self.x2)
    let y2f : CGFloat = canariUnitToCocoa (self.y2)
    let widthf : CGFloat = canariUnitToCocoa (self.width)
    let path = CGMutablePath ()
    // NSLog ("x1f \(x1f), y1f \(y1f), x2f \(x2f), y2f \(y2f), widthf \(widthf)")
    path.move (to:CGPoint (x:x1f, y:y1f))
    path.addLine (to:CGPoint (x:x2f, y:y2f))
    let shape = CAShapeLayer ()
    shape.path = path
    shape.position = CGPoint (x:0.0, y:0.0)
    shape.strokeColor = color
    shape.lineWidth = widthf
    shape.lineCap = kCALineCapRound
    return shape
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
