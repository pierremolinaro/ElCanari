//
//  delegate-NSOpenPanel.swift
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

  func addBoardModel () {
  //--- Build list of current board model names
    var boardModelNames = [String] ()
    for boardModel in rootObject.boardModels_property.propval {
      let name : String = boardModel.name
      boardModelNames.append (name)
    }
  //--- Dialog
    if let window = self.windowForSheet {
      let openPanel = NSOpenPanel ()
      openPanel.canChooseFiles = true
      openPanel.canChooseDirectories = false
      openPanel.allowsMultipleSelection = false
      openPanel.allowedFileTypes = ["ElCanariBoardArchive", "kicad_pcb"]
    //--- MANDATORY! This object is set to NSOpenPanel delegate that DOES NOT retain it
      gPanel = OpenPanelDelegateForFilteringBoardModels (boardModelNames)
      openPanel.delegate = gPanel
      openPanel.beginSheetModal (for: window, completionHandler: { (returnCode : SW34_ApplicationModalResponse) in
        gPanel = nil
        if returnCode == sw34_FileHandlingPanelOKButton {
          if let url = openPanel.url, url.isFileURL {
            let filePath = url.path
            if filePath.pathExtension == "ElCanariBoardArchive" {
              self.loadBoardModel_ELCanariArchive (filePath : filePath, windowForSheet: window)
            }else if filePath.pathExtension == "kicad_pcb" {
              self.loadBoardModel_kicad (filePath : filePath, windowForSheet: window)
            }
          }else{
            NSLog ("Not a file URL!")
          }
        }
      })
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

fileprivate var gPanel : OpenPanelDelegateForFilteringBoardModels?

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

fileprivate class OpenPanelDelegateForFilteringBoardModels : EBSimpleClass, NSOpenSavePanelDelegate {

  //····················································································································
  //   PROPERTIES
  //····················································································································

  let mBoardModelNames : [String]

  //····················································································································
  //   INIT
  //····················································································································

  init (_ boardModelNames : [String]) {
    mBoardModelNames = boardModelNames
    super.init ()
  }

  //····················································································································
  //   DELEGATE METHOD
  //····················································································································

  func panel (_ sender: Any, shouldEnable url: URL) -> Bool {
    let fileName = url.path.lastPathComponent.deletingPathExtension
    // NSLog ("\(fileName)")
    return mBoardModelNames.index (of:fileName) == nil
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————