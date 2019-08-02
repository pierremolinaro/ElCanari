//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

@objc(FontDocument) class FontDocument : EBManagedDocument {

  //····················································································································
  //   Array controller: mSelectedCharacterController
  //····················································································································

  var mSelectedCharacterController = Controller_FontDocument_mSelectedCharacterController ()

  //····················································································································
  //   Selection controller: mCharacterSelection
  //····················································································································

  var mCharacterSelection = SelectionController_FontDocument_mCharacterSelection ()

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
  //   Transient property: canDeleteCurrentCharacter
  //····················································································································

  let canDeleteCurrentCharacter_property = EBTransientProperty_Bool ()

  //····················································································································

  var canDeleteCurrentCharacter_property_selection : EBSelection <Bool> {
    return self.canDeleteCurrentCharacter_property.prop
  }

  //····················································································································

  var canDeleteCurrentCharacter : Bool? {
    switch self.canDeleteCurrentCharacter_property_selection {
    case .empty, .multiple :
      return nil
    case .single (let v) :
      return v
    }
  }

  //····················································································································
  //   Transient property: noIssue
  //····················································································································

  let noIssue_property = EBTransientProperty_Bool ()

  //····················································································································

  var noIssue_property_selection : EBSelection <Bool> {
    return self.noIssue_property.prop
  }

  //····················································································································

  var noIssue : Bool? {
    switch self.noIssue_property_selection {
    case .empty, .multiple :
      return nil
    case .single (let v) :
      return v
    }
  }

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
  //    Outlets
  //····················································································································

  @IBOutlet var advancementSlider : EBSlider? = nil
  @IBOutlet var advancementTextField : EBIntField? = nil
  @IBOutlet var commentTextView : EBTextView? = nil
  @IBOutlet var currentCharacterStepper : EBStepper? = nil
  @IBOutlet var currentCharacterView : CanariCharacterView? = nil
  @IBOutlet var gerberCodeInstructionCountMessageTextField : EBTextObserverField? = nil
  @IBOutlet var mAddCharacterButton : EBButton? = nil
  @IBOutlet var mAddSegmentButton : EBButton? = nil
  @IBOutlet var mCharacterIssuesInspectorView : CanariViewWithKeyView? = nil
  @IBOutlet var mCurrentCharacterTextField : EBTextObserverField? = nil
  @IBOutlet var mDeleteCurrentCharacterButton : EBButton? = nil
  @IBOutlet var mFontCharacterSelectButton : FontCharacterSelectButton? = nil
  @IBOutlet var mFontNominalSizeTextField : EBIntField? = nil
  @IBOutlet var mFontPageView : CanariViewWithKeyView? = nil
  @IBOutlet var mFontSampleStringView : CanariFontSampleStringView? = nil
  @IBOutlet var mGerberCodeTableView : CanariCharacterGerberCodeTableView? = nil
  @IBOutlet var mInfosPageView : CanariViewWithKeyView? = nil
  @IBOutlet var mInspectorSegmentedControl : CanariSegmentedControl? = nil
  @IBOutlet var mIssueTableView : CanariIssueTableView? = nil
  @IBOutlet var mIssueTextField : EBTextObserverField? = nil
  @IBOutlet var mMasterFontPageView : NSView? = nil
  @IBOutlet var mMasterView : NSView? = nil
  @IBOutlet var mNewCharacterPanel : NSPanel? = nil
  @IBOutlet var mNewCharacterView : NewCharacterView? = nil
  @IBOutlet var mPageSegmentedControl : CanariSegmentedControl? = nil
  @IBOutlet var mSampleStringAscentTextField : EBTextObserverField? = nil
  @IBOutlet var mSampleStringDescentTextField : EBTextObserverField? = nil
  @IBOutlet var mSampleStringField : EBTextField? = nil
  @IBOutlet var mSampleStringInspectorView : CanariViewWithKeyView? = nil
  @IBOutlet var mSampleStringSizeField : EBDoubleField? = nil
  @IBOutlet var mSampleStringWidthTextField : EBTextObserverField? = nil
  @IBOutlet var mSelectedCharacterInspectorView : CanariViewWithKeyView? = nil
  @IBOutlet var mShowGerberDrawingFlowCheckbox : EBSwitch? = nil
  @IBOutlet var mShowGerberDrawingIndexesCheckbox : EBSwitch? = nil
  @IBOutlet var mSignatureTextField : CanariSignatureField? = nil
  @IBOutlet var mStatusImageViewInToolbar : EBImageObserverView? = nil
  @IBOutlet var mVersionField : CanariVersionField? = nil
  @IBOutlet var mWarnsWhenAdvanceIsZeroCheckbox : EBSwitch? = nil
  @IBOutlet var mWarnsWhenNoSegmentCheckbox : EBSwitch? = nil
  @IBOutlet var resetVersionAndSignatureButton : EBButton? = nil
  @IBOutlet var transparencySlider : EBSlider? = nil
  @IBOutlet var transparencyTextField : EBDoubleField? = nil

