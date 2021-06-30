//--- START OF USER ZONE 1


//--- END OF USER ZONE 1
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

extension AutoLayoutDeviceDocument {
  @objc func exportSelectedSymbols (_ sender : NSObject?) {
//--- START OF USER ZONE 2
    let selectedSymbolTypes = self.symbolTypeController.selectedArray
    for symbolType in selectedSymbolTypes {
      let savePanel = NSSavePanel ()
      savePanel.allowedFileTypes = ["ElCanariSymbol"]
      savePanel.allowsOtherFileTypes = false
      savePanel.nameFieldStringValue = symbolType.mTypeName + ".ElCanariSymbol"
      savePanel.beginSheetModal (for: self.windowForSheet!) { inResponse in
        if inResponse == .OK, let url = savePanel.url {
          try? symbolType.mFileData.write (to: url)
        }
      }
    }
//--- END OF USER ZONE 2
  }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
