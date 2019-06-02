//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

fileprivate let kDragAndDropSymbolInSchematic = NSPasteboard.PasteboardType (rawValue: "name.pcmolinaro.drag.and.drop.board.schematic.symbol")
fileprivate let kDragAndDropCommentInSchematic = NSPasteboard.PasteboardType (rawValue: "name.pcmolinaro.drag.and.drop.board.schematic.comment")
fileprivate let kDragAndDropWireInSchematic = NSPasteboard.PasteboardType (rawValue: "name.pcmolinaro.drag.and.drop.board.schematic.wire")

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

@objc(CustomizedProjectDocument) class CustomizedProjectDocument : ProjectDocument {

  //····················································································································
  //    init
  //····················································································································

  override init () {
    super.init ()
    self.ebUndoManager.disableUndoRegistration ()
  //--- Add default net class and first sheet
    let netClass = NetClassInProject (self.ebUndoManager)
    self.rootObject.mNetClasses.append (netClass)
    let sheet = SheetInProject (self.ebUndoManager)
    self.rootObject.mSheets.append (sheet)
    self.rootObject.mSelectedSheet = sheet
  //--- Add board limits
    let boardLength = millimeterToCanariUnit (100.0)
    let bottomLeft = BorderPoint (self.ebUndoManager)
    bottomLeft.mX = 0
    bottomLeft.mY = 0
    let bottomRight = BorderPoint (self.ebUndoManager)
    bottomRight.mX = boardLength
    bottomRight.mY = 0
    let topRight = BorderPoint (self.ebUndoManager)
    topRight.mX = boardLength
    topRight.mY = boardLength
    let topLeft = BorderPoint (self.ebUndoManager)
    topLeft.mX = 0
    topLeft.mY = boardLength
    let bottom = BoardLimit (self.ebUndoManager)
    bottom.mP1 = bottomLeft
    bottom.mP2 = bottomRight
    let right = BoardLimit (self.ebUndoManager)
    right.mP1 = bottomRight
    right.mP2 = topRight
    let top = BoardLimit (self.ebUndoManager)
    top.mP1 = topRight
    top.mP2 = topLeft
    let left = BoardLimit (self.ebUndoManager)
    left.mP1 = topLeft
    left.mP2 = bottomLeft
    self.rootObject.mBorderPoints = [bottomLeft, bottomRight, topRight, topLeft]
    self.rootObject.mBoardLimits = [bottom, right, top, left]
  //---
    self.ebUndoManager.enableUndoRegistration ()
  }

  //····················································································································
  //  WIRE CREATED BY AN OPTION CLICK
  //····················································································································

  internal var mWireCreatedByOptionClick : WireInSchematic? = nil

  //····················································································································
  //  POP UP BUTTON CONTROLLERS FOR SELECTING NET CLASS
  //····················································································································

  private var mSelectedWireNetClassPopUpController = EBPopUpButtonControllerForNetClassFromSelectedWires ()
  private var mSelectedLabelNetClassPopUpController = EBPopUpButtonControllerForNetClassFromSelectedLabels ()

  //····················································································································
  //  Property needed for handling "symbol count" to insert in segmented control title
  //····················································································································

  fileprivate var mSymbolCountToInsertController : EBSimpleController? = nil
  private var mSheetController = ProjectSheetController ()
  internal var mPrintOperation : NSPrintOperation? = nil

  //····················································································································
  //  Properties needed for renaming a component
  //····················································································································

  internal var mComponentCurrentPrefix = ""
  internal var mComponentCurrentIndex = 0
  internal var mComponentNewPrefix = ""
  internal var mComponentNewIndex = 0
  internal weak var mSelectedComponentForRenaming : ComponentInProject? = nil

  //····················································································································
  //  Property for dragging symbol in schematics
  //····················································································································

  internal var mPossibleDraggedSymbol : ComponentSymbolInProject? = nil

  //····················································································································

