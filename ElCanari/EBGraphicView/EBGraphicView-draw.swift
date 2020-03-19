//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

fileprivate let GRID_WIDTH : CGFloat = 0.0 // 1.0 / 20.0

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   EBGraphicView
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

extension EBGraphicView {

  //····················································································································
  // MARK: -
  //····················································································································

  override func draw (_ inDirtyRect : NSRect) {
    self.mBackColor.setFill ()
    NSBezierPath.fill (inDirtyRect)
    if let ciImage = self.mBackgroundImage {
      let r =  ciImage.extent
      ciImage.draw (in: r, from: r, operation: .copy, fraction: 1.0)
    }
    self.drawGrid (inDirtyRect)
    self.mUnderObjectsDisplay.draw (inDirtyRect)
    for object in self.objectDisplayArray {
      object.draw (inDirtyRect)
    }
    self.mOverObjectsDisplay.draw (inDirtyRect)
    for shape in self.selectionShapes {
      shape.draw (inDirtyRect)
    }
    self.drawIssue (inDirtyRect)
    self.drawGuideBezierPath (inDirtyRect)
    self.drawSelectionRectangle (inDirtyRect)
    self.drawControlKeyHiliteCircle (inDirtyRect)
  }

  //····················································································································

  fileprivate func drawGrid (_ inDirtyRect : NSRect) {
    let r = inDirtyRect
    let gridDisplayStep = canariUnitToCocoa (self.mGridStepInCanariUnit) * CGFloat (self.mGridDisplayFactor)
    let startX = (r.origin.x / gridDisplayStep).rounded (.down) * gridDisplayStep
    let endX = (r.maxX / gridDisplayStep + 1.0).rounded (.up) * gridDisplayStep
    let startY = (r.origin.y / gridDisplayStep).rounded (.down) * gridDisplayStep
    let endY = (r.maxY / gridDisplayStep + 1.0).rounded (.up) * gridDisplayStep
    switch self.mGridStyle {
    case .noGrid :
      ()
    case .cross :
      let bp = NSBezierPath ()
      bp.lineWidth = GRID_WIDTH
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
      bp.lineWidth = GRID_WIDTH
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
    if !self.mIssueBezierPathes.isEmpty {
      switch self.mIssueKind {
      case .error :
        NSColor.red.withAlphaComponent (0.5).setFill ()
        for bp in self.mIssueBezierPathes {
          bp.fill ()
        }
        if self.mDrawFrameIssue {
          NSColor.red.setStroke ()
          for bp in self.mIssueBezierPathes {
            bp.stroke ()
          }
        }
      case .warning :
        NSColor.orange.withAlphaComponent (0.5).setFill ()
        for bp in self.mIssueBezierPathes {
          bp.fill ()
        }
        if self.mDrawFrameIssue {
          NSColor.orange.setStroke ()
          for bp in self.mIssueBezierPathes {
            bp.stroke ()
          }
        }
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

  fileprivate func drawControlKeyHiliteCircle (_ inDirtyRect : NSRect) {
    if let r = self.mControlKeyHiliteRectangle, !r.isEmpty, r.intersects (inDirtyRect) {
      let bp = NSBezierPath (ovalIn: r)
      bp.lineWidth = 1.0 / self.actualScale
      NSColor.lightGray.withAlphaComponent (0.2).setFill ()
      bp.fill ()
      NSColor.green.setStroke ()
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
      self.setNeedsDisplay (inNewShape.boundingBox.insetBy (dx: -1.0, dy: -1.0))
      self.setNeedsDisplay (inOldShape.boundingBox.insetBy (dx: -1.0, dy: -1.0))
    }
  }

  //····················································································································

  internal func noteInvalidRectangles (old inOldShapes : [EBShape], new inNewShapes : [EBShape]) {
    let minCount = min (inOldShapes.count, inNewShapes.count)
    var idx = 0
    while idx < minCount {
      if inNewShapes [idx] != inOldShapes [idx] {
        self.setNeedsDisplay (inNewShapes [idx].boundingBox.insetBy (dx: -1.0, dy: -1.0))
        self.setNeedsDisplay (inOldShapes [idx].boundingBox.insetBy (dx: -1.0, dy: -1.0))
      }
      idx += 1
    }
    while idx < inOldShapes.count {
      self.setNeedsDisplay (inOldShapes [idx].boundingBox.insetBy (dx: -1.0, dy: -1.0))
      idx += 1
    }
    while idx < inNewShapes.count {
      self.setNeedsDisplay (inNewShapes [idx].boundingBox.insetBy (dx: -1.0, dy: -1.0))
      idx += 1
    }
  }

  //····················································································································

  func scrollToVisibleObjectsOrToZero () {
    let box = self.objectsAndIssueBoundingBox
    if box.isEmpty {
      self.scroll (NSPoint ())
    }else{
      _ = self.scrollToVisible (box)
    }
  }
  
  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

