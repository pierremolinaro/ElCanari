//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

extension Preferences {
  func addLibraryEntryAction (_ sender : NSObject) {
//--- START OF USER ZONE 2
    let op = NSOpenPanel ()
    op.allowsMultipleSelection = false
    op.canChooseDirectories = true
    op.canChooseFiles = false
    op.beginSheetModal (for: (sender as! NSButton).window!,
      completionHandler: { (inReturnCode : Int) in
        #if swift(>=4)
          let NSModalResponseOK = NSApplication.ModalResponse.OK
        #endif
        if inReturnCode == NSModalResponseOK {
          let URLToAdd : URL = op.urls [0]
          let pathToAdd : String? = URLToAdd.path
          if let unwPathToAdd = pathToAdd {
            let newEntry = CanariLibraryEntry ()
            newEntry.mPath = unwPathToAdd
            var array = self.additionnalLibraryArray_property.propval
            array.append (newEntry)
            self.additionnalLibraryArray_property.setProp (array)
          }
        }
      }
    )
//--- END OF USER ZONE 2
  }
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
