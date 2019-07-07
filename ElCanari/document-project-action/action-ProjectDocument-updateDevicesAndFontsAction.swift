//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

extension ProjectDocument {
  @objc func updateDevicesAndFontsAction (_ sender : NSObject?) {
//--- START OF USER ZONE 2
        var messages = [String] ()
        self.updateDevices (self.rootObject.mDevices, &messages)
        self.updateFonts (self.rootObject.mFonts, &messages)
        if messages.count > 0 {
          let alert = NSAlert ()
          alert.messageText = "Error updating project"
          alert.informativeText = messages.joined (separator: "\n")
          alert.beginSheetModal (for: self.windowForSheet!, completionHandler: nil)
        }
//--- END OF USER ZONE 2
  }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
