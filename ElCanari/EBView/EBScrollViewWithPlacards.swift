//
//  EBScrollViewWithPlacards.swift
//  ElCanari
//
//  Created by Pierre Molinaro on 24/06/2018.
//
//
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

@objc(EBScrollViewWithPlacards) class EBScrollViewWithPlacards : NSScrollView, EBUserClassNameProtocol {

  fileprivate var mPlacardArray = [NSView] ()

  //····················································································································
  // MARK: -
  //····················································································································

  required init? (coder: NSCoder) {
    super.init (coder:coder)
    noteObjectAllocation (self)
  }

  //····················································································································

  override init (frame:NSRect) {
    super.init (frame:frame)
    noteObjectAllocation (self)
  }
  
  //····················································································································

  deinit {
    noteObjectDeallocation (self)
  }

  //····················································································································
  // MARK: -
  //····················································································································

  func addPlacard (_ inPlacardView : NSView) {
    if !mPlacardArray.contains (inPlacardView) {
      mPlacardArray.append (inPlacardView)
      self.addSubview (inPlacardView)
    }
  }

  //····················································································································

  func removePlacard (_ inPlacardView : NSView?) {
    if let view = inPlacardView, mPlacardArray.contains (view) {
      view.removeFromSuperview ()
      if let index = mPlacardArray.index (of: view) {
        mPlacardArray.remove (at: index)
      }
    }
  }

  //····················································································································
  // MARK: -
  //····················································································································

  override func tile () {
    super.tile ()
    self.updatePlacardsLocation ()
//    if let contentView = self.documentView as? EBView {
//      contentView.updateViewFrameAndBounds ()
//    }
  }

  //····················································································································

  private final func updatePlacardsLocation () {
    if let horizScroller = self.horizontalScroller, mPlacardArray.count > 0 {
      var horizScrollerFrame : NSRect = horizScroller.frame
      for placard in mPlacardArray {
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
  // MARK: -
  //  Mouse down
  //  Strangely, an NSScrollView does not respond to ctrl-click for displaying a contextual menu
  //····················································································································

  override func mouseDown (with inEvent: NSEvent) {
    let modifierFlags = inEvent.modifierFlags
    if modifierFlags.contains (.control) && !(modifierFlags.contains (.shift) || modifierFlags.contains (.option)) { // Ctrl Key On, no shift
    //  NSLog ("\(self.menu)")
      if let theMenu = self.menu {
        NSMenu.popUpContextMenu (theMenu, with: inEvent, for: self)
      }
    }else{
      super.mouseDown (with:inEvent)
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————