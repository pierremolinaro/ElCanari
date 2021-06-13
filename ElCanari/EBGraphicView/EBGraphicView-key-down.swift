//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------

extension EBGraphicView {

  //····················································································································

  final override func keyDown (with inEvent : NSEvent) {
    let amount : Int = inEvent.modifierFlags.contains (.shift)
      ? self.shiftArrowKeyMagnitude
      : self.arrowKeyMagnitude
    if let characters = inEvent.characters, let myWindow = self.window {
      for character in characters.unicodeScalars {
        switch (character) {
        case NSEvent.SpecialKey (rawValue: 27).unicodeScalar : // Escape
          self.mMouseDownBehaviour.abortMouseOperation (self)
          let mouseLocationInView = self.convert (myWindow.mouseLocationOutsideOfEventStream, from: nil)
          self.setHelperTextField (self.mMouseDownBehaviour.helperString (mouseLocationInView, inEvent.modifierFlags, self))
        case NSEvent.SpecialKey.upArrow.unicodeScalar :
          _ = self.wantsToTranslateSelection (byX: 0, byY: amount)
        case NSEvent.SpecialKey.downArrow.unicodeScalar :
          _ = self.wantsToTranslateSelection (byX: 0, byY: -amount)
        case NSEvent.SpecialKey.leftArrow.unicodeScalar :
          _ = self.wantsToTranslateSelection (byX: -amount, byY: 0)
        case NSEvent.SpecialKey.rightArrow.unicodeScalar :
          _ = self.wantsToTranslateSelection (byX: amount, byY: 0)
        case NSEvent.SpecialKey.deleteForward.unicodeScalar, NSEvent.SpecialKey.delete.unicodeScalar :
          self.deleteSelection ()
        default :  // Note: inEvent.locationInWindow undefined on non-mouse event
          let mouseLocationInView = self.convert (myWindow.mouseLocationOutsideOfEventStream, from: nil)
          self.mKeyDownCallback? (mouseLocationInView, character)
          break
        }
      }
    }
  }

  //····················································································································

  final private func wantsToTranslateSelection (byX inDx : Int, byY inDy : Int) -> Bool {
    var accepted = true
    for object in self.viewController?.selectedGraphicObjectSet ?? [] {
      if !object.acceptToTranslate (xBy: inDx, yBy: inDy) {
        accepted = false
        break
      }
    }
    if accepted {
      var userSet = Set <ObjcObject> ()
      for object in self.viewController?.selectedGraphicObjectSet ?? [] {
        object.translate (xBy: inDx, yBy:inDy, userSet: &userSet)
      }
    }
    return accepted
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