  override func windowControllerDidLoadNib (_ aController: NSWindowController) {
    super.windowControllerDidLoadNib (aController)
  //--- Option click for creating wire
     self.mSchematicsView?.setOptionMouseCallbacks (
       start: { [weak self] (inUnalignedMouseLocation) in self?.startWireCreationOnOptionMouseDown (at: inUnalignedMouseLocation) },
       continue: { [weak self] (inUnalignedMouseLocation) in self?.continueWireCreationOnOptionMouseDragged (at: inUnalignedMouseLocation) },
       abort: { [weak self] in self?.abortWireCreationOnOptionMouseUp () },
       stop: { [weak self] (inUnalignedMouseLocation) in self?.stopWireCreationOnOptionMouseUp (at: inUnalignedMouseLocation) }
     )
  //--- Pop up button controllers
    self.mSelectedWireNetClassPopUpController.bind_model (
      self.rootObject.mNetClasses_property,
      self.wireInSchematicSelectionController
    )
    self.mSelectedWireNetClassPopUpController.attachPopUpButton (self.mSchematicWireNetClassButton)
    self.mSelectedLabelNetClassPopUpController.bind_model (
      self.rootObject.mNetClasses_property,
      self.schematicLabelSelectionController
    )
    self.mSelectedLabelNetClassPopUpController.attachPopUpButton (self.mSchematicLabelNetClassButton)
  //--- Set pages segmented control
    let pages = [
      self.mComponentsPageView,
      self.mLibraryPageView,
      self.mSchematicsPageView,
      self.mNetClassesPageView ,
      self.mNetListPageView,
      self.mBoardBorderPageView,
      self.mBoardObjectsPageView,
      self.mProductPageView
    ]
    self.mPageSegmentedControl?.register (masterView: self.mMasterView, pages)
  //--- Set schematics inspector segmented control
    let schematicsInspectors = [
      self.mSelectedObjectsSchematicsInspectorView,
      self.mHotKeysSchematicInspectorView,
      self.mUnplacedSymbolsSchematicsInspectorView,
      self.mGridZoomSchematicsInspectorView,
      self.mSchematicsSheetsInspectorView
    ]
    self.mSchematicsInspectorSegmentedControl?.register (masterView: self.mBaseSchematicsInspectorView, schematicsInspectors)
  //--- Register schematics inspector views
    self.schematicObjectsController.register (inspectorReceivingView: self.mSelectedObjectsSchematicsInspectorView)
    self.schematicObjectsController.register (inspectorView: self.mComponentSymbolInspectorView, for: ComponentSymbolInProject.self)
    self.schematicObjectsController.register (inspectorView: self.mCommentInSchematicsInspectorView, for: CommentInSchematic.self)
    self.schematicObjectsController.register (inspectorView: self.mNCInSchematicsInspectorView, for: NCInSchematic.self)
    self.schematicObjectsController.register (inspectorView: self.mSchematicsLabelInspectorView, for: LabelInSchematic.self)
    self.schematicObjectsController.register (inspectorView: self.mSchematicsWireInspectorView, for: WireInSchematic.self)
  //---
    self.mNewComponentFromDevicePullDownButton?.register (document: self)
  //---
    self.mSymbolCountToInsertController = EBSimpleController (
      observedObjects: [self.unplacedSymbolsCount_property],
      callBack: {
        let title : String
        switch self.unplacedSymbolsCount_property_selection {
        case .empty, .multiple :
          title = "—"
        case .single (let v) :
          title = "+ \(v)"
        }
        self.mSchematicsInspectorSegmentedControl?.setLabel (title, forSegment: 2)
      }
    )
  //---
    self.mSheetController.register (
      document: self,
      popup: self.mSheetPopUpButton,
      sheetUp: self.mSheetUpButton,
      sheetDown: self.mSheetDownButton
    )
  //---
    self.mSchematicsView?.mGridStepInCanariUnit = SCHEMATIC_GRID_IN_CANARI_UNIT
    self.mSchematicsView?.set (mouseGridInCanariUnit: SCHEMATIC_GRID_IN_CANARI_UNIT)
    self.mSchematicsView?.set (arrowKeyMagnitude : SCHEMATIC_GRID_IN_CANARI_UNIT)
    self.mSchematicsView?.set (shiftArrowKeyMagnitude : SCHEMATIC_GRID_IN_CANARI_UNIT * 4)
    self.mSchematicsView?.mPopulateContextualMenuClosure = self.populateContextualClickOnSchematics
  //--- Set document to scroll view for enabling drag and drop for schematics symbols
    self.mSchematicsScrollView?.register (document: self, draggedTypes: [kDragAndDropSymbolInSchematic, kDragAndDropCommentInSchematic, kDragAndDropWireInSchematic])
    self.mUnplacedSymbolsTableView?.register (document: self, draggedType: kDragAndDropSymbolInSchematic)
  //--- Drag source buttons and destination scroll view
    self.mAddCommentButton?.register (
      draggedType: kDragAndDropCommentInSchematic,
      entity: CommentInSchematic.self,
      scaleProvider: self.mSchematicsView
    )
    self.mAddWireButton?.register (
      draggedType: kDragAndDropWireInSchematic,
      entity: WireInSchematic.self,
      scaleProvider: self.mSchematicsView
    )
  //---
    self.schematicObjectsController.mAfterObjectRemovingCallback = self.updateSchematicsPointsAndNets
    self.mSchematicsView?.setMouseMovedCallback { [weak self] (mouseLocation) in self?.mouseMovedInSchematic (mouseLocation) }
    self.mSchematicsView?.setMouseExitCallback { [weak self] in self?.mouseExitInSchematic () }
    self.mouseExitInSchematic ()
    self.mSchematicsView?.setKeyDownCallback { [weak self] (mouseLocation, key) in self?.keyDownInSchematic (mouseLocation, key) }
  }

