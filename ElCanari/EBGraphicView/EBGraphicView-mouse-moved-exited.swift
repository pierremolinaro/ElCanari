
//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------

extension EBGraphicView {

  //····················································································································

  final override func mouseMoved (with inEvent : NSEvent) {
    super.mouseMoved (with: inEvent)
    let locationInView = self.convert (inEvent.locationInWindow, from: nil)
    let locationOnGridInView = locationInView.aligned (onGrid: canariUnitToCocoa (self.mouseGridInCanariUnit))
    self.updateXYplacards (locationOnGridInView)
    if self.window?.firstResponder == self, self.visibleRect.contains (locationInView) {
      self.mOptionalMouseMovedOrFlagsChangedShape = self.mMouseMovedOrFlagsChangedCallback? (locationInView)
    }else{
      self.mMouseExitCallback? ()
    }
  //--- Set cursor
    self.setCursor (forLocationInView: locationInView)
  }

  //····················································································································

  final override func mouseExited (with inEvent : NSEvent) {
    super.mouseExited (with: inEvent)
    self.clearXYplacards ()
    self.mMouseExitCallback? ()
    self.mOptionalMouseMovedOrFlagsChangedShape = nil
    NSCursor.arrow.set ()
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
