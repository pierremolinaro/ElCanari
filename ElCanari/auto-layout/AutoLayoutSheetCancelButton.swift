//
//  AutoLayoutSheetCancelButton.swift
//
//  Created by Pierre Molinaro on 16/06/2021.
//
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
// Key equivalent should be "escape" ("\u{1b}" in Swift)
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class AutoLayoutSheetCancelButton : NSButton, EBUserClassNameProtocol {

  //····················································································································

  init (title inTitle : String,
        size inSize : EBControlSize,
        sheet inPanel : NSPanel,
        isInitialFirstResponder inInitialFirstResponder : Bool) {
    super.init (frame: NSRect ())
    noteObjectAllocation (self)
    self.translatesAutoresizingMaskIntoConstraints = false

    self.setButtonType (.momentaryPushIn)
    self.bezelStyle = .rounded
    self.title = inTitle
    self.controlSize = inSize.cocoaControlSize
    self.font = NSFont.systemFont (ofSize: NSFont.systemFontSize (for: self.controlSize))

    if inInitialFirstResponder {
      inPanel.initialFirstResponder = self
    }

    self.target = self
    self.action = #selector (Self.dismissSheetAction (_:))
    self.keyEquivalent = "\u{1b}"
  }

  //····················································································································

  required init? (coder inCoder : NSCoder) {
    fatalError ("init(coder:) has not been implemented")
  }

  //····················································································································

  deinit {
    noteObjectDeallocation (self)
  }

  //····················································································································

  @objc func dismissSheetAction (_ sender : Any?) {
    if let mySheet = self.window, let parent = mySheet.sheetParent {
      mySheet.endEditing (for: nil)
      parent.endSheet (mySheet, returnCode: .cancel)
    }
  }


  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
