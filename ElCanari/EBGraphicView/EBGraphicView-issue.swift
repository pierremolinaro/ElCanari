//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

extension EBGraphicView {

  //····················································································································

  func setIssue (_ inBezierPathes : [EBBezierPath], _ issueKind : CanariIssueKind) {
    if self.mIssueBezierPathes != inBezierPathes {
      self.setNeedsDisplay (self.issueBoundingBox.insetBy (dx: -1.0, dy: -1.0))
      self.mIssueBezierPathes = inBezierPathes
      self.mIssueKind = issueKind
      self.updateViewFrameAndBounds ()
      self.scrollToVisible (self.issueBoundingBox)
      self.setNeedsDisplay (self.issueBoundingBox.insetBy (dx: -1.0, dy: -1.0))
    }
  }

  //····················································································································

  internal var issueBoundingBox : NSRect {
    var box = NSRect.null
    for bp in self.mIssueBezierPathes {
      box = box.union (bp.bounds)
    }
    return box
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

