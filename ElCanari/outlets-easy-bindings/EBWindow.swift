//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------

class EBWindow : NSWindow, EBUserClassNameProtocol {

  //····················································································································

  override init (contentRect : NSRect,
                 styleMask aStyle : NSWindow.StyleMask,
                 backing bufferingType : NSWindow.BackingStoreType,
                 defer flag : Bool) {
    super.init (contentRect: contentRect, styleMask: aStyle, backing: bufferingType, defer: flag)
    noteObjectAllocation (self)
  }
  
  //····················································································································

  deinit {
    noteObjectDeallocation (self)
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