  //····················································································································
  //    Multiple bindings controllers
  //····················································································································

  var mController_mDeleteCurrentCharacterButton_enabled : MultipleBindingController_enabled? = nil
  var mController_mIssueTableView_hidden : MultipleBindingController_hidden? = nil

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
  //--- Array controller property: mSelectedCharacterController
    self.mSelectedCharacterController.addExplorer (name: "mSelectedCharacterController", y:&y, view:view)
  //--- Selection controller property: mCharacterSelection
    self.mCharacterSelection.addExplorer (name: "mCharacterSelection", y:&y, view:view)
  //---
    super.populateExplorerWindow (&y, view:view)
  }

  //····················································································································
  //    windowNibName
  //····················································································································

  override var windowNibName : NSNib.Name? {
    return NSNib.Name ("FontDocument")
  }
  
  //····················································································································
  //    rootEntityClassName
  //····················································································································

  override func rootEntityClassName () -> String {
    return "FontRoot"
  }

  //····················································································································
  //    rootObject
  //····················································································································

  var rootObject : FontRoot { return self.mRootObject as! FontRoot }

  //····················································································································
  //    check outlet connections
  //····················································································································

  private func checkOutletConnections () {
    checkOutletConnection (self.advancementSlider, "advancementSlider", EBSlider.self, #file, #line)
    checkOutletConnection (self.advancementTextField, "advancementTextField", EBIntField.self, #file, #line)
    checkOutletConnection (self.commentTextView, "commentTextView", EBTextView.self, #file, #line)
    checkOutletConnection (self.currentCharacterStepper, "currentCharacterStepper", EBStepper.self, #file, #line)
    checkOutletConnection (self.currentCharacterView, "currentCharacterView", CanariCharacterView.self, #file, #line)
    checkOutletConnection (self.gerberCodeInstructionCountMessageTextField, "gerberCodeInstructionCountMessageTextField", EBTextObserverField.self, #file, #line)
    checkOutletConnection (self.mAddCharacterButton, "mAddCharacterButton", EBButton.self, #file, #line)
    checkOutletConnection (self.mAddSegmentButton, "mAddSegmentButton", EBButton.self, #file, #line)
    checkOutletConnection (self.mCharacterIssuesInspectorView, "mCharacterIssuesInspectorView", CanariViewWithKeyView.self, #file, #line)
    checkOutletConnection (self.mCurrentCharacterTextField, "mCurrentCharacterTextField", EBTextObserverField.self, #file, #line)
    checkOutletConnection (self.mDeleteCurrentCharacterButton, "mDeleteCurrentCharacterButton", EBButton.self, #file, #line)
    checkOutletConnection (self.mFontCharacterSelectButton, "mFontCharacterSelectButton", FontCharacterSelectButton.self, #file, #line)
    checkOutletConnection (self.mFontNominalSizeTextField, "mFontNominalSizeTextField", EBIntField.self, #file, #line)
    checkOutletConnection (self.mFontPageView, "mFontPageView", CanariViewWithKeyView.self, #file, #line)
    checkOutletConnection (self.mFontSampleStringView, "mFontSampleStringView", CanariFontSampleStringView.self, #file, #line)
    checkOutletConnection (self.mGerberCodeTableView, "mGerberCodeTableView", CanariCharacterGerberCodeTableView.self, #file, #line)
    checkOutletConnection (self.mInfosPageView, "mInfosPageView", CanariViewWithKeyView.self, #file, #line)
    checkOutletConnection (self.mInspectorSegmentedControl, "mInspectorSegmentedControl", CanariSegmentedControl.self, #file, #line)
    checkOutletConnection (self.mIssueTableView, "mIssueTableView", CanariIssueTableView.self, #file, #line)
    checkOutletConnection (self.mIssueTextField, "mIssueTextField", EBTextObserverField.self, #file, #line)
    checkOutletConnection (self.mMasterFontPageView, "mMasterFontPageView", NSView.self, #file, #line)
    checkOutletConnection (self.mMasterView, "mMasterView", NSView.self, #file, #line)
    checkOutletConnection (self.mNewCharacterPanel, "mNewCharacterPanel", NSPanel.self, #file, #line)
    checkOutletConnection (self.mNewCharacterView, "mNewCharacterView", NewCharacterView.self, #file, #line)
    checkOutletConnection (self.mPageSegmentedControl, "mPageSegmentedControl", CanariSegmentedControl.self, #file, #line)
    checkOutletConnection (self.mSampleStringAscentTextField, "mSampleStringAscentTextField", EBTextObserverField.self, #file, #line)
    checkOutletConnection (self.mSampleStringDescentTextField, "mSampleStringDescentTextField", EBTextObserverField.self, #file, #line)
    checkOutletConnection (self.mSampleStringField, "mSampleStringField", EBTextField.self, #file, #line)
    checkOutletConnection (self.mSampleStringInspectorView, "mSampleStringInspectorView", CanariViewWithKeyView.self, #file, #line)
    checkOutletConnection (self.mSampleStringSizeField, "mSampleStringSizeField", EBDoubleField.self, #file, #line)
    checkOutletConnection (self.mSampleStringWidthTextField, "mSampleStringWidthTextField", EBTextObserverField.self, #file, #line)
    checkOutletConnection (self.mSelectedCharacterInspectorView, "mSelectedCharacterInspectorView", CanariViewWithKeyView.self, #file, #line)
    checkOutletConnection (self.mShowGerberDrawingFlowCheckbox, "mShowGerberDrawingFlowCheckbox", EBSwitch.self, #file, #line)
    checkOutletConnection (self.mShowGerberDrawingIndexesCheckbox, "mShowGerberDrawingIndexesCheckbox", EBSwitch.self, #file, #line)
    checkOutletConnection (self.mSignatureTextField, "mSignatureTextField", CanariSignatureField.self, #file, #line)
    checkOutletConnection (self.mStatusImageViewInToolbar, "mStatusImageViewInToolbar", EBImageObserverView.self, #file, #line)
    checkOutletConnection (self.mVersionField, "mVersionField", CanariVersionField.self, #file, #line)
    checkOutletConnection (self.mWarnsWhenAdvanceIsZeroCheckbox, "mWarnsWhenAdvanceIsZeroCheckbox", EBSwitch.self, #file, #line)
    checkOutletConnection (self.mWarnsWhenNoSegmentCheckbox, "mWarnsWhenNoSegmentCheckbox", EBSwitch.self, #file, #line)
    checkOutletConnection (self.resetVersionAndSignatureButton, "resetVersionAndSignatureButton", EBButton.self, #file, #line)
    checkOutletConnection (self.transparencySlider, "transparencySlider", EBSlider.self, #file, #line)
    checkOutletConnection (self.transparencyTextField, "transparencyTextField", EBDoubleField.self, #file, #line)
   }
  
  //····················································································································
  //    windowControllerDidLoadNib
  //····················································································································

  override func windowControllerDidLoadNib (_ aController: NSWindowController) {
    super.windowControllerDidLoadNib (aController)
  //--------------------------- Outlet checking
    self.checkOutletConnections ()
  //--- Array controller property: mSelectedCharacterController
    self.mSelectedCharacterController.bind_model (self.rootObject.characters_property, self.ebUndoManager)
  //--- Selection controller property: mCharacterSelection
    self.mCharacterSelection.bind_selection (model: self.mSelectedCharacterController.selectedArray_property, file: #file, line: #line)
  //--- Atomic property: canDeleteCurrentCharacter
    self.canDeleteCurrentCharacter_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        let kind = unwSelf.rootObject.definedCharacters_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.rootObject.definedCharacters_property_selection) {
          case (.single (let v0)) :
            return .single (transient_FontDocument_canDeleteCurrentCharacter (v0))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.rootObject.definedCharacters_property.addEBObserver (self.canDeleteCurrentCharacter_property)
  //--- Atomic property: noIssue
    self.noIssue_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        let kind = unwSelf.rootObject.issues_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.rootObject.issues_property_selection) {
          case (.single (let v0)) :
            return .single (transient_FontDocument_noIssue (v0))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.rootObject.issues_property.addEBObserver (self.noIssue_property)
  //--- Atomic property: mStatusImage
    self.mStatusImage_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        let kind = unwSelf.rootObject.issues_property_selection.kind ()
        switch kind {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.rootObject.issues_property_selection) {
          case (.single (let v0)) :
            return .single (transient_FontDocument_mStatusImage (v0))
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
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.rootObject.issues_property_selection) {
          case (.single (let v0)) :
            return .single (transient_FontDocument_mStatusMessage (v0))
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
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single :
          switch (unwSelf.rootObject.issues_property_selection) {
          case (.single (let v0)) :
            return .single (transient_FontDocument_mMetadataStatus (v0))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.rootObject.issues_property.addEBObserver (self.mMetadataStatus_property)
  //--------------------------- Install regular bindings
    self.mPageSegmentedControl?.bind_selectedPage (self.rootObject.selectedTab_property, file: #file, line: #line)
    self.mSignatureTextField?.bind_signature (self.signatureObserver_property, file: #file, line: #line)
    self.mVersionField?.bind_version (self.versionObserver_property, file: #file, line: #line)
    self.mVersionField?.bind_versionShouldChange (self.versionShouldChangeObserver_property, file: #file, line: #line)
    self.mInspectorSegmentedControl?.bind_selectedPage (self.rootObject.selectedInspector_property, file: #file, line: #line)
    self.advancementTextField?.bind_value (self.mCharacterSelection.advance_property, file: #file, line: #line, sendContinously:true, autoFormatter:true)
    self.advancementSlider?.bind_intValue (self.mCharacterSelection.advance_property, file: #file, line: #line, sendContinously:true)
    self.transparencyTextField?.bind_value (g_Preferences!.fontEditionTransparency_property, file: #file, line: #line, sendContinously:false, autoFormatter:false)
    self.transparencySlider?.bind_doubleValue (g_Preferences!.fontEditionTransparency_property, file: #file, line: #line, sendContinously:true)
    self.mWarnsWhenNoSegmentCheckbox?.bind_value (self.mCharacterSelection.mWarnsWhenNoSegment_property, file: #file, line: #line)
    self.mWarnsWhenAdvanceIsZeroCheckbox?.bind_value (self.mCharacterSelection.mWarnsWhenAdvanceIsZero_property, file: #file, line: #line)
    self.mFontNominalSizeTextField?.bind_value (self.rootObject.nominalSize_property, file: #file, line: #line, sendContinously:false, autoFormatter:false)
    self.mFontCharacterSelectButton?.bind_codePoint (self.rootObject.currentCharacterCodePoint_property, file: #file, line: #line)
    self.mFontCharacterSelectButton?.bind_characters (self.rootObject.definedCharacters_property, file: #file, line: #line)
    self.mCurrentCharacterTextField?.bind_valueObserver (self.rootObject.currentCharacterCodePointString_property, file: #file, line: #line)
    self.currentCharacterStepper?.bind_value (self.rootObject.currentCharacterCodePoint_property, file: #file, line: #line, sendContinously:true)
    self.mShowGerberDrawingFlowCheckbox?.bind_value (g_Preferences!.showGerberDrawingFlow_property, file: #file, line: #line)
    self.mShowGerberDrawingIndexesCheckbox?.bind_value (g_Preferences!.showGerberDrawingIndexes_property, file: #file, line: #line)
    self.gerberCodeInstructionCountMessageTextField?.bind_valueObserver (self.mCharacterSelection.gerberCodeInstructionCountMessage_property, file: #file, line: #line)
    self.mGerberCodeTableView?.bind_characterGerberCode (self.mCharacterSelection.gerberCode_property, file: #file, line: #line)
    self.mSampleStringField?.bind_value (g_Preferences!.sampleString_property, file: #file, line: #line, sendContinously:true)
    self.mFontSampleStringView?.bind_bezierPath (self.rootObject.sampleStringBezierPath_property, file: #file, line: #line)
    self.mSampleStringSizeField?.bind_value (g_Preferences!.sampleStringSize_property, file: #file, line: #line, sendContinously:false, autoFormatter:false)
    self.mSampleStringWidthTextField?.bind_valueObserver (self.rootObject.sampleStringBezierPathWidth_property, file: #file, line: #line)
    self.mSampleStringAscentTextField?.bind_valueObserver (self.rootObject.sampleStringBezierPathAscent_property, file: #file, line: #line)
    self.mSampleStringDescentTextField?.bind_valueObserver (self.rootObject.sampleStringBezierPathDescent_property, file: #file, line: #line)
    self.currentCharacterView?.bind_advance (self.mCharacterSelection.advance_property, file: #file, line: #line)
    self.currentCharacterView?.bind_characterSegmentList (self.mCharacterSelection.segmentArrayForDrawing_property, file: #file, line: #line)
    self.currentCharacterView?.bind_transparency (g_Preferences!.fontEditionTransparency_property, file: #file, line: #line)
    self.currentCharacterView?.bind_displayFlow (g_Preferences!.showGerberDrawingFlow_property, file: #file, line: #line)
    self.currentCharacterView?.bind_displayDrawingIndexes (g_Preferences!.showGerberDrawingIndexes_property, file: #file, line: #line)
    self.mIssueTableView?.bind_issues (self.rootObject.issues_property, file: #file, line: #line)
    self.mStatusImageViewInToolbar?.bind_image (self.mStatusImage_property, file: #file, line: #line)
    self.mStatusImageViewInToolbar?.bind_tooltip (self.mStatusMessage_property, file: #file, line: #line)
    self.mIssueTextField?.bind_valueObserver (self.mStatusMessage_property, file: #file, line: #line)
    self.commentTextView?.bind_value (self.rootObject.comments_property, file: #file, line: #line)
  //--------------------------- Install multiple bindings
    do{
      let controller = MultipleBindingController_enabled (
        computeFunction: {
          return self.canDeleteCurrentCharacter_property_selection
        },
        outlet: self.mDeleteCurrentCharacterButton
      )
      self.canDeleteCurrentCharacter_property.addEBObserver (controller)
      self.mController_mDeleteCurrentCharacterButton_enabled = controller
    }
    do{
      let controller = MultipleBindingController_hidden (
        computeFunction: {
          return self.noIssue_property_selection
        },
        outlet: self.mIssueTableView
      )
      self.noIssue_property.addEBObserver (controller)
      self.mController_mIssueTableView_hidden = controller
    }
  //--------------------------- Set targets / actions
    self.mAddCharacterButton?.target = self
    self.mAddCharacterButton?.action = #selector (FontDocument.addCharacterAction (_:))
    self.mDeleteCurrentCharacterButton?.target = self
    self.mDeleteCurrentCharacterButton?.action = #selector (FontDocument.deleteCurrentCharacterAction (_:))
    self.mAddSegmentButton?.target = self
    self.mAddSegmentButton?.action = #selector (FontDocument.addSegmentAction (_:))
    self.resetVersionAndSignatureButton?.target = self
    self.resetVersionAndSignatureButton?.action = #selector (FontDocument.resetVersionAndSignatureAction (_:))
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
    self.advancementTextField?.unbind_value ()
    self.advancementSlider?.unbind_intValue ()
    self.transparencyTextField?.unbind_value ()
    self.transparencySlider?.unbind_doubleValue ()
    self.mWarnsWhenNoSegmentCheckbox?.unbind_value ()
    self.mWarnsWhenAdvanceIsZeroCheckbox?.unbind_value ()
    self.mFontNominalSizeTextField?.unbind_value ()
    self.mFontCharacterSelectButton?.unbind_codePoint ()
    self.mFontCharacterSelectButton?.unbind_characters ()
    self.mCurrentCharacterTextField?.unbind_valueObserver ()
    self.currentCharacterStepper?.unbind_value ()
    self.mShowGerberDrawingFlowCheckbox?.unbind_value ()
    self.mShowGerberDrawingIndexesCheckbox?.unbind_value ()
    self.gerberCodeInstructionCountMessageTextField?.unbind_valueObserver ()
    self.mGerberCodeTableView?.unbind_characterGerberCode ()
    self.mSampleStringField?.unbind_value ()
    self.mFontSampleStringView?.unbind_bezierPath ()
    self.mSampleStringSizeField?.unbind_value ()
    self.mSampleStringWidthTextField?.unbind_valueObserver ()
    self.mSampleStringAscentTextField?.unbind_valueObserver ()
    self.mSampleStringDescentTextField?.unbind_valueObserver ()
    self.currentCharacterView?.unbind_advance ()
    self.currentCharacterView?.unbind_characterSegmentList ()
    self.currentCharacterView?.unbind_transparency ()
    self.currentCharacterView?.unbind_displayFlow ()
    self.currentCharacterView?.unbind_displayDrawingIndexes ()
    self.mIssueTableView?.unbind_issues ()
    self.mStatusImageViewInToolbar?.unbind_image ()
    self.mStatusImageViewInToolbar?.unbind_tooltip ()
    self.mIssueTextField?.unbind_valueObserver ()
    self.commentTextView?.unbind_value ()
  //--------------------------- Unbind multiple bindings
    self.canDeleteCurrentCharacter_property.removeEBObserver (self.mController_mDeleteCurrentCharacterButton_enabled!)
    self.mController_mDeleteCurrentCharacterButton_enabled = nil
    self.noIssue_property.removeEBObserver (self.mController_mIssueTableView_hidden!)
    self.mController_mIssueTableView_hidden = nil
  //--------------------------- Unbind array controllers
  //--- Array controller property: mSelectedCharacterController
    self.mSelectedCharacterController.unbind_model ()
  //--- Selection controller property: mCharacterSelection
    self.mCharacterSelection.unbind_selection ()
    self.rootObject.definedCharacters_property.removeEBObserver (self.canDeleteCurrentCharacter_property)
    self.rootObject.issues_property.removeEBObserver (self.noIssue_property)
    self.rootObject.issues_property.removeEBObserver (self.mStatusImage_property)
    self.rootObject.issues_property.removeEBObserver (self.mStatusMessage_property)
    self.rootObject.issues_property.removeEBObserver (self.mMetadataStatus_property)
  //--------------------------- Remove targets / actions
    self.mAddCharacterButton?.target = nil
    self.mDeleteCurrentCharacterButton?.target = nil
    self.mAddSegmentButton?.target = nil
    self.resetVersionAndSignatureButton?.target = nil
  //--------------------------- Clean up outlets
    self.advancementSlider?.ebCleanUp ()
    self.advancementTextField?.ebCleanUp ()
    self.commentTextView?.ebCleanUp ()
    self.currentCharacterStepper?.ebCleanUp ()
    self.currentCharacterView?.ebCleanUp ()
    self.gerberCodeInstructionCountMessageTextField?.ebCleanUp ()
    self.mAddCharacterButton?.ebCleanUp ()
    self.mAddSegmentButton?.ebCleanUp ()
    self.mCharacterIssuesInspectorView?.ebCleanUp ()
    self.mCurrentCharacterTextField?.ebCleanUp ()
    self.mDeleteCurrentCharacterButton?.ebCleanUp ()
    self.mFontCharacterSelectButton?.ebCleanUp ()
    self.mFontNominalSizeTextField?.ebCleanUp ()
    self.mFontPageView?.ebCleanUp ()
    self.mFontSampleStringView?.ebCleanUp ()
    self.mGerberCodeTableView?.ebCleanUp ()
    self.mInfosPageView?.ebCleanUp ()
    self.mInspectorSegmentedControl?.ebCleanUp ()
    self.mIssueTableView?.ebCleanUp ()
    self.mIssueTextField?.ebCleanUp ()
    self.mMasterFontPageView?.ebCleanUp ()
    self.mMasterView?.ebCleanUp ()
    self.mNewCharacterPanel?.ebCleanUp ()
    self.mNewCharacterView?.ebCleanUp ()
    self.mPageSegmentedControl?.ebCleanUp ()
    self.mSampleStringAscentTextField?.ebCleanUp ()
    self.mSampleStringDescentTextField?.ebCleanUp ()
    self.mSampleStringField?.ebCleanUp ()
    self.mSampleStringInspectorView?.ebCleanUp ()
    self.mSampleStringSizeField?.ebCleanUp ()
    self.mSampleStringWidthTextField?.ebCleanUp ()
    self.mSelectedCharacterInspectorView?.ebCleanUp ()
    self.mShowGerberDrawingFlowCheckbox?.ebCleanUp ()
    self.mShowGerberDrawingIndexesCheckbox?.ebCleanUp ()
    self.mSignatureTextField?.ebCleanUp ()
    self.mStatusImageViewInToolbar?.ebCleanUp ()
    self.mVersionField?.ebCleanUp ()
    self.mWarnsWhenAdvanceIsZeroCheckbox?.ebCleanUp ()
    self.mWarnsWhenNoSegmentCheckbox?.ebCleanUp ()
    self.resetVersionAndSignatureButton?.ebCleanUp ()
    self.transparencySlider?.ebCleanUp ()
    self.transparencyTextField?.ebCleanUp ()
  //--------------------------- Detach outlets
    self.advancementSlider = nil
    self.advancementTextField = nil
    self.commentTextView = nil
    self.currentCharacterStepper = nil
    self.currentCharacterView = nil
    self.gerberCodeInstructionCountMessageTextField = nil
    self.mAddCharacterButton = nil
    self.mAddSegmentButton = nil
    self.mCharacterIssuesInspectorView = nil
    self.mCurrentCharacterTextField = nil
    self.mDeleteCurrentCharacterButton = nil
    self.mFontCharacterSelectButton = nil
    self.mFontNominalSizeTextField = nil
    self.mFontPageView = nil
    self.mFontSampleStringView = nil
    self.mGerberCodeTableView = nil
    self.mInfosPageView = nil
    self.mInspectorSegmentedControl = nil
    self.mIssueTableView = nil
    self.mIssueTextField = nil
    self.mMasterFontPageView = nil
    self.mMasterView = nil
    self.mNewCharacterPanel = nil
    self.mNewCharacterView = nil
    self.mPageSegmentedControl = nil
    self.mSampleStringAscentTextField = nil
    self.mSampleStringDescentTextField = nil
    self.mSampleStringField = nil
    self.mSampleStringInspectorView = nil
    self.mSampleStringSizeField = nil
    self.mSampleStringWidthTextField = nil
    self.mSelectedCharacterInspectorView = nil
    self.mShowGerberDrawingFlowCheckbox = nil
    self.mShowGerberDrawingIndexesCheckbox = nil
    self.mSignatureTextField = nil
    self.mStatusImageViewInToolbar = nil
    self.mVersionField = nil
    self.mWarnsWhenAdvanceIsZeroCheckbox = nil
    self.mWarnsWhenNoSegmentCheckbox = nil
    self.resetVersionAndSignatureButton = nil
    self.transparencySlider = nil
    self.transparencyTextField = nil
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

