//--- START OF USER ZONE 1


//--- END OF USER ZONE 1
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

extension PackageDocument {
  @objc func loadDIL16ModelImageFromResourcesAction (_ sender : NSObject?) {
//--- START OF USER ZONE 2
    if let tiffData = NSImage (named: "model-image-dil16")?.tiffRepresentation {
      self.rootObject.mModelImageData = tiffData
      self.rootObject.reset_mModelImageFirstPointXOnLock_toDefaultValue ()
      self.rootObject.reset_mModelImageFirstPointYOnLock_toDefaultValue ()
      self.rootObject.reset_mModelImageScale_toDefaultValue ()
      self.rootObject.reset_mModelImageRotationInRadians_toDefaultValue ()
      self.rootObject.reset_mPointsAreLocked_toDefaultValue ()
      self.rootObject.reset_mModelPointsCircleRadius_toDefaultValue ()
      self.rootObject.mModelImageDoublePoint = nil
      self.rootObject.mModelImageObjects = []
      let pp = PackageModelImageDoublePoint (self.ebUndoManager)
      self.rootObject.mModelImageDoublePoint = pp
      self.rootObject.mModelImageObjects = [pp]
    }else if let window = self.windowForSheet {
      __NSBeep ()
      let alert = NSAlert ()
      alert.messageText = "Cannot load the image."
      alert.informativeText = "There is no such image in Application resources."
      alert.beginSheetModal (for: window)
    }
//--- END OF USER ZONE 2
  }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
