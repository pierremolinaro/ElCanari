//--- START OF USER ZONE 1


//--- END OF USER ZONE 1
//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------

extension AutoLayoutDeviceDocument {
  @objc func updateSymbolsAndPackagesAction (_ sender : NSObject?) {
//--- START OF USER ZONE 2
    var okMessages = [String] ()
    var errorMessages = [String] ()
    self.performSymbolsUpdate (&okMessages, &errorMessages)
    self.performPackagesUpdate (self.rootObject.mPackages, &okMessages, &errorMessages)
    let alert = NSAlert ()
    alert.messageText = (errorMessages.count == 0) ? "Success." : "Error."
    alert.informativeText = (okMessages + errorMessages).joined (separator: "\n")
    alert.beginSheetModal (for: self.windowForSheet!)
//--- END OF USER ZONE 2
  }
}

//----------------------------------------------------------------------------------------------------------------------
