//
//  extension-PackageDocument-modelImageActions.swift
//  ElCanari
//
//  Created by Pierre Molinaro on 20/03/2020.
//
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

extension PackageDocument {

  //····················································································································

  @objc @IBAction func pasteModelImageAction (_ sender : NSObject?) {
    // Swift.print ("\(NSPasteboard.general.types)")
    // Swift.print ("AVAILABLE: \(NSPasteboard.general.availableType (from :[.png, .tiff]))")
    if let tiffData = NSImage (pasteboard: NSPasteboard.general)?.tiffRepresentation {
      self.rootObject.mModelImageData = tiffData
      self.rootObject.mModelImageDeltaX = 0
      self.rootObject.mModelImageDeltaY = 0
      self.rootObject.mModelImageFirstPointXOnLock = 0
      self.rootObject.mModelImageFirstPointYOnLock = 0
      self.rootObject.mModelImageScale = 1.0
      self.rootObject.mModelImageRotationInRadians = 0.0
      self.rootObject.mPointsAreLocked = false
    }else if let window = self.windowForSheet {
      __NSBeep ()
      let alert = NSAlert ()
      alert.messageText = "Cannot paste an image."
      alert.informativeText = "The pasteboard does not contain a valid image."
      alert.beginSheetModal (for: window)
    }
  }

  //····················································································································

  @objc @IBAction func removeModelImageAction (_ sender : NSObject?) {
    self.rootObject.mModelImageData = Data ()
    self.rootObject.mModelImageDeltaX = 0
    self.rootObject.mModelImageDeltaY = 0
    self.rootObject.mModelImageFirstPointXOnLock = 0
    self.rootObject.mModelImageFirstPointYOnLock = 0
    self.rootObject.mModelImageScale = 1.0
    self.rootObject.mModelImageRotationInRadians = 0.0
    self.rootObject.mPointsAreLocked = false
  }

  //····················································································································

  @objc @IBAction func resetGreenAndBluePointsAction (_ sender : NSObject?) {
  //--- Reset point image
    self.rootObject.mPointsAreLocked = false
    self.rootObject.mModelImageDeltaX = 0
    self.rootObject.mModelImageDeltaY = 0
    self.rootObject.mModelImageFirstPointXOnLock = 0
    self.rootObject.mModelImageFirstPointYOnLock = 0
    self.rootObject.mModelImageFirstPoint = nil
    self.rootObject.mModelImageSecondPoint = nil
    self.rootObject.mModelImageScale = 1.0
    self.rootObject.mModelImageRotationInRadians = 0.0
    self.rootObject.mModelImageObjects = []
    self.mModelImageView?.set(backgroundImageAffineTransform: .identity)
  //---
    self.buildGreenAndBluePointsIfRequired ()
  }

  //····················································································································

  func buildGreenAndBluePointsIfRequired () {
   //--- Add Model image points
     if self.rootObject.mModelImageFirstPoint == nil {
       let p = PackageModelImagePoint (self.ebUndoManager)
       p.mX = 2_286 * 200 // 200 mils
       p.mY = 2_286 * 200 // 200 mils
       p.mColor = .systemGreen
       self.rootObject.mModelImageFirstPoint = p
     }
     if self.rootObject.mModelImageSecondPoint == nil {
       let p = PackageModelImagePoint (self.ebUndoManager)
       p.mX = 2_286 * 400 // 400 mils
       p.mY = 2_286 * 400 // 400 mils
       p.mColor = .systemBrown
       self.rootObject.mModelImageSecondPoint = p
     }
     if self.rootObject.mModelImageObjects.count != 2 {
       self.rootObject.mModelImageObjects = []
       self.rootObject.mModelImageObjects = [self.rootObject.mModelImageFirstPoint!, self.rootObject.mModelImageSecondPoint!]
     }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
