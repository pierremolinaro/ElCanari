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

fileprivate let symbolPasteboardType = NSPasteboard.PasteboardType (rawValue: "name.pcmolinaro.pierre.pasteboard.symbol")

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

@objc(CustomizedSymbolDocument) class CustomizedSymbolDocument : SymbolDocument {

  //····················································································································

  override func saveMetadataDictionary (version : Int, metadataDictionary : inout NSMutableDictionary) {
     metadataDictionary.setObject (NSNumber (value:version), forKey: PMSymbolVersion as NSCopying)
     metadataDictionary.setObject (rootObject.comments, forKey: PMSymbolComment as NSCopying)
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
  //--- Set pages segmented control
    let pages = [self.mSymbolPageView, self.mInfosPageView]
    self.mPageSegmentedControl?.register (masterView: self.mMasterView, pages)
  //--- Set inspector segmented control
    let inspectors = [self.mSymbolBaseInspectorView, self.mSymbolZoomFlipInspectorView, self.mSymbolIssueInspectorView]
    self.mInspectorSegmentedControl?.register (masterView: self.mSymbolRootInspectorView, inspectors)
  //--- Drag source buttons and destination scroll view
    self.mAddSegmentButton?.register (
      draggedType: symbolPasteboardType,
      entityName: "SymbolSegment",
      provideImageFromEntity: true,
      scaleProvider: self.mComposedSymbolView
    )

    self.mAddBezierButton?.register (
      draggedType: symbolPasteboardType,
      entityName: "SymbolBezierCurve",
      provideImageFromEntity: true,
      scaleProvider: self.mComposedSymbolView
    )

    self.mAddSolidOvalButton?.register (
      draggedType: symbolPasteboardType,
      entityName: "SymbolSolidOval",
      provideImageFromEntity: true,
      scaleProvider: self.mComposedSymbolView
    )

    self.mAddOvalButton?.register (
      draggedType: symbolPasteboardType,
      entityName: "SymbolOval",
      provideImageFromEntity: true,
      scaleProvider: self.mComposedSymbolView
    )

    self.mAddSolidRectButton?.register (
      draggedType: symbolPasteboardType,
      entityName: "SymbolSolidRect",
      provideImageFromEntity: true,
      scaleProvider: self.mComposedSymbolView
    )

    self.mAddTextButton?.register (
      draggedType: symbolPasteboardType,
      entityName: "SymbolText",
      provideImageFromEntity: false,
      scaleProvider: self.mComposedSymbolView
    )
    self.mAddTextButton?.image = self.imageForAddTextButton ()

    self.mAddPinButton?.register (
      draggedType: symbolPasteboardType,
      entityName: "SymbolPin",
      provideImageFromEntity: false,
      scaleProvider: self.mComposedSymbolView
    )
    self.mAddPinButton?.image = self.imageForAddPinButton ()

    self.mComposedSymbolScrollView?.register (document: self, draggedTypes: [symbolPasteboardType])
  //--- Register inspector views
    self.mSymbolObjectsController.register (inspectorView: self.mSymbolBaseInspectorView)
    self.mSymbolObjectsController.register (inspectorView: self.mPinInspectorView, forClass: "SymbolPin")
    self.mSymbolObjectsController.register (inspectorView: self.mTextInspectorView, forClass: "SymbolText")
  //--- Set issue display view
    self.mIssueTableView?.register (issueDisplayView: self.mComposedSymbolView)
    self.mIssueTableView?.register (hideIssueButton: self.mDeselectIssueButton)
    self.mIssueTableView?.register (segmentedControl: self.mInspectorSegmentedControl, segment: 2)
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
        if let dictionary = pasteboard.propertyList (forType: symbolPasteboardType) as? NSDictionary,
           let newObject = makeManagedObjectFromDictionary (self.ebUndoManager, dictionary) as? SymbolObject {
          self.ebUndoManager.disableUndoRegistration ()
          newObject.translate (xBy: pointInDestinationView.x, yBy: pointInDestinationView.y)
          self.ebUndoManager.enableUndoRegistration ()
          self.rootObject.symbolObjects_property.add (newObject)
          self.mSymbolObjectsController.select (object: newObject)
          ok = true
        }
      }
    }
    return ok
  }

  //····················································································································

  fileprivate func imageForAddTextButton () ->  NSImage? {
    let r = NSRect (x: 0.0, y: 0.0, width: 20.0, height: 20.0)
    let textAttributes : [NSAttributedString.Key : Any] = [
      NSAttributedString.Key.font : NSFont (name: "Cambria", size: 20.0)!,
      NSAttributedString.Key.foregroundColor : NSColor.brown
    ]
    let shape = EBTextShape ("T", CGPoint (x: r.midX, y: r.midY + 3.0), textAttributes, .center, .center)
    let imagePDFData = buildPDFimage (frame: r, shape: shape)
    return NSImage (data: imagePDFData)
  }

  //····················································································································

  fileprivate func imageForAddPinButton () ->  NSImage? {
    let r = NSRect (x: 0.0, y: 0.0, width: 20.0, height: 20.0)
    let circleDiameter : CGFloat = 8.0
    let circle = NSRect (
      x: r.maxX - circleDiameter - 2.0,
      y: r.midY - circleDiameter / 2.0,
      width: circleDiameter,
      height: circleDiameter
    )
    let shape = EBShape ()
    shape.append (EBFilledBezierPathShape ([NSBezierPath (ovalIn: circle)], g_Preferences?.symbolColor ?? NSColor.black))
    let textAttributes : [NSAttributedString.Key : Any] = [
      NSAttributedString.Key.font : NSFont.userFixedPitchFont (ofSize: 12.0)!,
      NSAttributedString.Key.foregroundColor : g_Preferences?.symbolColor ?? NSColor.black
    ]
    shape.append (EBTextShape ("#", CGPoint (x: r.minX + 2.0, y: r.midY + 3.0), textAttributes, .left, .center))
    let imagePDFData = buildPDFimage (frame: r, shape: shape)
    return NSImage (data: imagePDFData)
  }

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
