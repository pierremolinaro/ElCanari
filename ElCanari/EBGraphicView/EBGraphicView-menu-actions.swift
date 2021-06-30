//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   EBGraphicView
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

extension EBGraphicView {

  //····················································································································

  @objc final func validateMenuItem (_ inMenuItem : NSMenuItem) -> Bool {
    let validate : Bool
    let action = inMenuItem.action
    if action == #selector (EBGraphicView.selectAll(_:)) {
      validate = (self.viewController?.objectCount ?? 0) > 0
    }else if action == #selector (EBGraphicView.cut(_:)) {
      validate = self.viewController?.canCut (self.pasteboardType) ?? false
    }else if action == #selector (EBGraphicView.copy(_:)) {
      validate = self.viewController?.canCopy (self.pasteboardType) ?? false
    }else if action == #selector (EBGraphicView.paste(_:)) {
      validate = self.viewController?.canPaste (self.pasteboardType) ?? false
    }else if action == #selector (EBGraphicView.delete(_:)) {
      validate = self.viewController?.canDelete () ?? false
    }else if action == #selector (EBGraphicView.bringToFront(_:)) {
      validate = self.viewController?.canBringToFront ?? false
    }else if action == #selector (EBGraphicView.bringForward(_:)) {
      validate = self.viewController?.canBringForward ?? false
    }else if action == #selector (EBGraphicView.sendToBack(_:)) {
      validate = self.viewController?.canSendToBack ?? false
    }else if action == #selector (EBGraphicView.sendBackward(_:)) {
      validate = self.viewController?.canSendBackward ?? false
    }else if action == #selector (EBGraphicView.snapToGrid(_:)) {
      validate = self.viewController?.canSnapToGrid (self.arrowKeyMagnitude) ?? false
    }else if action == #selector (EBGraphicView.flipHorizontally(_:)) {
      validate = self.viewController?.canFlipHorizontally ?? false
    }else if action == #selector (EBGraphicView.flipVertically(_:)) {
      validate = self.viewController?.canFlipVertically ?? false
    }else if action == #selector (EBGraphicView.rotate90Clockwise(_:)) {
      validate = self.viewController?.canRotate90 ?? false
    }else if action == #selector (EBGraphicView.rotate90CounterClockwise(_:)) {
      validate = self.viewController?.canRotate90 ?? false
    }else{
      validate = false
    }
    return validate
  }

  //····················································································································

  @objc final func cut (_ : Any?) {
    let translation = CanariPoint (x: self.shiftArrowKeyMagnitude, y: self.shiftArrowKeyMagnitude)
    self.viewController?.cutSelectedObjectsIntoPasteboard (self.pasteboardType, pasteOffset: translation)
  }

  //····················································································································

  @objc final func copy (_ : Any?) {
    let translation = CanariPoint (x: self.shiftArrowKeyMagnitude, y: self.shiftArrowKeyMagnitude)
    self.viewController?.copySelectedObjectsIntoPasteboard (self.pasteboardType, pasteOffset: translation)
  }

  //····················································································································

  @objc final func paste (_ : Any?) {
    if let windowForSheet = self.window {
      self.viewController?.pasteFromPasteboard (self.pasteboardType, windowForSheet)
    }
  }

  //····················································································································

  @objc final func delete (_ : Any?) {
    self.deleteSelection ()
  }

  //····················································································································

  internal final func deleteSelection () {
    self.viewController?.deleteSelectedObjects ()
  }

  //····················································································································

  override final func selectAll (_ : Any?) {
    self.viewController?.selectAllObjects ()
  }

  //····················································································································

  @objc final func bringForward () {
    self.viewController?.bringForward ()
  }

  //····················································································································

  @objc final func bringToFront (_ : Any?) {
    self.viewController?.bringToFront ()
  }

  //····················································································································

  @objc final func bringForward (_ : Any?) {
    self.viewController?.bringForward ()
  }

  //····················································································································

  @objc final func sendToBack (_ : Any?) {
    self.viewController?.sendToBack ()
  }

  //····················································································································

  @objc final func sendBackward (_ : Any?) {
    self.viewController?.sendBackward ()
  }

  //····················································································································

  @objc final func snapToGrid (_ : Any?) {
    self.viewController?.snapToGrid (self.arrowKeyMagnitude)
  }

  //····················································································································

  @objc final func flipHorizontally (_ : Any?) {
    self.viewController?.flipHorizontally ()
  }

  //····················································································································

  @objc final func flipVertically (_ : Any?) {
    self.viewController?.flipVertically ()
  }

  //····················································································································

  @objc final func rotate90Clockwise (_ : Any?) {
    self.viewController?.rotate90Clockwise ()
  }

  //····················································································································

  @objc final func rotate90CounterClockwise (_ : Any?) {
    self.viewController?.rotate90CounterClockwise ()
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
