//
//  AutoLayout-extension-NSControl-run-binding.swift
//  ElCanari
//
//  Created by Pierre Molinaro on 16/06/2021.
//
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

extension NSControl {

  //····················································································································

  final func bind_run (target inTarget : NSObject, selector inSelector : Selector) -> Self {
    self.target = inTarget
    self.action = inSelector
//    if let button = self as? NSButton {
//      NSSound.beep ()
//      button.bezelStyle = .roundRect
//    }
    return self
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
