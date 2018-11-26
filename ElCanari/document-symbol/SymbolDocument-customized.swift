//
//  ArtworkDocument+extension.swift
//  ElCanari
//
//  Created by Pierre Molinaro on 06/11/2015.
//
//
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

let PMSymbolVersion = "PMSymbolVersion"
let PMSymbolComment = "PMSymbolComment"

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

fileprivate let dragAddSegmentUTI   = NSPasteboard.PasteboardType (rawValue: "drag.and.drop.add.segment")
fileprivate let dragAddBezierUTI    = NSPasteboard.PasteboardType (rawValue: "drag.and.drop.add.bezier")
fileprivate let dragAddOvalUTI      = NSPasteboard.PasteboardType (rawValue: "drag.and.drop.add.oval")
fileprivate let dragAddSolidRectUTI = NSPasteboard.PasteboardType (rawValue: "drag.and.drop.add.solid.rect")
fileprivate let dragAddTextUTI      = NSPasteboard.PasteboardType (rawValue: "drag.and.drop.add.text")
fileprivate let dragAddPinUTI       = NSPasteboard.PasteboardType (rawValue: "drag.and.drop.add.pin")

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

@objc(CustomizedSymbolDocument) class CustomizedSymbolDocument : SymbolDocument {

  //····················································································································

  override func saveMetadataDictionary (version : Int, metadataDictionary : inout NSMutableDictionary) {
     metadataDictionary.setObject (NSNumber (value:version), forKey:PMSymbolVersion as NSCopying)
     metadataDictionary.setObject (rootObject.comments, forKey:PMSymbolComment as NSCopying)
  }

  //····················································································································

  override func readVersionFromMetadataDictionary (metadataDictionary : NSDictionary) -> Int {
    var result = 0
    if let versionNumber = metadataDictionary.object (forKey: PMSymbolVersion) as? NSNumber {
      result = versionNumber.intValue
    }
    return result
  }

  //····················································································································
  //    windowControllerDidLoadNib: customization of interface
  //····················································································································

  override func windowControllerDidLoadNib (_ aController: NSWindowController) {
    super.windowControllerDidLoadNib (aController)
  //--- Drag source buttons and destination scroll view
    self.mAddSegmentButton?.set (dragTypeUTI: dragAddSegmentUTI)
    self.mAddBezierButton?.set (dragTypeUTI: dragAddBezierUTI)
    self.mAddOvalButton?.set (dragTypeUTI: dragAddOvalUTI)
    self.mAddSolidRectButton?.set (dragTypeUTI: dragAddSolidRectUTI)
    self.mAddTextButton?.set (dragTypeUTI: dragAddTextUTI)
    self.mAddPinButton?.set (dragTypeUTI: dragAddPinUTI)
    let allTypes = [dragAddSegmentUTI, dragAddBezierUTI, dragAddOvalUTI, dragAddSolidRectUTI, dragAddTextUTI, dragAddPinUTI]
    self.mComposedSymbolScrollView?.register (document: self, draggedTypes: allTypes)
  }

