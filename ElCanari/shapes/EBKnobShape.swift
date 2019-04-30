//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    EBKnobShape
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

enum EBKnobKind {
  case rect
  case circ
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class EBKnobShape : EBShape {
  private let mKnobSize : CGFloat
  private let mPoint : CGPoint
  private let mIndex : Int
  private let mKind : EBKnobKind

  //····················································································································
  //  Init
  //····················································································································

  init (at inPoint: CGPoint, index inIndex : Int, _ inKind : EBKnobKind, _ inKnobSize : CGFloat) {
    mPoint = inPoint
    mIndex = inIndex
    mKind = inKind
    mKnobSize = inKnobSize
    super.init ()
  }

  //····················································································································
  //  transformedBy
  //····················································································································

  override func transformedBy (_ inAffineTransform : NSAffineTransform) -> EBKnobShape {
    let p = inAffineTransform.transform (self.mPoint)
    let result = EBKnobShape (at: p, index: self.mIndex, self.mKind, self.mKnobSize)
    self.internalTransform (result, by: inAffineTransform)
    return result
  }

  //····················································································································
  // rect
  //····················································································································

  fileprivate var rect : NSRect {
    return NSRect (
      x: self.mPoint.x - self.mKnobSize / 2.0,
      y: self.mPoint.y - self.mKnobSize / 2.0,
      width:  self.mKnobSize,
      height: self.mKnobSize
    )
  }

  //····················································································································
  // boundingBox (used for invalidating drawings)
  //····················································································································

  override internal func internalBoundingBox () -> NSRect {
    return self.rect
  }

  //····················································································································
  //  Draw Rect
  //····················································································································

  override func draw (_ inView : NSView, _ inDirtyRect: NSRect) {
    super.draw (inView, inDirtyRect)
    if inView.needsToDraw (self.rect) {
      let bp : NSBezierPath
      switch mKind {
      case .rect :
        bp = NSBezierPath (rect: self.rect)
      case .circ :
        bp = NSBezierPath (ovalIn: self.rect)
      }
      bp.lineWidth = 0.0
      bp.lineCapStyle = .round
      NSColor.white.setFill ()
      bp.fill ()
      NSColor.black.setStroke ()
      bp.stroke ()
    }
  }

  //····················································································································
  //   Contains point
  //····················································································································

  override func contains (point inPoint : NSPoint) -> Bool {
    var result = self.rect.contains (inPoint)
    if !result {
      result = super.contains (point: inPoint)
    }
    return result
  }

  //····················································································································
  //   Knob Index
  //····················································································································

  override func knobIndex (at inPoint : NSPoint) -> Int? {
    if self.rect.contains (inPoint) {
      return self.mIndex
    }else{
      return super.knobIndex (at: inPoint)
    }
  }

  //····················································································································
  //   intersects
  //····················································································································

  override func intersects (rect inRect : NSRect) -> Bool {
    var result = self.rect.intersects (inRect)
    if !result {
      result = super.intersects (rect: inRect)
    }
    return result
  }

  //····················································································································
  //   isEqualToShape
  //····················································································································

  override func isEqualToShape (_ inOperand : EBShape) -> Bool {
    var equal = false
    if let operand = inOperand as? EBKnobShape {
      equal = self.mPoint == operand.mPoint
      if equal {
        equal = self.mIndex == operand.mIndex
      }
      if equal {
        equal = self.mKind == operand.mKind
      }
      if equal {
        equal = super.isEqualToShape (operand)
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

  override func hash (into hasher: inout Hasher) {
    super.hash (into: &hasher)
    self.mPoint.x.hash (into: &hasher)
    self.mPoint.y.hash (into: &hasher)
    self.mIndex.hash (into: &hasher)
    self.mKind.hash (into: &hasher)
    self.mKnobSize.hash (into: &hasher)
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
