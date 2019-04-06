//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

@objc(CustomizedProjectDocument) class CustomizedProjectDocument : ProjectDocument {

  //····················································································································

//  override func metadataStatusForSaving () -> UInt8 {
//    return UInt8 (self.mMetadataStatus!.rawValue)
//  }

  //····················································································································

//  override func saveMetadataDictionary (version : Int, metadataDictionary : inout [String : Any]) {
//    metadataDictionary [PMPackageVersion] = version
//    metadataDictionary [PMPackageComment] = self.rootObject.comments
//  }

  //····················································································································

//  override func readVersionFromMetadataDictionary (_ metadataDictionary : [String : Any]) -> Int {
//    var result = 0
//    if let versionNumber = metadataDictionary [PMPackageVersion] as? Int {
//      result = versionNumber
//    }
//    return result
//  }

  //····················································································································
  //    buildUserInterface: customization of interface
  //····················································································································

//  fileprivate var mPackageColorObserver = EBOutletEvent ()
//  fileprivate var mPadColorObserver = EBOutletEvent ()
//  internal var mPadNumberingObserver = EBModelEvent () // Used in PackageDocument-pad-numbering.swift

  //····················································································································

  override func windowControllerDidLoadNib (_ aController: NSWindowController) {
    super.windowControllerDidLoadNib (aController)
//  //--- Handle pad number event
//    self.addPadNumberingObservers ()
//  //--- Register document for renumbering pads
//    self.mPadRenumberingPullDownButton?.register (document: self)
//  //--- Register document for slave pad assignment
//    self.mSlavePadAssignmentPopUpButton?.register (document: self)
//  //--- Package color observer
//    self.mPackageColorObserver.mEventCallBack = { [weak self] in self?.updateDragSourceButtons () }
//    g_Preferences?.packageColor_property.addEBObserver (self.mPackageColorObserver)
//  //--- Pad color observer
//    self.mPadColorObserver.mEventCallBack = { [weak self] in self?.updateDragPadSourceButtons () }
//    g_Preferences?.frontSidePadColor_property.addEBObserver (self.mPadColorObserver)
  //--- Set pages segmented control
    let pages = [
      self.mComponentsPageView,
      self.mLibraryPageView,
      self.mSchematicsPageView,
      self.mNetClassesPageView ,
      self.mNetListPageView,
      self.mBoardPageView,
      self.mProductPageView
    ]
    self.mPageSegmentedControl?.register (masterView: self.mMasterView, pages)
//  //--- Set inspector segmented control
//    let inspectors = [
//      self.mSelectedObjectsInspectorView,
//      self.mGridZoomInspectorView,
//      self.mDisplayInspectorView,
//      self.mAutoNumberingInspectorView,
//      self.mIssuesInspectorView
//    ]
//    self.mInspectorSegmentedControl?.register (masterView: self.mBaseInspectorView, inspectors)
//  //--- Drag source buttons and destination scroll view
//    self.mAddSegmentButton?.register (
//      draggedType: packagePasteboardType,
//      entityName: "PackageSegment",
//      scaleProvider: self.mComposedPackageView
//    )
//    self.mAddBezierButton?.register (
//      draggedType: packagePasteboardType,
//      entityName: "PackageBezier",
//      scaleProvider: self.mComposedPackageView
//    )
//    self.mAddOvalButton?.register (
//      draggedType: packagePasteboardType,
//      entityName: "PackageOval",
//      scaleProvider: self.mComposedPackageView
//    )
//    self.mAddArcButton?.register (
//      draggedType: packagePasteboardType,
//      entityName: "PackageArc",
//      scaleProvider: self.mComposedPackageView
//    )
//    self.mAddPadButton?.register (
//      draggedType: packagePasteboardType,
//      entityName: "PackagePad",
//      scaleProvider: self.mComposedPackageView
//    )
//    self.mAddSlavePadButton?.register (
//      draggedType: packagePasteboardType,
//      entityName: "PackageSlavePad",
//      scaleProvider: self.mComposedPackageView
//    )
//    self.mAddGuideButton?.register (
//      draggedType: packagePasteboardType,
//      entityName: "PackageGuide",
//      scaleProvider: self.mComposedPackageView
//    )
//    self.mAddGuideButton?.image = self.imageForAddGuideButton ()
//    self.mAddDimensionButton?.register (
//      draggedType: packagePasteboardType,
//      entityName: "PackageDimension",
//      scaleProvider: self.mComposedPackageView
//    )
//    self.mAddZoneButton?.register (
//      draggedType: packagePasteboardType,
//      entityName: "PackageZone",
//      scaleProvider: self.mComposedPackageView
//    )
// //--- Register scroll view
//    self.mComposedPackageScrollView?.register (document: self, draggedTypes: [packagePasteboardType])
//    self.mComposedPackageView?.register (pasteboardType: packagePasteboardType)
//    let r = NSRect (x: 0.0, y: 0.0, width: milsToCocoaUnit (10_000.0), height: milsToCocoaUnit (10_000.0))
//    self.mComposedPackageView?.set (minimumRectangle: r)
//  //--- Register inspector views
//    self.mPackageObjectsController.register (inspectorReceivingView: self.mSelectedObjectsInspectorView)
//    self.mPackageObjectsController.register (inspectorView: self.mSegmentInspectorView, forClass: "PackageSegment")
//    self.mPackageObjectsController.register (inspectorView: self.mBezierInspectorView, forClass: "PackageBezier")
//    self.mPackageObjectsController.register (inspectorView: self.mOvalInspectorView, forClass: "PackageOval")
//    self.mPackageObjectsController.register (inspectorView: self.mArcInspectorView, forClass: "PackageArc")
//    self.mPackageObjectsController.register (inspectorView: self.mPadInspectorView, forClass: "PackagePad")
//    self.mPackageObjectsController.register (inspectorView: self.mSlavePadInspectorView, forClass: "PackageSlavePad")
//    self.mPackageObjectsController.register (inspectorView: self.mGuideInspectorView, forClass: "PackageGuide")
//    self.mPackageObjectsController.register (inspectorView: self.mDimensionInspectorView, forClass: "PackageDimension")
//    self.mPackageObjectsController.register (inspectorView: self.mZoneInspectorView, forClass: "PackageZone")
//  //--- Set issue display view
//    self.mIssueTableView?.register (issueDisplayView: self.mComposedPackageView)
//    self.mIssueTableView?.register (hideIssueButton: self.mDeselectIssueButton)
//    self.mIssueTableView?.register (segmentedControl: self.mInspectorSegmentedControl, segment: 4)
//  //--- Update display
//    if let view = self.mComposedPackageView {
//      DispatchQueue.main.async { _ = view.scrollToVisible (view.objectsAndIssueBoundingBox) }
//    }
  }

