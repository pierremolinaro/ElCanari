//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol EBFocusRingViewProtocol : AnyObject {
  func setFocusRing (_ inValue : Bool)
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

let FOCUS_RING_MARGIN : CGFloat = 5.0
let RING_COLOR = NSColor (calibratedRed: 130.0 / 255.0, green: 171.0 / 255.0, blue: 241.0 / 255.0, alpha: 1.0)

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class EBFocusRingView : NSView, EBUserClassNameProtocol, EBFocusRingViewProtocol {

  //····················································································································
  // MARK: -
  //····················································································································

  required init? (coder : NSCoder) {
    super.init (coder: coder)
    noteObjectAllocation (self)
  }

  //····················································································································

  override init (frame : NSRect) {
    super.init (frame: frame)
    noteObjectAllocation (self)
  }

  //····················································································································

  deinit {
    noteObjectDeallocation (self)
  }

  //····················································································································

  override func awakeFromNib () {
    super.awakeFromNib ()
    if self.subviews.count == 1, let scrollView = self.subviews [0] as? EBScrollView {
      let r = self.bounds
      scrollView.frame = r.insetBy (dx: FOCUS_RING_MARGIN, dy: FOCUS_RING_MARGIN)
    }
  }

  //····················································································································
  //  FOCUS RING
  //····················································································································

  private var mHasFocusRing = false {
    didSet {
      self.needsDisplay = true
    }
  }

  //····················································································································

  func setFocusRing (_ inValue : Bool) {
    self.mHasFocusRing = inValue
  }

  //····················································································································

  override func draw (_ inDirtyRect : NSRect) {
    super.draw (inDirtyRect)
    if self.mHasFocusRing {
      let w = (FOCUS_RING_MARGIN - 1.0) / 2.0
      let r = self.bounds.insetBy (dx: w, dy: w)
      let bp = NSBezierPath (roundedRect: r, xRadius: w / 2.0, yRadius: w / 2.0)
      bp.lineWidth = w * 2.0
      RING_COLOR.setStroke ()
      bp.stroke ()
    }
  }

  //····················································································································
  //  MOUSE UP
  //····················································································································

  override func mouseUp (with inEvent : NSEvent) {
    let locationInView = self.convert (inEvent.locationInWindow, from: nil)
    if self.bounds.contains (locationInView),
        self.subviews.count == 1,
        let scrollView = self.subviews [0] as? NSScrollView,
        let graphicView = scrollView.documentView as? EBGraphicView {
      self.window?.makeFirstResponder (graphicView)
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
