//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

extension DeviceDocument {
  @objc func addSymbolFromLibraryAction (_ sender : NSObject?) {
//--- START OF USER ZONE 2
   var currentSymbolNames = Set <String> ()
   for symbolType in self.rootObject.mSymbolTypes {
     currentSymbolNames.insert (symbolType.mTypeName)
   }
   gOpenSymbolInLibrary?.loadDocumentFromLibrary (
     windowForSheet: self.windowForSheet!,
     alreadyLoadedDocuments: currentSymbolNames,
     callBack: self.symbolTypeFromLoadSymbolDialog,
     postAction: nil
  )
//--- END OF USER ZONE 2
  }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
