//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

fileprivate let SHOW_OBJECT_BOUNDING_BOXES = false
fileprivate let SHOW_KNOB_BOUNDING_BOXES = false

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   EBView
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

extension EBView {

  //····················································································································
  // MARK: -
  //····················································································································

  override func draw (_ inDirtyRect: NSRect) {
    self.mBackColor.setFill ()
    NSBezierPath.fill (inDirtyRect)
    self.drawGrid (inDirtyRect)
    self.mUnderObjectsDisplay.draw (self, inDirtyRect)
    for object in self.objectDisplayArray {
      object.draw (self, inDirtyRect)
    }
    self.mOverObjectsDisplay.draw (self, inDirtyRect)
    for shape in self.selectionShapes {
      shape.draw (self, inDirtyRect)
    }
    self.drawIssue (inDirtyRect)
    self.drawGuideBezierPath (inDirtyRect)
    self.drawSelectionRectangle (inDirtyRect)
  //--- DEBUG
    if SHOW_OBJECT_BOUNDING_BOXES {
      NSColor.black.setStroke ()
      NSBezierPath.defaultLineWidth = 1.0
      for shape in self.objectDisplayArray {
        let r = shape.boundingBox.insetBy(dx: 0.5, dy: 0.5)
        NSBezierPath.stroke (r)
      }
    }
    if SHOW_KNOB_BOUNDING_BOXES {
      NSColor.black.setStroke ()
      NSBezierPath.defaultLineWidth = 1.0
      for shape in self.selectionShapes {
        let r = shape.boundingBox.insetBy(dx: 0.5, dy: 0.5)
        NSBezierPath.stroke (r)
      }
    }
  }

  //····················································································································

  fileprivate func drawGrid (_ inDirtyRect: NSRect) {
    let r = inDirtyRect
    let gridDisplayStep = self.mGridStep * CGFloat (self.mGridStepFactor)
    let startX = (r.origin.x / gridDisplayStep).rounded (.down) * gridDisplayStep
    let endX = r.maxX
    let startY = (r.origin.y / gridDisplayStep).rounded (.down) * gridDisplayStep
    let endY = r.maxY
    switch self.mGridStyle {
    case .noGrid :
      ()
    case .cross :
      let bp = NSBezierPath ()
      bp.lineWidth = 0.0
      bp.lineCapStyle = .round
      var x = startX
      while x <= endX {
        var y = startY
        while y <= endY {
          bp.move (to: NSPoint (x: x - 0.5, y: y))
          bp.line (to: NSPoint (x: x + 0.5, y: y))
          bp.move (to: NSPoint (x: x,       y: y + 0.5))
          bp.line (to: NSPoint (x: x,       y: y - 0.5))
          y += gridDisplayStep
        }
        x += gridDisplayStep
      }
      self.mGridCrossColor.setStroke ()
      bp.stroke ()
    case .line :
      let bp = NSBezierPath ()
      bp.lineWidth = 0.0
      bp.lineCapStyle = .round
      var x = startX
      while x <= r.maxX {
        let p1 = NSPoint (x: x, y: startY)
        let p2 = NSPoint (x: x, y: endY)
        bp.move (to: p1)
        bp.line (to: p2)
        x += gridDisplayStep
      }
      var y = startY
      while y <= endY {
        bp.move (to: NSPoint (x: startX, y: y))
        bp.line (to: NSPoint (x: endX  , y: y))
        y += gridDisplayStep
      }
      self.mGridLineColor.setStroke ()
      bp.stroke ()
    }
  }

  //····················································································································

  fileprivate func drawIssue (_ inDirtyRect : NSRect) {
    if let issueBezierPath = self.mIssueBezierPath, !issueBezierPath.isEmpty {
      switch self.mIssueKind {
      case .error :
        NSColor.red.withAlphaComponent (0.2).setFill ()
        issueBezierPath.fill ()
        NSColor.red.setStroke ()
        issueBezierPath.stroke ()
      case .warning :
        NSColor.orange.withAlphaComponent (0.2).setFill ()
        issueBezierPath.fill ()
        NSColor.orange.setStroke ()
        issueBezierPath.stroke ()
      }
    }
  }

  //····················································································································

  fileprivate func drawGuideBezierPath (_ inDirtyRect : NSRect) {
    if let bp = self.mGuideBezierPath, !bp.isEmpty {
      NSColor.orange.setStroke ()
      bp.stroke ()
    }
  }

  //····················································································································

  fileprivate func drawSelectionRectangle (_ inDirtyRect : NSRect) {
    if let r = self.mSelectionRectangle, !r.isEmpty, r.intersects (inDirtyRect) {
      NSColor.lightGray.withAlphaComponent (0.2).setFill ()
      NSBezierPath.fill (r)
      NSBezierPath.defaultLineWidth = 1.0 / self.actualScale
      let rStroke = r.insetBy (dx: 0.5 / self.actualScale, dy: 0.5 / self.actualScale)
      if !rStroke.isEmpty {
        NSColor.darkGray.setStroke ()
        NSBezierPath.stroke (rStroke)
      }
    }
  }

  //····················································································································
  // MARK: -
  //····················································································································

  internal func noteInvalidRectangles (old inOldShape : EBShape, new inNewShape : EBShape) {
    if inOldShape != inNewShape {
      self.setNeedsDisplay (inNewShape.boundingBox)
      self.setNeedsDisplay (inOldShape.boundingBox)
    }
  }

  //····················································································································

  internal func noteInvalidRectangles (old inOldShapes : [EBShape], new inNewShapes : [EBShape]) {
    // Swift.print ("noteInvalidRectangles")
    let minCount = min (inOldShapes.count, inNewShapes.count)
    var idx = 0
    while idx < minCount {
      if inNewShapes [idx] != inOldShapes [idx] {
        // Swift.print ("  object \(idx): \(inNewShapes [idx].boundingBox) -> \(inOldShapes [idx].boundingBox)")
        self.setNeedsDisplay (inNewShapes [idx].boundingBox)
        self.setNeedsDisplay (inOldShapes [idx].boundingBox)
      }
      idx += 1
    }
    while idx < inOldShapes.count {
      // Swift.print ("  old object \(idx)")
      self.setNeedsDisplay (inOldShapes [idx].boundingBox)
      idx += 1
    }
    while idx < inNewShapes.count {
      // Swift.print ("  new object \(idx)")
      self.setNeedsDisplay (inNewShapes [idx].boundingBox)
      idx += 1
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

