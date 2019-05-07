//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

@objc(SymbolDocument) class SymbolDocument : EBManagedDocument {

  //····················································································································
  //   Array controller: mSymbolObjectsController
  //····················································································································

  var mSymbolObjectsController = Controller_SymbolDocument_mSymbolObjectsController ()

  //····················································································································
  //   Selection controller: mSymbolTextSelectionController
  //····················································································································

  var mSymbolTextSelectionController = SelectionController_SymbolDocument_mSymbolTextSelectionController ()

  //····················································································································
  //   Selection controller: mSymbolPinSelectionController
  //····················································································································

  var mSymbolPinSelectionController = SelectionController_SymbolDocument_mSymbolPinSelectionController ()

  //····················································································································
  //   Transient property: mStatusImage
  //····················································································································

  let mStatusImage_property = EBTransientProperty_NSImage ()

  //····················································································································

  var mStatusImage_property_selection : EBSelection <NSImage> {
    return self.mStatusImage_property.prop
  }

  //····················································································································

  var mStatusImage : NSImage? {
    switch self.mStatusImage_property_selection {
    case .empty, .multiple :
      return nil
    case .single (let v) :
      return v
    }
  }

  //····················································································································
  //   Transient property: mStatusMessage
  //····················································································································

  let mStatusMessage_property = EBTransientProperty_String ()

  //····················································································································

  var mStatusMessage_property_selection : EBSelection <String> {
    return self.mStatusMessage_property.prop
  }

  //····················································································································

  var mStatusMessage : String? {
    switch self.mStatusMessage_property_selection {
    case .empty, .multiple :
      return nil
    case .single (let v) :
      return v
    }
  }

  //····················································································································
  //   Transient property: mMetadataStatus
  //····················································································································

  let mMetadataStatus_property = EBTransientProperty_MetadataStatus ()

  //····················································································································

  var mMetadataStatus_property_selection : EBSelection <MetadataStatus> {
    return self.mMetadataStatus_property.prop
  }

  //····················································································································

  var mMetadataStatus : MetadataStatus? {
    switch self.mMetadataStatus_property_selection {
    case .empty, .multiple :
      return nil
    case .single (let v) :
      return v
    }
  }

  //····················································································································
  //   Transient property: documentFilePath
  //····················································································································

  let documentFilePath_property = EBTransientProperty_String ()

  //····················································································································

  var documentFilePath_property_selection : EBSelection <String> {
    return self.documentFilePath_property.prop
  }

  //····················································································································

  var documentFilePath : String? {
    switch self.documentFilePath_property_selection {
    case .empty, .multiple :
      return nil
    case .single (let v) :
      return v
    }
  }


  //····················································································································
  //    Outlets
  //····················································································································

