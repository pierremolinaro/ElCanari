//--- START OF USER ZONE 1


//--- END OF USER ZONE 1
//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------

extension ProjectDocument {
  @objc func launchFreeRouterAction (_ sender : NSObject?) {
//--- START OF USER ZONE 2
        if let freeRouterApplication : String = Bundle.main.path (forResource: "Freerouting", ofType: "app") {
          let ok = NSWorkspace.shared.launchApplication (freeRouterApplication)
          if !ok {
            let alert = NSAlert ()
            alert.messageText = "Cannot launch FreeRouting application"
            alert.beginSheetModal (for: self.windowForSheet!) { (NSModalResponse) in }
          }
        }else{
            let alert = NSAlert ()
            alert.messageText = "Internal Error"
            alert.informativeText = "FreeRouting application does not exist."
            alert.beginSheetModal (for: self.windowForSheet!) { (NSModalResponse) in }
        }
//--- END OF USER ZONE 2
  }
}

//----------------------------------------------------------------------------------------------------------------------