  //····················································································································
  //   removeUserInterface
  //····················································································································

  override func removeUserInterface () {
    super.removeUserInterface ()
//    g_Preferences?.packageColor_property.removeEBObserver (self.mPackageColorObserver)
//    g_Preferences?.frontSidePadColor_property.removeEBObserver (self.mPadColorObserver)
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
    let ok = false
//    if let documentView = destinationScrollView.documentView {
//      let pointInWindow = sender.draggingLocation
//      let pointInDestinationView = documentView.convert (pointInWindow, from:nil).aligned (onGrid: SYMBOL_GRID_IN_COCOA_UNIT)
//      let pasteboard = sender.draggingPasteboard
//      if pasteboard.availableType (from: [packagePasteboardType]) != nil {
//        if let dataDictionary = pasteboard.propertyList (forType: packagePasteboardType) as? NSDictionary,
//           let dictionaryArray = dataDictionary ["OBJECTS"] as? [NSDictionary],
//           let X = dataDictionary ["X"] as? Int,
//           let Y = dataDictionary ["Y"] as? Int {
//          var objetsToSelect = [PackageObject] ()
//          for dictionary in dictionaryArray {
//            if let newObject = makeManagedObjectFromDictionary (self.ebUndoManager, dictionary) as? PackageObject {
//              newObject.operationAfterPasting ()
//              newObject.translate (
//                xBy: cocoaToCanariUnit (pointInDestinationView.x) - X,
//                yBy: cocoaToCanariUnit (pointInDestinationView.y) - Y
//              )
//              self.rootObject.packageObjects_property.add (newObject)
//              objetsToSelect.append (newObject)
//            }
//          }
//          self.mPackageObjectsController.setSelection (objetsToSelect)
//          ok = true
//        }
//      }
//    }
    return ok
  }

