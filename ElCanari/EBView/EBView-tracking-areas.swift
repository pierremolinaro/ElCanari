//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

extension EBView {

  //····················································································································

  override func updateTrackingAreas () { // This is required for receiving mouse moved and mouseExited events
    self.updateViewFrameAndBounds ()
  //--- Remove current tracking areas
    let currentTrackingAreas = self.trackingAreas
    for trackingArea in currentTrackingAreas {
      self.removeTrackingArea (trackingArea)
    }
  //--- Add Updated tracking area
    let trackingArea = NSTrackingArea (
      rect: self.bounds,
      options: [.mouseEnteredAndExited, .mouseMoved, .activeInKeyWindow],
      owner: self,
      userInfo: nil
    )
    self.addTrackingArea (trackingArea)
  //---
    super.updateTrackingAreas ()
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