  //····················································································································
  //    Drag and drop destination
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
      if pasteboard.availableType (from: [dragAddSegmentUTI]) != nil {
        self.addSegment (at: pointInDestinationView)
        ok = true
      }else if pasteboard.availableType (from: [dragAddBezierUTI]) != nil {
        self.addBezier (at: pointInDestinationView)
        ok = true
      }else if pasteboard.availableType (from: [dragAddOvalUTI]) != nil {
        self.addOval (at: pointInDestinationView)
        ok = true
      }else if pasteboard.availableType (from: [dragAddSolidRectUTI]) != nil {
        self.addSolidRect (at: pointInDestinationView)
        ok = true
      }else if pasteboard.availableType (from: [dragAddTextUTI]) != nil {
        self.addText (at: pointInDestinationView)
        ok = true
      }else if pasteboard.availableType (from: [dragAddTextUTI]) != nil {
        self.addText (at: pointInDestinationView)
        ok = true
      }else if pasteboard.availableType (from: [dragAddPinUTI]) != nil {
        self.addPin (at: pointInDestinationView)
        ok = true
      }
    }
    return ok
  }

  //····················································································································

  private func addSegment (at inCocoaPoint : NSPoint) {
    let newObject = SymbolSegment (managedObjectContext: self.managedObjectContext, file: #file, #line)
    newObject.x1 = cocoaToCanariUnit (inCocoaPoint.x)
    newObject.y1 = cocoaToCanariUnit (inCocoaPoint.y)
    newObject.x2 = newObject.x1 + 6_868_00
    newObject.y2 = newObject.y1 + 6_868_00
    self.rootObject.symbolObjects_property.add (newObject)
    self.mSymbolObjectsController.select (object: newObject)
  }

  //····················································································································

  private func addBezier (at inCocoaPoint : NSPoint) {
    let newObject = SymbolBezierCurve (managedObjectContext: self.managedObjectContext, file: #file, #line)
    newObject.x1 = cocoaToCanariUnit (inCocoaPoint.x)
    newObject.y1 = cocoaToCanariUnit (inCocoaPoint.y)
    newObject.x2 = newObject.x1
    newObject.y2 = newObject.y1 + 6_868_00
    newObject.cpx1 = newObject.x1 + 6_868_00
    newObject.cpy1 = newObject.y1
    newObject.cpx2 = newObject.x1 + 6_868_00
    newObject.cpy2 = newObject.y1 + 6_868_00
    self.rootObject.symbolObjects_property.add (newObject)
    self.mSymbolObjectsController.select (object: newObject)
  }

  //····················································································································

  private func addOval (at inCocoaPoint : NSPoint) {
    let newObject = SymbolOval (managedObjectContext: self.managedObjectContext, file: #file, #line)
    newObject.x = cocoaToCanariUnit (inCocoaPoint.x)
    newObject.y = cocoaToCanariUnit (inCocoaPoint.y)
    newObject.width = 6_868_00
    newObject.height = 6_868_00
    self.rootObject.symbolObjects_property.add (newObject)
    self.mSymbolObjectsController.select (object: newObject)
  }

  //····················································································································

  private func addSolidRect (at inCocoaPoint : NSPoint) {
    let newObject = SymbolSolidRect (managedObjectContext: self.managedObjectContext, file: #file, #line)
    newObject.x = cocoaToCanariUnit (inCocoaPoint.x)
    newObject.y = cocoaToCanariUnit (inCocoaPoint.y)
    newObject.width = 6_868_00
    newObject.height = 6_868_00
    self.rootObject.symbolObjects_property.add (newObject)
    self.mSymbolObjectsController.select (object: newObject)
  }

  //····················································································································

  private func addText (at inCocoaPoint : NSPoint) {
    let newObject = SymbolText (managedObjectContext: self.managedObjectContext, file: #file, #line)
    newObject.x = cocoaToCanariUnit (inCocoaPoint.x)
    newObject.y = cocoaToCanariUnit (inCocoaPoint.y)
    self.rootObject.symbolObjects_property.add (newObject)
    self.mSymbolObjectsController.select (object: newObject)
  }

  //····················································································································

  private func addPin (at inCocoaPoint : NSPoint) {
    let newObject = SymbolPin (managedObjectContext: self.managedObjectContext, file: #file, #line)
    newObject.xPin = cocoaToCanariUnit (inCocoaPoint.x)
    newObject.yPin = cocoaToCanariUnit (inCocoaPoint.y)
    newObject.xLabel = newObject.xPin
    newObject.yLabel = newObject.yPin + 2_286_00
    newObject.xNumber = newObject.xPin
    newObject.yNumber = newObject.yPin - 2_286_00
    self.rootObject.symbolObjects_property.add (newObject)
    self.mSymbolObjectsController.select (object: newObject)
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
