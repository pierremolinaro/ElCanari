//--- START OF USER ZONE 1


//--- END OF USER ZONE 1
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

extension PackageDocument {
  @objc func loadModelImageFromPasteboardAction (_ sender : NSObject?) {
//--- START OF USER ZONE 2
    if let tiffData = NSImage (pasteboard: NSPasteboard.general)?.tiffRepresentation {
      self.rootObject.mModelImageData = tiffData
      self.rootObject.mModelImageFirstPointXOnLock = 0
      self.rootObject.mModelImageFirstPointYOnLock = 0
      self.rootObject.mModelImageScale = 1.0
      self.rootObject.mModelImageRotationInRadians = 0.0
      self.rootObject.mPointsAreLocked = false
      self.rootObject.mModelImageDoublePoint = nil
      self.rootObject.mModelImageObjects = []
      let pp = PackageModelImageDoublePoint (self.ebUndoManager)
      self.rootObject.mModelImageDoublePoint = pp
      self.rootObject.mModelImageObjects = [pp]
    }else if let window = self.windowForSheet {
      __NSBeep ()
      let alert = NSAlert ()
      alert.messageText = "Cannot paste an image."
      alert.informativeText = "The pasteboard does not contain a valid image."
      alert.beginSheetModal (for: window)
    }
//--- END OF USER ZONE 2
  }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
