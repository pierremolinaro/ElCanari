//
//  open-symbol-in-library.swift
//  ElCanari
//
//  Created by Pierre Molinaro on 08/01/2019.
//
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

var gOpenFontInLibrary : OpenFontInLibrary? = nil

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
// This class is instancied as object in MainMenu.xib
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class OpenFontInLibrary : OpenInLibrary {

  //····················································································································
  //   INIT
  //····················································································································

  override init () {
    super.init ()
    gOpenFontInLibrary = self
  }


  //····················································································································
  //   Dialog
  //····················································································································

  @objc @IBAction func openFontInLibrary (_ inSender : Any?) {
    super.openDocumentInLibrary (windowTitle: "Open Font in Library")
  }

  //····················································································································

  override func buildDataSource (alreadyLoadedDocuments inNames : Set <String>) {
    self.buildTableViewDataSource (extension: "ElCanariFont", alreadyLoadedDocuments: inNames, {
      (_ inRootObject : EBManagedObject?) -> NSImage? in
      return nil // NSImage (named: okStatusImageName)
    })
  }

  //····················································································································

  override func partLibraryPathForPath (_ inPath : String) -> String {
    return fontLibraryPathForPath (inPath)
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