  @IBOutlet var mAddBezierButton : CanariDragSourceButton?
  @IBOutlet var mAddOvalButton : CanariDragSourceButton?
  @IBOutlet var mAddPinButton : CanariDragSourceButton?
  @IBOutlet var mAddSegmentButton : CanariDragSourceButton?
  @IBOutlet var mAddSolidOvalButton : CanariDragSourceButton?
  @IBOutlet var mAddSolidRectButton : CanariDragSourceButton?
  @IBOutlet var mAddTextButton : CanariDragSourceButton?
  @IBOutlet var mCommentTextView : EBTextView?
  @IBOutlet var mComposedSymbolScrollView : EBScrollView?
  @IBOutlet var mComposedSymbolView : EBView?
  @IBOutlet var mCrossColorOfSymbolGridColorWell : EBColorWell?
  @IBOutlet var mDeselectIssueButton : EBButton?
  @IBOutlet var mGridDisplayFactorPopUpButton : EBPopUpButton?
  @IBOutlet var mGridStyle : EBPopUpButton?
  @IBOutlet var mHorizontalFlip : EBSwitch?
  @IBOutlet var mInfosPageView : CanariViewWithKeyView?
  @IBOutlet var mInspectorSegmentedControl : CanariSegmentedControl?
  @IBOutlet var mIssueScrollView : NSScrollView?
  @IBOutlet var mIssueTableView : CanariIssueTableView?
  @IBOutlet var mIssueTextField : EBTextObserverField?
  @IBOutlet var mLineColorOfSymbolGridColorWell : EBColorWell?
  @IBOutlet var mMasterView : NSView?
  @IBOutlet var mPageSegmentedControl : CanariSegmentedControl?
  @IBOutlet var mPinInspectorView : CanariViewWithKeyView?
  @IBOutlet var mPinNameFontButton : EBFontButton?
  @IBOutlet var mResetVersionButton : EBButton?
  @IBOutlet var mSignatureTextField : CanariSignatureField?
  @IBOutlet var mStatusImageViewInToolbar : EBImageObserverView?
  @IBOutlet var mSymbolBackgroundColorColorWell : EBColorWell?
  @IBOutlet var mSymbolBaseInspectorView : CanariViewWithKeyView?
  @IBOutlet var mSymbolColorColorWell : EBColorWell?
  @IBOutlet var mSymbolDrawingWidthMultipliedByTenPopupButton : EBPopUpButton?
  @IBOutlet var mSymbolIssueInspectorView : CanariViewWithKeyView?
  @IBOutlet var mSymbolPageView : CanariViewWithKeyView?
  @IBOutlet var mSymbolPinLabelHorizontalAlignmentPopUpButton : EBPopUpButton?
  @IBOutlet var mSymbolPinLabelNameTextField : EBTextField?
  @IBOutlet var mSymbolPinNumberHorizontalAlignmentPopUpButton : EBPopUpButton?
  @IBOutlet var mSymbolPinNumberIsVisibleInSchematicsSwitch : EBSwitch?
  @IBOutlet var mSymbolRootInspectorView : NSView?
  @IBOutlet var mSymbolTextHorizontalAlignmentPopUpButton : EBPopUpButton?
  @IBOutlet var mSymbolTextValueTextField : EBTextField?
  @IBOutlet var mSymbolZoomFlipInspectorView : CanariViewWithKeyView?
  @IBOutlet var mTextInspectorView : CanariViewWithKeyView?
  @IBOutlet var mVersionField : CanariVersionField?
  @IBOutlet var mVerticalFlip : EBSwitch?
  @IBOutlet var mXPlacardUnitPopUpButton : EBPopUpButton?
  @IBOutlet var mYPlacardUnitPopUpButton : EBPopUpButton?

  //····················································································································
  //    Multiple bindings controllers
  //····················································································································

  var mController_mDeselectIssueButton_hidden : MultipleBindingController_hidden? = nil
  var mController_mIssueScrollView_hidden : MultipleBindingController_hidden? = nil

  //····················································································································
  //    Document file path
  //····················································································································
  // Cette méthode est appelée après tout enregistrement, qu'il y ait changement de nom ou pas.

  override var fileModificationDate : Date? {
    get {
      return super.fileModificationDate
    }
    set{
      super.fileModificationDate = newValue
      self.documentFilePath_property.postEvent ()
    }
  }

  //····················································································································

  func computeTransient_documentFilePath () -> String {
    var documentFilePath = ""
    if let url = self.fileURL {
      documentFilePath = url.path
    }
    return documentFilePath
  }

  //····················································································································
  //    populateExplorerWindow
  //····················································································································

  override func populateExplorerWindow (_ y : inout CGFloat, view : NSView) {
  //--- Array controller property: mSymbolObjectsController
    self.mSymbolObjectsController.addExplorer (name: "mSymbolObjectsController", y:&y, view:view)
  //--- Selection controller property: mSymbolTextSelectionController
    self.mSymbolTextSelectionController.addExplorer (name: "mSymbolTextSelectionController", y:&y, view:view)
  //--- Selection controller property: mSymbolPinSelectionController
    self.mSymbolPinSelectionController.addExplorer (name: "mSymbolPinSelectionController", y:&y, view:view)
  //---
    super.populateExplorerWindow (&y, view:view)
  }

  //····················································································································
  //    windowNibName
  //····················································································································

  override var windowNibName : NSNib.Name {
    return NSNib.Name ("SymbolDocument")
  }
  
  //····················································································································
  //    rootEntityClassName
  //····················································································································

  override func rootEntityClassName () -> String {
    return "SymbolRoot"
  }

  //····················································································································
  //    rootObject
  //····················································································································

  var rootObject : SymbolRoot { return self.mRootObject as! SymbolRoot }

