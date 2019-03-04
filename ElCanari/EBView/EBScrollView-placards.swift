//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

extension EBScrollView {

  //····················································································································
  // MARK: -
  //····················································································································

  func addPlacard (_ inPlacardView : NSView) {
    if !self.mPlacardArray.contains (inPlacardView) {
      self.mPlacardArray.append (inPlacardView)
      self.addSubview (inPlacardView)
    }
  }

  //····················································································································

//  func removePlacard (_ inPlacardView : NSView?) {
//    if let view = inPlacardView, self.mPlacardArray.contains (view) {
//      view.removeFromSuperview ()
//      if let index = self.mPlacardArray.firstIndex (of: view) {
//        self.mPlacardArray.remove (at: index)
//      }
//    }
//  }

  //····················································································································
  // MARK: -
  //····················································································································

  override func tile () { // tile is called during live resizing
    super.tile ()
    self.updatePlacardsLocation ()
  }

  //····················································································································

  private final func updatePlacardsLocation () {
    if let horizScroller = self.horizontalScroller, self.mPlacardArray.count > 0 {
      var horizScrollerFrame : NSRect = horizScroller.frame
      for placard in self.mPlacardArray {
        var placardFrame : NSRect = placard.frame

      //--- Now we'll just adjust the horizontal scroller size and set the placard size and location.
        horizScrollerFrame.size.width -= placardFrame.size.width;
        horizScroller.setFrameSize (horizScrollerFrame.size)

      // Put placard where the horizontal scroller is
        placardFrame.origin.x = NSMinX (horizScrollerFrame);

      // Move horizontal scroller over to the right of the placard
        horizScrollerFrame.origin.x = NSMaxX(placardFrame);
        horizScroller.setFrameOrigin (horizScrollerFrame.origin)

      // Adjust height of placard
        placardFrame.size.height = horizScrollerFrame.size.height + 1.0
        placardFrame.origin.y = self.bounds.size.height - placardFrame.size.height

      // Move the placard into place
        placard.frame = placardFrame
      }
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
