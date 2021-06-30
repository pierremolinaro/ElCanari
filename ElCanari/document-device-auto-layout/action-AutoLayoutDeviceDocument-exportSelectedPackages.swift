//--- START OF USER ZONE 1


//--- END OF USER ZONE 1
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

extension AutoLayoutDeviceDocument {
  @objc func exportSelectedPackages (_ sender : NSObject?) {
//--- START OF USER ZONE 2
    let selectedPackages = self.packageController.selectedArray
    for package in selectedPackages {
      let savePanel = NSSavePanel ()
      savePanel.allowedFileTypes = ["ElCanariPackage"]
      savePanel.allowsOtherFileTypes = false
      savePanel.nameFieldStringValue = package.mName + ".ElCanariPackage"
      savePanel.beginSheetModal (for: self.windowForSheet!) { inResponse in
        if inResponse == .OK, let url = savePanel.url {
          try? package.mFileData.write (to: url)
        }
      }
    }
//--- END OF USER ZONE 2
  }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