  //····················································································································
  //    check outlet connections
  //····················································································································

  private func checkOutletConnections () {
    checkOutletConnection (self.mAddBezierButton, "mAddBezierButton", CanariDragSourceButton.self, #file, #line)
    checkOutletConnection (self.mAddOvalButton, "mAddOvalButton", CanariDragSourceButton.self, #file, #line)
    checkOutletConnection (self.mAddPinButton, "mAddPinButton", CanariDragSourceButton.self, #file, #line)
    checkOutletConnection (self.mAddSegmentButton, "mAddSegmentButton", CanariDragSourceButton.self, #file, #line)
    checkOutletConnection (self.mAddSolidOvalButton, "mAddSolidOvalButton", CanariDragSourceButton.self, #file, #line)
    checkOutletConnection (self.mAddSolidRectButton, "mAddSolidRectButton", CanariDragSourceButton.self, #file, #line)
    checkOutletConnection (self.mAddTextButton, "mAddTextButton", CanariDragSourceButton.self, #file, #line)
    checkOutletConnection (self.mCommentTextView, "mCommentTextView", EBTextView.self, #file, #line)
    checkOutletConnection (self.mComposedSymbolScrollView, "mComposedSymbolScrollView", EBScrollView.self, #file, #line)
    checkOutletConnection (self.mComposedSymbolView, "mComposedSymbolView", EBView.self, #file, #line)
    checkOutletConnection (self.mCrossColorOfSymbolGridColorWell, "mCrossColorOfSymbolGridColorWell", EBColorWell.self, #file, #line)
    checkOutletConnection (self.mDeselectIssueButton, "mDeselectIssueButton", EBButton.self, #file, #line)
    checkOutletConnection (self.mGridDisplayFactorPopUpButton, "mGridDisplayFactorPopUpButton", EBPopUpButton.self, #file, #line)
    checkOutletConnection (self.mGridStyle, "mGridStyle", EBPopUpButton.self, #file, #line)
    checkOutletConnection (self.mHorizontalFlip, "mHorizontalFlip", EBSwitch.self, #file, #line)
    checkOutletConnection (self.mInfosPageView, "mInfosPageView", CanariViewWithKeyView.self, #file, #line)
    checkOutletConnection (self.mInspectorSegmentedControl, "mInspectorSegmentedControl", CanariSegmentedControl.self, #file, #line)
    checkOutletConnection (self.mIssueScrollView, "mIssueScrollView", NSScrollView.self, #file, #line)
    checkOutletConnection (self.mIssueTableView, "mIssueTableView", CanariIssueTableView.self, #file, #line)
    checkOutletConnection (self.mIssueTextField, "mIssueTextField", EBTextObserverField.self, #file, #line)
    checkOutletConnection (self.mLineColorOfSymbolGridColorWell, "mLineColorOfSymbolGridColorWell", EBColorWell.self, #file, #line)
    checkOutletConnection (self.mMasterView, "mMasterView", NSView.self, #file, #line)
    checkOutletConnection (self.mPageSegmentedControl, "mPageSegmentedControl", CanariSegmentedControl.self, #file, #line)
    checkOutletConnection (self.mPinInspectorView, "mPinInspectorView", CanariViewWithKeyView.self, #file, #line)
    checkOutletConnection (self.mPinNameFontButton, "mPinNameFontButton", EBFontButton.self, #file, #line)
    checkOutletConnection (self.mResetVersionButton, "mResetVersionButton", EBButton.self, #file, #line)
    checkOutletConnection (self.mSignatureTextField, "mSignatureTextField", CanariSignatureField.self, #file, #line)
    checkOutletConnection (self.mStatusImageViewInToolbar, "mStatusImageViewInToolbar", EBImageObserverView.self, #file, #line)
    checkOutletConnection (self.mSymbolBackgroundColorColorWell, "mSymbolBackgroundColorColorWell", EBColorWell.self, #file, #line)
    checkOutletConnection (self.mSymbolBaseInspectorView, "mSymbolBaseInspectorView", CanariViewWithKeyView.self, #file, #line)
    checkOutletConnection (self.mSymbolColorColorWell, "mSymbolColorColorWell", EBColorWell.self, #file, #line)
    checkOutletConnection (self.mSymbolDrawingWidthMultipliedByTenPopupButton, "mSymbolDrawingWidthMultipliedByTenPopupButton", EBPopUpButton.self, #file, #line)
    checkOutletConnection (self.mSymbolIssueInspectorView, "mSymbolIssueInspectorView", CanariViewWithKeyView.self, #file, #line)
    checkOutletConnection (self.mSymbolPageView, "mSymbolPageView", CanariViewWithKeyView.self, #file, #line)
    checkOutletConnection (self.mSymbolPinLabelHorizontalAlignmentPopUpButton, "mSymbolPinLabelHorizontalAlignmentPopUpButton", EBPopUpButton.self, #file, #line)
    checkOutletConnection (self.mSymbolPinLabelNameTextField, "mSymbolPinLabelNameTextField", EBTextField.self, #file, #line)
    checkOutletConnection (self.mSymbolPinNumberHorizontalAlignmentPopUpButton, "mSymbolPinNumberHorizontalAlignmentPopUpButton", EBPopUpButton.self, #file, #line)
    checkOutletConnection (self.mSymbolPinNumberIsVisibleInSchematicsSwitch, "mSymbolPinNumberIsVisibleInSchematicsSwitch", EBSwitch.self, #file, #line)
    checkOutletConnection (self.mSymbolRootInspectorView, "mSymbolRootInspectorView", NSView.self, #file, #line)
    checkOutletConnection (self.mSymbolTextHorizontalAlignmentPopUpButton, "mSymbolTextHorizontalAlignmentPopUpButton", EBPopUpButton.self, #file, #line)
    checkOutletConnection (self.mSymbolTextValueTextField, "mSymbolTextValueTextField", EBTextField.self, #file, #line)
    checkOutletConnection (self.mSymbolZoomFlipInspectorView, "mSymbolZoomFlipInspectorView", CanariViewWithKeyView.self, #file, #line)
    checkOutletConnection (self.mTextInspectorView, "mTextInspectorView", CanariViewWithKeyView.self, #file, #line)
    checkOutletConnection (self.mVersionField, "mVersionField", CanariVersionField.self, #file, #line)
    checkOutletConnection (self.mVerticalFlip, "mVerticalFlip", EBSwitch.self, #file, #line)
    checkOutletConnection (self.mXPlacardUnitPopUpButton, "mXPlacardUnitPopUpButton", EBPopUpButton.self, #file, #line)
    checkOutletConnection (self.mYPlacardUnitPopUpButton, "mYPlacardUnitPopUpButton", EBPopUpButton.self, #file, #line)
   }
  
  //····················································································································
  //    windowControllerDidLoadNib
  //····················································································································

  override func windowControllerDidLoadNib (_ aController: NSWindowController) {
    super.windowControllerDidLoadNib (aController)
  //--------------------------- Outlet checking
    self.checkOutletConnections ()
  //--- Array controller property: mSymbolObjectsController
    self.mSymbolObjectsController.bind_model (self.rootObject.symbolObjects_property)
  //--- Selection controller property: mSymbolTextSelectionController
    self.mSymbolTextSelectionController.bind_selection (model: self.mSymbolObjectsController.selectedArray_property, file: #file, line: #line)
  //--- Selection controller property: mSymbolPinSelectionController
    self.mSymbolPinSelectionController.bind_selection (model: self.mSymbolObjectsController.selectedArray_property, file: #file, line: #line)
  //--- Atomic property: mStatusImage
    self.mStatusImage_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        let kind = unwSelf.rootObject.issues_property_selection.kind ()
        switch kind {
        case .noSelectionKind :
          return .empty
        case .multipleSelectionKind :
          return .multiple
        case .singleSelectionKind :
          switch (unwSelf.rootObject.issues_property_selection) {
          case (.single (let v0)) :
            return .single (transient_SymbolDocument_mStatusImage (v0))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.rootObject.issues_property.addEBObserver (self.mStatusImage_property)
  //--- Atomic property: mStatusMessage
    self.mStatusMessage_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        let kind = unwSelf.rootObject.issues_property_selection.kind ()
        switch kind {
        case .noSelectionKind :
          return .empty
        case .multipleSelectionKind :
          return .multiple
        case .singleSelectionKind :
          switch (unwSelf.rootObject.issues_property_selection) {
          case (.single (let v0)) :
            return .single (transient_SymbolDocument_mStatusMessage (v0))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.rootObject.issues_property.addEBObserver (self.mStatusMessage_property)
  //--- Atomic property: mMetadataStatus
    self.mMetadataStatus_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        let kind = unwSelf.rootObject.issues_property_selection.kind ()
        switch kind {
        case .noSelectionKind :
          return .empty
        case .multipleSelectionKind :
          return .multiple
        case .singleSelectionKind :
          switch (unwSelf.rootObject.issues_property_selection) {
          case (.single (let v0)) :
            return .single (transient_SymbolDocument_mMetadataStatus (v0))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.rootObject.issues_property.addEBObserver (self.mMetadataStatus_property)
    self.mSymbolObjectsController.bind_ebView (self.mComposedSymbolView)
  //--------------------------- Install regular bindings
    self.mPageSegmentedControl?.bind_selectedPage (self.rootObject.selectedPageIndex_property, file: #file, line: #line)
    self.mSignatureTextField?.bind_signature (self.signatureObserver_property, file: #file, line: #line)
    self.mVersionField?.bind_version (self.versionObserver_property, file: #file, line: #line)
    self.mVersionField?.bind_versionShouldChange (self.versionShouldChangeObserver_property, file: #file, line: #line)
    self.mInspectorSegmentedControl?.bind_selectedPage (self.rootObject.selectedInspector_property, file: #file, line: #line)
    self.mHorizontalFlip?.bind_value (self.rootObject.horizontalFlip_property, file: #file, line: #line)
    self.mVerticalFlip?.bind_value (self.rootObject.verticalFlip_property, file: #file, line: #line)
    self.mGridStyle?.bind_selectedIndex (self.rootObject.gridStyle_property, file: #file, line: #line)
    self.mGridDisplayFactorPopUpButton?.bind_selectedTag (self.rootObject.gridDisplay_property, file: #file, line: #line)
    self.mXPlacardUnitPopUpButton?.bind_selectedTag (self.rootObject.xPlacardUnit_property, file: #file, line: #line)
    self.mYPlacardUnitPopUpButton?.bind_selectedTag (self.rootObject.yPlacardUnit_property, file: #file, line: #line)
    self.mCrossColorOfSymbolGridColorWell?.bind_color (g_Preferences!.crossColorOfSymbolGrid_property, file: #file, line: #line, sendContinously:false)
    self.mLineColorOfSymbolGridColorWell?.bind_color (g_Preferences!.lineColorOfSymbolGrid_property, file: #file, line: #line, sendContinously:false)
    self.mSymbolColorColorWell?.bind_color (g_Preferences!.symbolColor_property, file: #file, line: #line, sendContinously:false)
    self.mSymbolBackgroundColorColorWell?.bind_color (g_Preferences!.symbolBackgroundColor_property, file: #file, line: #line, sendContinously:false)
    self.mSymbolDrawingWidthMultipliedByTenPopupButton?.bind_selectedTag (g_Preferences!.symbolDrawingWidthMultipliedByTen_property, file: #file, line: #line)
    self.mPinNameFontButton?.bind_fontValue (g_Preferences!.pinNameFont_property, file: #file, line: #line)
    self.mComposedSymbolView?.bind_horizontalFlip (self.rootObject.horizontalFlip_property, file: #file, line: #line)
    self.mComposedSymbolView?.bind_verticalFlip (self.rootObject.verticalFlip_property, file: #file, line: #line)
    self.mComposedSymbolView?.bind_gridStyle (self.rootObject.gridStyle_property, file: #file, line: #line)
    self.mComposedSymbolView?.bind_gridDisplayFactor (self.rootObject.gridDisplay_property, file: #file, line: #line)
    self.mComposedSymbolView?.bind_gridLineColor (g_Preferences!.lineColorOfSymbolGrid_property, file: #file, line: #line)
    self.mComposedSymbolView?.bind_gridCrossColor (g_Preferences!.crossColorOfSymbolGrid_property, file: #file, line: #line)
    self.mComposedSymbolView?.bind_zoom (self.rootObject.zoom_property, file: #file, line: #line)
    self.mComposedSymbolView?.bind_backColor (g_Preferences!.symbolBackgroundColor_property, file: #file, line: #line)
    self.mComposedSymbolView?.bind_xPlacardUnit (self.rootObject.xPlacardUnit_property, file: #file, line: #line)
    self.mComposedSymbolView?.bind_yPlacardUnit (self.rootObject.yPlacardUnit_property, file: #file, line: #line)
    self.mSymbolTextHorizontalAlignmentPopUpButton?.bind_selectedIndex (self.mSymbolTextSelectionController.horizontalAlignment_property, file: #file, line: #line)
    self.mSymbolTextValueTextField?.bind_value (self.mSymbolTextSelectionController.text_property, file: #file, line: #line, sendContinously:true)
    self.mSymbolPinNumberHorizontalAlignmentPopUpButton?.bind_selectedIndex (self.mSymbolPinSelectionController.numberHorizontalAlignment_property, file: #file, line: #line)
    self.mSymbolPinLabelHorizontalAlignmentPopUpButton?.bind_selectedIndex (self.mSymbolPinSelectionController.nameHorizontalAlignment_property, file: #file, line: #line)
    self.mSymbolPinNumberIsVisibleInSchematicsSwitch?.bind_value (self.mSymbolPinSelectionController.pinNameIsDisplayedInSchematics_property, file: #file, line: #line)
    self.mSymbolPinLabelNameTextField?.bind_value (self.mSymbolPinSelectionController.name_property, file: #file, line: #line, sendContinously:true)
    self.mStatusImageViewInToolbar?.bind_image (self.mStatusImage_property, file: #file, line: #line)
    self.mStatusImageViewInToolbar?.bind_tooltip (self.mStatusMessage_property, file: #file, line: #line)
    self.mIssueTextField?.bind_valueObserver (self.mStatusMessage_property, file: #file, line: #line)
    self.mIssueTableView?.bind_issues (self.rootObject.issues_property, file: #file, line: #line)
    self.mCommentTextView?.bind_value (self.rootObject.comments_property, file: #file, line: #line)
  //--------------------------- Install multiple bindings
    do{
      let controller = MultipleBindingController_hidden (
        computeFunction: {
          return self.rootObject.noIssue_property_selection
        },
        outlet: self.mDeselectIssueButton
      )
      self.rootObject.noIssue_property.addEBObserver (controller)
      self.mController_mDeselectIssueButton_hidden = controller
    }
    do{
      let controller = MultipleBindingController_hidden (
        computeFunction: {
          return self.rootObject.noIssue_property_selection
        },
        outlet: self.mIssueScrollView
      )
      self.rootObject.noIssue_property.addEBObserver (controller)
      self.mController_mIssueScrollView_hidden = controller
    }
  //--------------------------- Set targets / actions
    self.mResetVersionButton?.target = self
    self.mResetVersionButton?.action = #selector (SymbolDocument.resetVersionAction (_:))
  //--------------------------- Read documentFilePath model 
    self.documentFilePath_property.mReadModelFunction = { [weak self] in
      if let r = self?.computeTransient_documentFilePath () {
        return .single (r)
      }else{
        return .empty
      }
    }

  }

  //····················································································································
  //   removeUserInterface
  //····················································································································

  override func removeUserInterface () {
    super.removeUserInterface ()
  //--------------------------- Unbind regular bindings
    self.mPageSegmentedControl?.unbind_selectedPage ()
    self.mSignatureTextField?.unbind_signature ()
    self.mVersionField?.unbind_version ()
    self.mVersionField?.unbind_versionShouldChange ()
    self.mInspectorSegmentedControl?.unbind_selectedPage ()
    self.mHorizontalFlip?.unbind_value ()
    self.mVerticalFlip?.unbind_value ()
    self.mGridStyle?.unbind_selectedIndex ()
    self.mGridDisplayFactorPopUpButton?.unbind_selectedTag ()
    self.mXPlacardUnitPopUpButton?.unbind_selectedTag ()
    self.mYPlacardUnitPopUpButton?.unbind_selectedTag ()
    self.mCrossColorOfSymbolGridColorWell?.unbind_color ()
    self.mLineColorOfSymbolGridColorWell?.unbind_color ()
    self.mSymbolColorColorWell?.unbind_color ()
    self.mSymbolBackgroundColorColorWell?.unbind_color ()
    self.mSymbolDrawingWidthMultipliedByTenPopupButton?.unbind_selectedTag ()
    self.mPinNameFontButton?.unbind_fontValue ()
    self.mComposedSymbolView?.unbind_horizontalFlip ()
    self.mComposedSymbolView?.unbind_verticalFlip ()
    self.mComposedSymbolView?.unbind_gridStyle ()
    self.mComposedSymbolView?.unbind_gridDisplayFactor ()
    self.mComposedSymbolView?.unbind_gridLineColor ()
    self.mComposedSymbolView?.unbind_gridCrossColor ()
    self.mComposedSymbolView?.unbind_zoom ()
    self.mComposedSymbolView?.unbind_backColor ()
    self.mComposedSymbolView?.unbind_xPlacardUnit ()
    self.mComposedSymbolView?.unbind_yPlacardUnit ()
    self.mSymbolTextHorizontalAlignmentPopUpButton?.unbind_selectedIndex ()
    self.mSymbolTextValueTextField?.unbind_value ()
    self.mSymbolPinNumberHorizontalAlignmentPopUpButton?.unbind_selectedIndex ()
    self.mSymbolPinLabelHorizontalAlignmentPopUpButton?.unbind_selectedIndex ()
    self.mSymbolPinNumberIsVisibleInSchematicsSwitch?.unbind_value ()
    self.mSymbolPinLabelNameTextField?.unbind_value ()
    self.mStatusImageViewInToolbar?.unbind_image ()
    self.mStatusImageViewInToolbar?.unbind_tooltip ()
    self.mIssueTextField?.unbind_valueObserver ()
    self.mIssueTableView?.unbind_issues ()
    self.mCommentTextView?.unbind_value ()
  //--------------------------- Unbind multiple bindings
    self.rootObject.noIssue_property.removeEBObserver (self.mController_mDeselectIssueButton_hidden!)
    self.mController_mDeselectIssueButton_hidden = nil
    self.rootObject.noIssue_property.removeEBObserver (self.mController_mIssueScrollView_hidden!)
    self.mController_mIssueScrollView_hidden = nil
  //--------------------------- Unbind array controllers
    self.mSymbolObjectsController.unbind_ebView (self.mComposedSymbolView)
  //--- Array controller property: mSymbolObjectsController
    self.mSymbolObjectsController.unbind_model ()
  //--- Selection controller property: mSymbolTextSelectionController
    self.mSymbolTextSelectionController.unbind_selection ()
  //--- Selection controller property: mSymbolPinSelectionController
    self.mSymbolPinSelectionController.unbind_selection ()
    self.rootObject.issues_property.removeEBObserver (self.mStatusImage_property)
    self.rootObject.issues_property.removeEBObserver (self.mStatusMessage_property)
    self.rootObject.issues_property.removeEBObserver (self.mMetadataStatus_property)
  //--------------------------- Remove targets / actions
    self.mResetVersionButton?.target = nil
  //--------------------------- Clean up outlets
    self.mAddBezierButton?.ebCleanUp ()
    self.mAddOvalButton?.ebCleanUp ()
    self.mAddPinButton?.ebCleanUp ()
    self.mAddSegmentButton?.ebCleanUp ()
    self.mAddSolidOvalButton?.ebCleanUp ()
    self.mAddSolidRectButton?.ebCleanUp ()
    self.mAddTextButton?.ebCleanUp ()
    self.mCommentTextView?.ebCleanUp ()
    self.mComposedSymbolScrollView?.ebCleanUp ()
    self.mComposedSymbolView?.ebCleanUp ()
    self.mCrossColorOfSymbolGridColorWell?.ebCleanUp ()
    self.mDeselectIssueButton?.ebCleanUp ()
    self.mGridDisplayFactorPopUpButton?.ebCleanUp ()
    self.mGridStyle?.ebCleanUp ()
    self.mHorizontalFlip?.ebCleanUp ()
    self.mInfosPageView?.ebCleanUp ()
    self.mInspectorSegmentedControl?.ebCleanUp ()
    self.mIssueScrollView?.ebCleanUp ()
    self.mIssueTableView?.ebCleanUp ()
    self.mIssueTextField?.ebCleanUp ()
    self.mLineColorOfSymbolGridColorWell?.ebCleanUp ()
    self.mMasterView?.ebCleanUp ()
    self.mPageSegmentedControl?.ebCleanUp ()
    self.mPinInspectorView?.ebCleanUp ()
    self.mPinNameFontButton?.ebCleanUp ()
    self.mResetVersionButton?.ebCleanUp ()
    self.mSignatureTextField?.ebCleanUp ()
    self.mStatusImageViewInToolbar?.ebCleanUp ()
    self.mSymbolBackgroundColorColorWell?.ebCleanUp ()
    self.mSymbolBaseInspectorView?.ebCleanUp ()
    self.mSymbolColorColorWell?.ebCleanUp ()
    self.mSymbolDrawingWidthMultipliedByTenPopupButton?.ebCleanUp ()
    self.mSymbolIssueInspectorView?.ebCleanUp ()
    self.mSymbolPageView?.ebCleanUp ()
    self.mSymbolPinLabelHorizontalAlignmentPopUpButton?.ebCleanUp ()
    self.mSymbolPinLabelNameTextField?.ebCleanUp ()
    self.mSymbolPinNumberHorizontalAlignmentPopUpButton?.ebCleanUp ()
    self.mSymbolPinNumberIsVisibleInSchematicsSwitch?.ebCleanUp ()
    self.mSymbolRootInspectorView?.ebCleanUp ()
    self.mSymbolTextHorizontalAlignmentPopUpButton?.ebCleanUp ()
    self.mSymbolTextValueTextField?.ebCleanUp ()
    self.mSymbolZoomFlipInspectorView?.ebCleanUp ()
    self.mTextInspectorView?.ebCleanUp ()
    self.mVersionField?.ebCleanUp ()
    self.mVerticalFlip?.ebCleanUp ()
    self.mXPlacardUnitPopUpButton?.ebCleanUp ()
    self.mYPlacardUnitPopUpButton?.ebCleanUp ()
//    self.mAddBezierButton = nil
//    self.mAddOvalButton = nil
//    self.mAddPinButton = nil
//    self.mAddSegmentButton = nil
//    self.mAddSolidOvalButton = nil
//    self.mAddSolidRectButton = nil
//    self.mAddTextButton = nil
//    self.mCommentTextView = nil
//    self.mComposedSymbolScrollView = nil
//    self.mComposedSymbolView = nil
//    self.mCrossColorOfSymbolGridColorWell = nil
//    self.mDeselectIssueButton = nil
//    self.mGridDisplayFactorPopUpButton = nil
//    self.mGridStyle = nil
//    self.mHorizontalFlip = nil
//    self.mInfosPageView = nil
//    self.mInspectorSegmentedControl = nil
//    self.mIssueScrollView = nil
//    self.mIssueTableView = nil
//    self.mIssueTextField = nil
//    self.mLineColorOfSymbolGridColorWell = nil
//    self.mMasterView = nil
//    self.mPageSegmentedControl = nil
//    self.mPinInspectorView = nil
//    self.mPinNameFontButton = nil
//    self.mResetVersionButton = nil
//    self.mSignatureTextField = nil
//    self.mStatusImageViewInToolbar = nil
//    self.mSymbolBackgroundColorColorWell = nil
//    self.mSymbolBaseInspectorView = nil
//    self.mSymbolColorColorWell = nil
//    self.mSymbolDrawingWidthMultipliedByTenPopupButton = nil
//    self.mSymbolIssueInspectorView = nil
//    self.mSymbolPageView = nil
//    self.mSymbolPinLabelHorizontalAlignmentPopUpButton = nil
//    self.mSymbolPinLabelNameTextField = nil
//    self.mSymbolPinNumberHorizontalAlignmentPopUpButton = nil
//    self.mSymbolPinNumberIsVisibleInSchematicsSwitch = nil
//    self.mSymbolRootInspectorView = nil
//    self.mSymbolTextHorizontalAlignmentPopUpButton = nil
//    self.mSymbolTextValueTextField = nil
//    self.mSymbolZoomFlipInspectorView = nil
//    self.mTextInspectorView = nil
//    self.mVersionField = nil
//    self.mVerticalFlip = nil
//    self.mXPlacardUnitPopUpButton = nil
//    self.mYPlacardUnitPopUpButton = nil
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

