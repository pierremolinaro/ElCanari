//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------

class EBScrollView : NSScrollView, EBUserClassNameProtocol {

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
  // MARK: -
  //····················································································································

  override func tile () {
    super.tile ()
    if let graphicView = self.documentView as? EBGraphicView {
      graphicView.scrollViewIsLiveResizing ()
    }
  }

  //····················································································································
  // MARK: -
  //····················································································································

  fileprivate weak var mDocument : EBManagedXibDocument? = nil // For handling drag destination

  //····················································································································

  var document : EBManagedXibDocument? { return self.mDocument }

  //····················································································································

  func register (document : EBManagedXibDocument, draggedTypes : [NSPasteboard.PasteboardType]) {
    self.mDocument = document
    self.registerForDraggedTypes (draggedTypes)
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

//  func setFocusRing (_ inValue : Bool) {
//    if let focusView = self.superview as? EBFocusRingView {
//      focusView.setFocusRing (inValue)
//    }
//  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
