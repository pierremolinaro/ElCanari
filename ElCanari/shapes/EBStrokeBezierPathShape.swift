//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    EBStrokeBezierPathShape
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class EBStrokeBezierPathShape : EBShape {
  private var mPaths : [NSBezierPath]
  private let mColor : NSColor
  private var mCachedBoundingBox : NSRect?

  //····················································································································
  //  Init
  //····················································································································

  init (_ inPaths: [NSBezierPath], _ inColor: NSColor) {
    mPaths = inPaths
    mColor = inColor
    super.init ()
  }

  //····················································································································
  //  append
  //····················································································································

  func append (path inBezierPath : NSBezierPath) {
    self.mPaths.append (inBezierPath)
    self.mCachedBoundingBox = nil
  }

  //····················································································································
  //  transformedBy
  //····················································································································

  override func transformedBy (_ inAffineTransform : NSAffineTransform) -> EBShape {
    var paths = [NSBezierPath] ()
    for path in self.mPaths {
      let bp = inAffineTransform.transform (path)
      paths.append (bp)
    }
    let result = EBStrokeBezierPathShape (paths, self.mColor)
    self.internalTransform (result, by: inAffineTransform)
    return result
  }

  //····················································································································
  //  Draw Rect
  //····················································································································

  override func draw (_ inDirtyRect: NSRect) {
    super.draw (inDirtyRect)
    self.mColor.setStroke ()
    for bp in self.mPaths {
      bp.stroke ()
    }
  }

  //····················································································································
  // boundingBox
  //····················································································································

  override var boundingBox : NSRect {
    if let cbb = mCachedBoundingBox {
      return cbb
    }else{
      var r = super.boundingBox
      for bp in self.mPaths {
        let lineWidth = max (bp.lineWidth, 1.0)
        r = r.union (bp.bounds.insetBy (dx: -lineWidth, dy: -lineWidth))
      }
      self.mCachedBoundingBox = r
      return r
    }
  }

  //····················································································································
  //   Contains point
  //····················································································································

  override func contains (point inPoint : NSPoint) -> Bool {
    var result = super.contains (point: inPoint)
    var idx = 0
    while (idx < self.mPaths.count) && !result {
      let p = self.mPaths [idx].cgPath.copy (
        strokingWithWidth: self.mPaths [idx].lineWidth,
        lineCap: .round,
        lineJoin: .round,
        miterLimit: 1.0)
      result = p.contains (inPoint) // , using: .winding)
//      result = self.mPaths [idx].contains (inPoint) )
      idx += 1
    }
    return result
  }

  //····················································································································
  //   intersects
  //····················································································································

  override func intersects (rect inRect : NSRect) -> Bool {
    var result = super.intersects (rect: inRect)
    var idx = 0
    while (idx < self.mPaths.count) && !result {
      if self.mPaths [idx].bounds.intersects (inRect) {
        result = true
      }
      idx += 1
    }
    return result
  }

  //····················································································································
  //   isEqualTo
  //····················································································································

  override func isEqualTo (_ inOperand : EBShape) -> Bool {
    var equal = false
    if let operand = inOperand as? EBStrokeBezierPathShape {
      equal = self.mPaths.count == operand.mPaths.count
      if equal {
        equal = super.isEqualTo (inOperand)
      }
      var idx = 0
      while (idx < self.mPaths.count) && equal {
        equal = self.mPaths [idx] == operand.mPaths [idx]
        idx += 1
      }
    }
    return equal
  }

  //····················································································································
  /// The hash value.
  ///
  /// Hash values are not guaranteed to be equal across different executions of
  /// your program. Do not save hash values to use during a future execution.
  //····················································································································

  override public var hashValue : Int {
    var h = super.hashValue
    h.rotateLeft ()
    h ^= mColor.hashValue
    for path in self.mPaths {
      h.rotateLeft ()
      h ^= path.hashValue
    }
    return h
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
