//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

extension ProjectDocument {
  @objc func openSetDateDialogAction (_ sender : NSObject?) {
//--- START OF USER ZONE 2
    if let window = self.windowForSheet, let panel = self.mSetDatePanel {
      self.mSchematicsDatePicker?.dateValue = self.rootObject.mSchematicsDate
      window.beginSheet (panel) { (_ inResponse : NSApplication.ModalResponse) in
        if inResponse == .stop, let newDate = self.mSchematicsDatePicker?.dateValue {
          self.rootObject.mSchematicsDate = newDate
        }
      }
    }
//--- END OF USER ZONE 2
  }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