  //····················································································································

//  fileprivate func imageForAddGuideButton () ->  NSImage? {
//    let shape = EBShape ()
//    let r = NSRect (x: 0.0, y: 0.0, width: 40.0, height: 40.0)
//    let bp1 = NSBezierPath ()
//    bp1.move (to: NSPoint (x: 5.0, y: 5.0))
//    bp1.line (to: NSPoint (x: 35.0, y: 35.0))
//    bp1.lineWidth = 3.0
//    bp1.lineCapStyle = .round
//    shape.append (EBStrokeBezierPathShape ([bp1], NSColor.lightGray))
//    let bp2 = NSBezierPath ()
//    bp2.move (to: NSPoint (x: 5.0, y: 5.0))
//    bp2.line (to: NSPoint (x: 55.0, y: 55.0))
//    bp2.lineWidth = 1.5
//    bp2.lineCapStyle = .round
//    shape.append (EBStrokeBezierPathShape ([bp2], NSColor.yellow))
//    let imagePDFData = buildPDFimageData (frame: r, shape: shape)
//    return NSImage (data: imagePDFData)
//  }

  //····················································································································

//  private func updateDragSourceButtons () {
//    self.mAddBezierButton?.buildButtonImageFromDraggedObjectTypeName ()
//    self.mAddSegmentButton?.buildButtonImageFromDraggedObjectTypeName ()
//    self.mAddOvalButton?.buildButtonImageFromDraggedObjectTypeName ()
//    self.mAddArcButton?.buildButtonImageFromDraggedObjectTypeName ()
//    self.mAddZoneButton?.buildButtonImageFromDraggedObjectTypeName ()
//    self.mAddDimensionButton?.buildButtonImageFromDraggedObjectTypeName ()
//  }

  //····················································································································

//  private func updateDragPadSourceButtons () {
//    self.mAddPadButton?.image = self.imageForAddMasterPadButton ()
//    self.mAddSlavePadButton?.image = self.imageForAddSlavePadButton ()
//  }

  //····················································································································

//  fileprivate func imageForAddMasterPadButton () ->  NSImage? {
//    let r = NSRect (x: 0.0, y: 0.0, width: 40.0, height: 40.0)
//    let bp1 = NSBezierPath (rect: r.insetBy (dx: 12.0, dy: 8.0))
//    bp1.appendOval (in: r.insetBy (dx: 17.0, dy: 17.0))
//    bp1.windingRule = .evenOdd
//    let shape = EBFilledBezierPathShape ([bp1], g_Preferences!.frontSidePadColor)
//    let imagePDFData = buildPDFimageData (frame: r, shape: shape)
//    return NSImage (data: imagePDFData)
//  }

  //····················································································································

//  fileprivate func imageForAddSlavePadButton () ->  NSImage? {
//    let shape = EBShape ()
//  //---
//    let r = NSRect (x: 0.0, y: 0.0, width: 40.0, height: 40.0)
//    let bp1 = NSBezierPath (rect: r.insetBy (dx: 12.0, dy: 8.0))
//    bp1.appendOval (in: r.insetBy (dx: 17.0, dy: 17.0))
//    bp1.windingRule = .evenOdd
//    shape.append (EBFilledBezierPathShape ([bp1], g_Preferences!.frontSidePadColor))
// //---
//    let textAttributes : [NSAttributedString.Key : Any] = [
//      NSAttributedString.Key.font : NSFont.systemFont (ofSize: 28.0),
//      NSAttributedString.Key.foregroundColor : g_Preferences!.frontSidePadColor
//    ]
//    shape.append (EBTextShape ("(", NSPoint (x : 2.0, y: 17.0), textAttributes, .left, .center))
//    shape.append (EBTextShape (")", NSPoint (x :38.0, y: 17.0), textAttributes, .right, .center))
// //---
//    let imagePDFData = buildPDFimageData (frame: r, shape: shape)
//    return NSImage (data: imagePDFData)
//  }
//
//  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————