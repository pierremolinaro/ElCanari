//
//  ApplicationDelegate.swift
//  canari
//
//  Created by Pierre Molinaro on 03/07/2015.
//
//
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

@objc (ApplicationDelegate) class ApplicationDelegate : NSObject, NSApplicationDelegate {
  @IBOutlet var mConvertLegacyDocumentLogWindow : NSWindow? = nil
  @IBOutlet var mConvertLegacyDocumentTextView : NSTextView? = nil
  @IBOutlet var mSaveConvertedDocumentInPlaceSwitch : NSButton? = nil
  @IBOutlet var mSaveAccessoryView : NSView? = nil

  //····················································································································

  func applicationDidFinishLaunching (_ notification: Notification) {
    if g_Preferences?.checkForSystemLibraryAtStartUp ?? false {
      let checkDate = g_Preferences?.nextSystemLibraryCheckAtStartUp ?? Date ()
      if checkDate < Date () {
        performLibraryUpdate (nil)
        g_Preferences?.systemLibraryCheckTimeIntervalAction (nil)
      }
    }
  }

  //····················································································································
  //  DO NOT OPEN A NEW DOCUMENT ON LAUNCH
  //····················································································································

  func applicationShouldOpenUntitledFile (_ application : NSApplication) -> Bool {
    // NSLog (@"%s", __PRETTY_FUNCTION__) ;
    return false
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
