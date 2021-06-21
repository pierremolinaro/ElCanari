//
//  document-AutoLayoutSymbolDocument-sub-class.swift
//  ElCanari-Debug-temporary
//
//  Created by Pierre Molinaro on 18/06/2021.
//
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------

let SYMBOL_GRID_IN_COCOA_UNIT : CGFloat = milsToCocoaUnit (25.0)
let SYMBOL_GRID_IN_CANARI_UNIT : Int    = milsToCanariUnit (fromInt: 25)

//----------------------------------------------------------------------------------------------------------------------

let PMSymbolVersion = "PMSymbolVersion"
let PMSymbolComment = "PMSymbolComment"

//----------------------------------------------------------------------------------------------------------------------

let symbolPasteboardType = NSPasteboard.PasteboardType (rawValue: "name.pcmolinaro.pasteboard.symbol")

//----------------------------------------------------------------------------------------------------------------------

@objc(AutoLayoutSymbolDocumentSubClass) final class AutoLayoutSymbolDocumentSubClass : AutoLayoutSymbolDocument {

  //····················································································································

  override func metadataStatusForSaving () -> UInt8 {
    return UInt8 (self.metadataStatus!.rawValue)
  }

  //····················································································································

  override func saveMetadataDictionary (version : Int, metadataDictionary : inout [String : Any]) {
    metadataDictionary [PMSymbolVersion] = version
    metadataDictionary [PMSymbolComment] = self.rootObject.comments
  }

  //····················································································································

  override func readVersionFromMetadataDictionary (_ metadataDictionary : [String : Any]) -> Int {
    var result = 0
    if let versionNumber = metadataDictionary [PMSymbolVersion] as? Int {
      result = versionNumber
    }
    return result
  }

  //····················································································································

  override func windowDefaultSize () -> NSSize {
    return NSSize (width: 800, height: 600)
  }

  //····················································································································
  //    windowControllerDidLoadNib: customization of interface
  //····················································································································

  override func windowControllerDidLoadNib (_ aController: NSWindowController) {
    super.windowControllerDidLoadNib (aController)
  //--- Update display
    if let view = self.mSymbolGraphicView?.mGraphicView {
      DispatchQueue.main.async { view.scrollToVisibleObjectsOrToZero () }
    }
  }

  //····················································································································
  //    Drag and drop destination
  //····················································································································

  override func draggingEntered (_ sender: NSDraggingInfo, _ destinationScrollView : NSScrollView) -> NSDragOperation {
    return .copy
  }

  //····················································································································

  override func prepareForDragOperation (_ sender: NSDraggingInfo, _ destinationScrollView : NSScrollView) -> Bool {
    return true
  }

  //····················································································································

  override func performDragOperation (_ sender: NSDraggingInfo, _ destinationScrollView : NSScrollView) -> Bool {
    var ok = false
    if let documentView = destinationScrollView.documentView {
      let pointInWindow = sender.draggingLocation
      let pointInDestinationView = documentView.convert (pointInWindow, from:nil).aligned (onGrid: SYMBOL_GRID_IN_COCOA_UNIT)
      let pasteboard = sender.draggingPasteboard
      if pasteboard.availableType (from: [symbolPasteboardType]) != nil {
        if let dataDictionary = pasteboard.propertyList (forType: symbolPasteboardType) as? NSDictionary,
           let dictionaryArray = dataDictionary [OBJECT_DICTIONARY_KEY] as? [NSDictionary],
           let X = dataDictionary [X_KEY] as? Int,
           let Y = dataDictionary [Y_KEY] as? Int {
          let userSet = ObjcObjectSet ()
          for dictionary in dictionaryArray {
            if let newObject = makeManagedObjectFromDictionary (self.ebUndoManager, dictionary) as? SymbolObject {
              newObject.translate (
                xBy: cocoaToCanariUnit (pointInDestinationView.x) - X,
                yBy: cocoaToCanariUnit (pointInDestinationView.y) - Y,
                userSet: userSet
              )
              self.rootObject.symbolObjects_property.add (newObject)
              self.mSymbolObjectsController.select (object: newObject)
            }
          }
          ok = true
        }
      }
    }
    return ok
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
