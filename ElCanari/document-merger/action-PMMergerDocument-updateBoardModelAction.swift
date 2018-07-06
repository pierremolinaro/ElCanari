//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

extension PMMergerDocument {
  func updateBoardModelAction (_ sender : NSObject) {
//--- START OF USER ZONE 2
    let selectedModels : EBSelection < [BoardModel] > = mBoardModelController.selectedArray_property.prop
    switch selectedModels {
    case .single (let models) :
      if models.count == 1 {
        let updatedBoardModel = models [0]
        let boardModelName : String = updatedBoardModel.name
      //--- Dialog
        if let window = self.windowForSheet {
          let openPanel = NSOpenPanel ()
          openPanel.canChooseFiles = true
          openPanel.canChooseDirectories = false
          openPanel.allowsMultipleSelection = false
          openPanel.allowedFileTypes = ["ElCanariBoardArchive"]
          openPanel.delegate = OpenPanelDelegateForUpdatingBoardModels (boardModelName)
          openPanel.beginSheetModal (for: window, completionHandler: { (returnCode : Int) in
            releaseOpenPanelDelegateForUdatingBoardModel ()
            if returnCode == NSFileHandlingPanelOKButton {
              if let url = openPanel.url, url.isFileURL {
                let filePath = url.path
              //--- Load file, as plist
                let optionalFileData : Data? = FileManager ().contents (atPath: filePath)
                if let fileData = optionalFileData {
                  do {
                    let optionalBoardArchiveDictionary = try PropertyListSerialization.propertyList (
                      from: fileData,
                      options: [],
                      format: nil
                    )
                    if let boardArchiveDictionary = optionalBoardArchiveDictionary as? NSDictionary {
                      let s = filePath.lastPathComponent.deletingPathExtension
                      let possibleBoardModel = self.parseBoardModel (fromDictionary: boardArchiveDictionary, named : s)
                      if let newBoardModel = possibleBoardModel {
                        updatedBoardModel.artworkName = newBoardModel.artworkName
                        updatedBoardModel.modelWidth = newBoardModel.modelWidth
                        updatedBoardModel.modelWidthUnit = newBoardModel.modelWidthUnit
                        updatedBoardModel.modelHeight = newBoardModel.modelHeight
                        updatedBoardModel.modelHeightUnit = newBoardModel.modelHeightUnit
                        updatedBoardModel.modelLimitWidth = newBoardModel.modelLimitWidth
                        updatedBoardModel.modelLimitWidthUnit = newBoardModel.modelLimitWidthUnit
                        updatedBoardModel.zoom = newBoardModel.zoom

                        let moc = self.managedObjectContext ()

                        var newArray = newBoardModel.frontLegendTexts_property.propval
                        var oldArray = updatedBoardModel.frontLegendTexts_property.propval
                        newBoardModel.frontLegendTexts_property.setProp ([])
                        moc.removeManagedObjects (oldArray)
                        updatedBoardModel.frontLegendTexts_property.setProp (newArray)

                        newArray = newBoardModel.frontLayoutTexts_property.propval
                        oldArray = updatedBoardModel.frontLayoutTexts_property.propval
                        newBoardModel.frontLayoutTexts_property.setProp ([])
                        moc.removeManagedObjects (oldArray)
                        updatedBoardModel.frontLayoutTexts_property.setProp (newArray)

                        newArray = newBoardModel.backLegendTexts_property.propval
                        oldArray = updatedBoardModel.backLegendTexts_property.propval
                        newBoardModel.backLegendTexts_property.setProp ([])
                        moc.removeManagedObjects (oldArray)
                        updatedBoardModel.backLegendTexts_property.setProp (newArray)

                        newArray = newBoardModel.backLayoutTexts_property.propval
                        oldArray = updatedBoardModel.backLayoutTexts_property.propval
                        newBoardModel.backLayoutTexts_property.setProp ([])
                        moc.removeManagedObjects (oldArray)
                        updatedBoardModel.backLayoutTexts_property.setProp (newArray)

                        let newViaArray = newBoardModel.vias_property.propval
                        let oldViaArray = updatedBoardModel.vias_property.propval
                        newBoardModel.vias_property.setProp ([])
                        moc.removeManagedObjects (oldViaArray)
                        updatedBoardModel.vias_property.setProp (newViaArray)

                        let newPadArray = newBoardModel.pads_property.propval
                        let oldPadArray = updatedBoardModel.pads_property.propval
                        newBoardModel.pads_property.setProp ([])
                        moc.removeManagedObjects (oldPadArray)
                        updatedBoardModel.pads_property.setProp (newPadArray)

                        newArray = newBoardModel.backComponentNames_property.propval
                        oldArray = updatedBoardModel.backComponentNames_property.propval
                        newBoardModel.backComponentNames_property.setProp ([])
                        moc.removeManagedObjects (oldArray)
                        updatedBoardModel.backComponentNames_property.setProp (newArray)

                        newArray = newBoardModel.frontComponentNames_property.propval
                        oldArray = updatedBoardModel.frontComponentNames_property.propval
                        newBoardModel.frontComponentNames_property.setProp ([])
                        moc.removeManagedObjects (oldArray)
                        updatedBoardModel.frontComponentNames_property.setProp (newArray)

                        newArray = newBoardModel.frontComponentValues_property.propval
                        oldArray = updatedBoardModel.frontComponentValues_property.propval
                        newBoardModel.frontComponentValues_property.setProp ([])
                        moc.removeManagedObjects (oldArray)
                        updatedBoardModel.frontComponentValues_property.setProp (newArray)

                        newArray = newBoardModel.backComponentValues_property.propval
                        oldArray = updatedBoardModel.backComponentValues_property.propval
                        newBoardModel.backComponentValues_property.setProp ([])
                        moc.removeManagedObjects (oldArray)
                        updatedBoardModel.backComponentValues_property.setProp (newArray)

                        newArray = newBoardModel.backTracks_property.propval
                        oldArray = updatedBoardModel.backTracks_property.propval
                        newBoardModel.backTracks_property.setProp ([])
                        moc.removeManagedObjects (oldArray)
                        updatedBoardModel.backTracks_property.setProp (newArray)

                        newArray = newBoardModel.frontTracks_property.propval
                        oldArray = updatedBoardModel.frontTracks_property.propval
                        newBoardModel.frontTracks_property.setProp ([])
                        moc.removeManagedObjects (oldArray)
                        updatedBoardModel.frontTracks_property.setProp (newArray)

                        newArray = newBoardModel.frontPackages_property.propval
                        oldArray = updatedBoardModel.frontPackages_property.propval
                        newBoardModel.frontPackages_property.setProp ([])
                        moc.removeManagedObjects (oldArray)
                        updatedBoardModel.frontPackages_property.setProp (newArray)

                        newArray = newBoardModel.backPackages_property.propval
                        oldArray = updatedBoardModel.backPackages_property.propval
                        newBoardModel.backPackages_property.setProp ([])
                        moc.removeManagedObjects (oldArray)
                        updatedBoardModel.backPackages_property.setProp (newArray)

                        moc.removeManagedObject (newBoardModel)
                      }
                    }else{
                      NSLog ("Invalid dictionary!")
                    }
                  }catch let error {
                    window.presentError (error)
                  }
                }else{ // Cannot read file
                  let alert = NSAlert ()
                  alert.messageText = "Cannot read file"
                  alert.addButton (withTitle: "Ok")
                  alert.informativeText = "The file \(filePath) cannot be read."
                  alert.beginSheetModal (for: window, completionHandler: {(NSModalResponse) in})
                }
              }else{
                NSLog ("Not a file URL!")
              }
            }
          })
        }
      }
    default :
      break
    }
//--- END OF USER ZONE 2
  }
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*
