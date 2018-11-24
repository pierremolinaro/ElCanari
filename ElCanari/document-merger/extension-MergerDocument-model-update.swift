//
//  delegate-NSOpenPanel-update-model.swift
//  ElCanari
//
//  Created by Pierre Molinaro on 30/06/2018.
//
//
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

extension MergerDocument {

  //····················································································································

  func updateBoardModel () {
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
          openPanel.allowedFileTypes = [EL_CANARI_MERGER_ARCHIVE, KICAD_PCB]
        // MANDATORY! This object is set to NSOpenPanel delegate that DOES NOT retain it
          gPanel = OpenPanelDelegateForUpdatingBoardModels (boardModelName) // MANDATORY! This object is set to NSOpenPanel delegate that DOES NOT retain it
          openPanel.delegate = gPanel
          openPanel.beginSheetModal (for: window, completionHandler: { (returnCode : NSApplication.ModalResponse) in
            gPanel = nil
            if returnCode == NSApplication.ModalResponse (NSFileHandlingPanelOKButton) {
              if let url = openPanel.url, url.isFileURL {
                let filePath = url.path
              //--- Load file, as plist
                let optionalFileData : Data? = FileManager ().contents (atPath: filePath)
                if let fileData = optionalFileData {
                  let s = filePath.lastPathComponent.deletingPathExtension
                  var possibleBoardModel : BoardModel? = nil
                  if filePath.pathExtension == EL_CANARI_MERGER_ARCHIVE {
                    possibleBoardModel = self.parseBoardModel_ELCanariArchive (fromData: fileData, named: s)
                  }else if filePath.pathExtension == KICAD_PCB {
                    possibleBoardModel = self.parseBoardModel_kicad (fromData: fileData, named: s)
                  }
//                  if let newTemporaryBoardModel = possibleBoardModel {
//                    let moc = self.managedObjectContext ()
//                    moc.removeManagedObjects (newTemporaryBoardModel.frontLegendTexts_property.propval)
//                    newTemporaryBoardModel.frontLegendTexts_property.setProp ([])
//                    moc.removeManagedObject (newTemporaryBoardModel)
//                    possibleBoardModel = nil
//                  }
                  if let newTemporaryBoardModel = possibleBoardModel {
                    updatedBoardModel.artworkName = newTemporaryBoardModel.artworkName
                    updatedBoardModel.modelWidth = newTemporaryBoardModel.modelWidth
                    updatedBoardModel.modelWidthUnit = newTemporaryBoardModel.modelWidthUnit
                    updatedBoardModel.modelHeight = newTemporaryBoardModel.modelHeight
                    updatedBoardModel.modelHeightUnit = newTemporaryBoardModel.modelHeightUnit
                    updatedBoardModel.modelLimitWidth = newTemporaryBoardModel.modelLimitWidth
                    updatedBoardModel.modelLimitWidthUnit = newTemporaryBoardModel.modelLimitWidthUnit
                    updatedBoardModel.zoom = newTemporaryBoardModel.zoom

                    let moc = self.managedObjectContext ()

                    var newArray = newTemporaryBoardModel.frontLegendTexts_property.propval
                    var oldArray = updatedBoardModel.frontLegendTexts_property.propval
                    newTemporaryBoardModel.frontLegendTexts_property.setProp ([])
                    moc.removeManagedObjects (oldArray)
                    updatedBoardModel.frontLegendTexts_property.setProp (newArray)

                    newArray = newTemporaryBoardModel.frontLayoutTexts_property.propval
                    oldArray = updatedBoardModel.frontLayoutTexts_property.propval
                    newTemporaryBoardModel.frontLayoutTexts_property.setProp ([])
                    moc.removeManagedObjects (oldArray)
                    updatedBoardModel.frontLayoutTexts_property.setProp (newArray)

                    newArray = newTemporaryBoardModel.backLegendTexts_property.propval
                    oldArray = updatedBoardModel.backLegendTexts_property.propval
                    newTemporaryBoardModel.backLegendTexts_property.setProp ([])
                    moc.removeManagedObjects (oldArray)
                    updatedBoardModel.backLegendTexts_property.setProp (newArray)

                    newArray = newTemporaryBoardModel.backLayoutTexts_property.propval
                    oldArray = updatedBoardModel.backLayoutTexts_property.propval
                    newTemporaryBoardModel.backLayoutTexts_property.setProp ([])
                    moc.removeManagedObjects (oldArray)
                    updatedBoardModel.backLayoutTexts_property.setProp (newArray)

                    let newViaArray = newTemporaryBoardModel.vias_property.propval
                    let oldViaArray = updatedBoardModel.vias_property.propval
                    newTemporaryBoardModel.vias_property.setProp ([])
                    moc.removeManagedObjects (oldViaArray)
                    updatedBoardModel.vias_property.setProp (newViaArray)

                    let newDrillArray = newTemporaryBoardModel.drills_property.propval
                    let oldDrillArray = updatedBoardModel.drills_property.propval
                    newTemporaryBoardModel.drills_property.setProp ([])
                    moc.removeManagedObjects (oldDrillArray)
                    updatedBoardModel.drills_property.setProp (newDrillArray)

                    let newBackPadArray = newTemporaryBoardModel.backPads_property.propval
                    let oldBackPadArray = updatedBoardModel.backPads_property.propval
                    newTemporaryBoardModel.backPads_property.setProp ([])
                    moc.removeManagedObjects (oldBackPadArray)
                    updatedBoardModel.backPads_property.setProp (newBackPadArray)

                    let newFrontPadArray = newTemporaryBoardModel.frontPads_property.propval
                    let oldFrontPadArray = updatedBoardModel.frontPads_property.propval
                    newTemporaryBoardModel.frontPads_property.setProp ([])
                    moc.removeManagedObjects (oldFrontPadArray)
                    updatedBoardModel.frontPads_property.setProp (newFrontPadArray)

                    newArray = newTemporaryBoardModel.backComponentNames_property.propval
                    oldArray = updatedBoardModel.backComponentNames_property.propval
                    newTemporaryBoardModel.backComponentNames_property.setProp ([])
                    moc.removeManagedObjects (oldArray)
                    updatedBoardModel.backComponentNames_property.setProp (newArray)

                    newArray = newTemporaryBoardModel.frontComponentNames_property.propval
                    oldArray = updatedBoardModel.frontComponentNames_property.propval
                    newTemporaryBoardModel.frontComponentNames_property.setProp ([])
                    moc.removeManagedObjects (oldArray)
                    updatedBoardModel.frontComponentNames_property.setProp (newArray)

                    newArray = newTemporaryBoardModel.frontComponentValues_property.propval
                    oldArray = updatedBoardModel.frontComponentValues_property.propval
                    newTemporaryBoardModel.frontComponentValues_property.setProp ([])
                    moc.removeManagedObjects (oldArray)
                    updatedBoardModel.frontComponentValues_property.setProp (newArray)

                    newArray = newTemporaryBoardModel.backComponentValues_property.propval
                    oldArray = updatedBoardModel.backComponentValues_property.propval
                    newTemporaryBoardModel.backComponentValues_property.setProp ([])
                    moc.removeManagedObjects (oldArray)
                    updatedBoardModel.backComponentValues_property.setProp (newArray)

                    newArray = newTemporaryBoardModel.backTracks_property.propval
                    oldArray = updatedBoardModel.backTracks_property.propval
                    newTemporaryBoardModel.backTracks_property.setProp ([])
                    moc.removeManagedObjects (oldArray)
                    updatedBoardModel.backTracks_property.setProp (newArray)

                    newArray = newTemporaryBoardModel.frontTracks_property.propval
                    oldArray = updatedBoardModel.frontTracks_property.propval
                    newTemporaryBoardModel.frontTracks_property.setProp ([])
                    moc.removeManagedObjects (oldArray)
                    updatedBoardModel.frontTracks_property.setProp (newArray)

                    newArray = newTemporaryBoardModel.frontPackages_property.propval
                    oldArray = updatedBoardModel.frontPackages_property.propval
                    newTemporaryBoardModel.frontPackages_property.setProp ([])
                    moc.removeManagedObjects (oldArray)
                    updatedBoardModel.frontPackages_property.setProp (newArray)

                    newArray = newTemporaryBoardModel.backPackages_property.propval
                    oldArray = updatedBoardModel.backPackages_property.propval
                    newTemporaryBoardModel.backPackages_property.setProp ([])
                    moc.removeManagedObjects (oldArray)
                    updatedBoardModel.backPackages_property.setProp (newArray)

                    newArray = newTemporaryBoardModel.backLegendLines_property.propval
                    oldArray = updatedBoardModel.backLegendLines_property.propval
                    newTemporaryBoardModel.backLegendLines_property.setProp ([])
                    moc.removeManagedObjects (oldArray)
                    updatedBoardModel.backLegendLines_property.setProp (newArray)

                    newArray = newTemporaryBoardModel.frontLegendLines_property.propval
                    oldArray = updatedBoardModel.frontLegendLines_property.propval
                    newTemporaryBoardModel.frontLegendLines_property.setProp ([])
                    moc.removeManagedObjects (oldArray)
                    updatedBoardModel.frontLegendLines_property.setProp (newArray)

                    moc.removeManagedObject (newTemporaryBoardModel)
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
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

fileprivate var gPanel : OpenPanelDelegateForUpdatingBoardModels?

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

fileprivate class OpenPanelDelegateForUpdatingBoardModels : EBSimpleClass, NSOpenSavePanelDelegate {

  //····················································································································
  //   PROPERTIES
  //····················································································································

  let mBoardModelName : String

  //····················································································································
  //   INIT
  //····················································································································

  init (_ boardModelName : String) {
    mBoardModelName = boardModelName
    super.init ()
  }

  //····················································································································
  //   DELEGATE METHOD
  //····················································································································

  func panel (_ sender: Any, shouldEnable url: URL) -> Bool {
    let path = url.path
    let fm = FileManager ()
    var isDirectory : ObjCBool = false
    _ = fm.fileExists(atPath: path, isDirectory: &isDirectory)
    return isDirectory.boolValue || (mBoardModelName == path.lastPathComponent.deletingPathExtension)
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