  //····················································································································
  //   removeUserInterface
  //····················································································································

  override func removeUserInterface () {
    super.removeUserInterface ()
    self.mSymbolCountToInsertController?.unregister ()
    self.mSymbolCountToInsertController = nil
    self.mSheetController.unregister ()
    self.mSchematicsView?.mPopulateContextualMenuClosure = nil // Required for breaking strong reference cycle
    self.schematicObjectsController.mAfterObjectRemovingCallback = nil // Required for breaking strong reference cycle
  //--- Pop up button controllers
    self.mSelectedWireNetClassPopUpController.unbind_model ()
    self.mSelectedWireNetClassPopUpController.attachPopUpButton (nil)
    self.mSelectedLabelNetClassPopUpController.unbind_model ()
    self.mSelectedLabelNetClassPopUpController.attachPopUpButton (nil)
  }

  //····················································································································
  //    Update points and net
  //····················································································································

  internal func updateSchematicsPointsAndNets () {
    var errorList = [String] ()
    self.rootObject.mSelectedSheet?.removeUnusedSchematicsPoints (&errorList)
    self.removeUnusedWires (&errorList)
    self.removeUnusedNets ()
    if errorList.count > 0,
       let dialog = self.mInconsistentSchematicErrorPanel,
       let window = self.windowForSheet {
      let message = errorList.joined (separator: "\n")
      self.mInconsistentSchematicErrorTextView?.string = message
      window.beginSheet (dialog) { (inModalResponse) in }
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
  // Providing the drag image, called by a source drag table view (CanariDragSourceTableView)
  //····················································································································

  override func dragImageForRows (with dragRows: IndexSet,
                                  tableColumns: [NSTableColumn],
                                  event dragEvent: NSEvent,
                                  offset dragImageOffset: NSPointPointer) -> NSImage {
    var result = NSImage (named: NSImage.Name ("exclamation"))!
    if let schematicsView = self.mSchematicsView, dragRows.count == 1, let idx = dragRows.first {
    //--- Find symbol to insert in schematics
      let symbolTag = self.mUnplacedSymbolsTableView?.tag (atIndex: idx) ?? 0
      self.mPossibleDraggedSymbol = nil
      for component in self.rootObject.mComponents {
        for s in component.mSymbols {
           if s.ebObjectIndex == symbolTag {
             self.mPossibleDraggedSymbol = s
           }
        }
      }
      if let symbol = self.mPossibleDraggedSymbol,
         let strokeBP = symbol.symbolInfo?.strokeBezierPath,
         let filledBP = symbol.symbolInfo?.filledBezierPath {
        let scale : CGFloat = schematicsView.actualScale
        let horizontalFlip : CGFloat = schematicsView.horizontalFlip ? -scale : scale
        let verticalFlip   : CGFloat = schematicsView.verticalFlip   ? -scale : scale
        let af = NSAffineTransform ()
        af.scaleX (by: horizontalFlip, yBy: verticalFlip)
        let symbolShape = EBShape ()
        symbolShape.append (EBFilledBezierPathShape ([filledBP], g_Preferences!.symbolColorForSchematic))
        symbolShape.append (EBStrokeBezierPathShape ([strokeBP], g_Preferences!.symbolColorForSchematic))
        let scaledSymbolShape = symbolShape.transformedBy (af)
        result = buildPDFimage (frame: scaledSymbolShape.boundingBox, shape: scaledSymbolShape)
      }
    }
    return result
  }

  //····················································································································

  override func performDragOperation (_ sender : NSDraggingInfo, _ destinationScrollView : NSScrollView) -> Bool {
    let pasteboard = sender.draggingPasteboard
    var ok = false
    if let documentView = destinationScrollView.documentView, let selectedSheet = self.rootObject.mSelectedSheet {
      let draggingLocationInWindow = sender.draggingLocation
      let draggingLocationInDestinationView = documentView.convert (draggingLocationInWindow, from: nil)
      if let _ = pasteboard.data (forType: kDragAndDropSymbolInSchematic), let symbol = self.mPossibleDraggedSymbol {
        self.performAddSymbolDragOperation (symbol, draggingLocationInDestinationView)
        ok = true
      }else if let _ = pasteboard.availableType (from: [kDragAndDropCommentInSchematic]) {
        self.performAddCommentDragOperation (draggingLocationInDestinationView)
        ok = true
      }else if let _ = pasteboard.availableType (from: [kDragAndDropWireInSchematic]) {
        let possibleNewWire = selectedSheet.performAddWireDragOperation (draggingLocationInDestinationView, newNetCreator: self.rootObject.createNetWithAutomaticName)
        if let newWire = possibleNewWire {
          self.schematicObjectsController.setSelection ([newWire])
          ok = true
        }
      }
    }
    return ok
  }

  //····················································································································

  private func performAddCommentDragOperation (_ inDraggingLocationInDestinationView : NSPoint) {
    let p = inDraggingLocationInDestinationView.canariPointAligned (onCanariGrid: SCHEMATIC_GRID_IN_CANARI_UNIT)
    let comment = CommentInSchematic (self.ebUndoManager)
    comment.mX = p.x
    comment.mY = p.y
    self.rootObject.mSelectedSheet?.mObjects.append (comment)
    self.schematicObjectsController.setSelection ([comment])
  }

  //····················································································································

  private func performAddSymbolDragOperation (_ inSymbol : ComponentSymbolInProject, _ inDraggingLocationInDestinationView : NSPoint) {
  //--- Fix symbol location
    let p = inDraggingLocationInDestinationView.canariPointAligned (onCanariGrid: milsToCanariUnit (50))
    inSymbol.mCenterX = p.x
    inSymbol.mCenterY = p.y
  //--- Create points in schematics
    let symbolInfo : ComponentSymbolInfo = inSymbol.symbolInfo!
    let symbolPins : [PinDescriptor] = symbolInfo.pins
    for pin in symbolPins {
      if pin.symbolIdentifier.symbolInstanceName == inSymbol.mSymbolInstanceName {
        let point = PointInSchematic (self.ebUndoManager)
        point.mSymbol = inSymbol
        point.mSymbolPinName = pin.pinName
        self.rootObject.mSelectedSheet?.mPoints.append (point)
      }
    }
  //--- Enter symbol
    self.rootObject.mSelectedSheet?.mObjects.append (inSymbol)
    self.schematicObjectsController.setSelection ([inSymbol])
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
