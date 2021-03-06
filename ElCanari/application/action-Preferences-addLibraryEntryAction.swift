//--- START OF USER ZONE 1


//--- END OF USER ZONE 1
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

extension Preferences {
  @objc func addLibraryEntryAction (_ sender : NSObject?) {
//--- START OF USER ZONE 2
    let op = NSOpenPanel ()
    op.allowsMultipleSelection = false
    op.canChooseDirectories = true
    op.canChooseFiles = false
    op.beginSheetModal (
      for: (sender as! NSButton).window!,
      completionHandler: { (inReturnCode : NSApplication.ModalResponse) in
        if inReturnCode == .OK {
          let URLToAdd : URL = op.urls [0]
          let pathToAdd = URLToAdd.path
          let newEntry = CanariLibraryEntry (self.ebUndoManager)
          newEntry.mPath = pathToAdd
          var array = preferences_additionnalLibraryArray_property.propval
          array.append (newEntry)
          preferences_additionnalLibraryArray_property.setProp (array)
        }
      }
    )
//--- END OF USER ZONE 2
  }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
