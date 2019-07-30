//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

extension ProjectDocument {
  @objc func importArtworkAction (_ sender : NSObject?) {
//--- START OF USER ZONE 2
        if let window = self.windowForSheet {
          if self.rootObject.mArtwork == nil { // Import artwork
            gOpenArtworkInLibrary?.loadDocumentFromLibrary (
              windowForSheet: window,
              alreadyLoadedDocuments: [],
              callBack: { (_ inData : Data, _ inName : String) in
                if let (_, _, rootObject) = try? loadEasyBindingFile (self.ebUndoManager, from: inData), let artworkRoot = rootObject as? ArtworkRoot {
                  self.rootObject.mArtwork = artworkRoot
                  self.rootObject.mArtworkName = inName
                }
              },
              postAction: {}
            )
          }else{ // Detach artwork
            self.rootObject.mArtwork = nil
            self.rootObject.mArtworkName = ""
          }
        }
//--- END OF USER ZONE 2
  }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
