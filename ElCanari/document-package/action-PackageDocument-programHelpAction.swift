//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

extension PackageDocument {
  @objc func programHelpAction (_ sender : NSObject?) {
//--- START OF USER ZONE 2
    if let window = self.windowForSheet, let panel = self.mProgramHelpPanel {
  //    window.resignKey ()
      window.beginSheet (panel, completionHandler: nil)
      // NSApp.runModal (for: panel)
   //   panel.makeKeyAndOrderFront (nil)
    }
//--- END OF USER ZONE 2
  }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
