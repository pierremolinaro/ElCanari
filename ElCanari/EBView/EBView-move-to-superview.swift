//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   EBView
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

extension EBView {

  //····················································································································

  override func viewDidMoveToSuperview () {
    super.viewDidMoveToSuperview ()
    if self.superview != nil {
      self.installPlacards ()
      self.addEndLiveMagnificationObserver ()
      self.updateViewFrameAndBounds ()
    }
  }

  //····················································································································

//  override func viewWillMove (toSuperview inSuperview : NSView?) {
//     super.viewWillMove (toSuperview: inSuperview)
//  //--- Remove from superview ?
//    if nil == inSuperview {
//      self.removePlacards ()
//    }
//  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

