//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

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

  deinit {
    noteObjectDeallocation (self)
  }

  //····················································································································
  // MARK: -
  //····················································································································

  fileprivate weak var mDocument : EBManagedDocument? = nil // For handling drag destination

  //····················································································································

  var document : EBManagedDocument? { return self.mDocument }

  //····················································································································

  func register (document : EBManagedDocument, draggedTypes : [NSPasteboard.PasteboardType]) {
    self.mDocument = document
    self.registerForDraggedTypes (draggedTypes)
  }

  //····················································································································
  // MARK: -
  //····················································································································

  internal var mPlacardArray = [NSView] ()

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

  func setFocusRing (_ inValue : Bool) {
    if let focusView = self.superview as? EBFocusRingView {
      focusView.setFocusRing (inValue)
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
