//--- START OF USER ZONE 1


//--- END OF USER ZONE 1
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

extension AutoLayoutDeviceDocument {
  @objc func addPackageFromLibraryAction (_ sender : NSObject?) {
//--- START OF USER ZONE 2
   var currentPackageNames = Set <String> ()
   for package in self.rootObject.mPackages {
     currentPackageNames.insert (package.mName)
   }
   gOpenPackageInLibrary?.loadDocumentFromLibrary (
     windowForSheet: self.windowForSheet!,
     alreadyLoadedDocuments: currentPackageNames,
     callBack: self.packageFromLoadPackageDialog,
     postAction: nil
  )
//--- END OF USER ZONE 2
  }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
