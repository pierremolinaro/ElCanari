//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------

@objc(FontDocument) class FontDocument : EBManagedXibDocument {

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

  final let documentFilePath_property = EBTransientProperty_String ()

  //····················································································································

  final var documentFilePath_property_selection : EBSelection <String> {
    return self.documentFilePath_property.selection
  }

  //····················································································································

  final var documentFilePath : String? {
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

  final let canDeleteCurrentCharacter_property = EBTransientProperty_Bool ()

  //····················································································································

  final var canDeleteCurrentCharacter_property_selection : EBSelection <Bool> {
    return self.canDeleteCurrentCharacter_property.selection
  }

  //····················································································································

  final var canDeleteCurrentCharacter : Bool? {
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

  final let noIssue_property = EBTransientProperty_Bool ()

  //····················································································································

  final var noIssue_property_selection : EBSelection <Bool> {
    return self.noIssue_property.selection
  }

  //····················································································································

  final var noIssue : Bool? {
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

  final let mStatusImage_property = EBTransientProperty_NSImage ()

  //····················································································································

  final var mStatusImage_property_selection : EBSelection <NSImage> {
    return self.mStatusImage_property.selection
  }

  //····················································································································

  final var mStatusImage : NSImage? {
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

  final let mStatusMessage_property = EBTransientProperty_String ()

  //····················································································································

  final var mStatusMessage_property_selection : EBSelection <String> {
    return self.mStatusMessage_property.selection
  }

  //····················································································································

  final var mStatusMessage : String? {
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

  final let mMetadataStatus_property = EBTransientProperty_MetadataStatus ()

  //····················································································································

  final var mMetadataStatus_property_selection : EBSelection <MetadataStatus> {
    return self.mMetadataStatus_property.selection
  }

  //····················································································································

  final var mMetadataStatus : MetadataStatus? {
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
    let start = Date ()
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
    if LOG_OPERATION_DURATION {
      let durationMS = Int (Date ().timeIntervalSince (start) * 1000.0)
      Swift.print ("Check outlet connections \(durationMS) ms")
    }
  }
  
  //····················································································································
  
  final private func configureProperties () {
    let start = Date ()
    var opIdx = 0
  //--- Array controller property: mSelectedCharacterController
    self.mSelectedCharacterController.bind_model (self.rootObject.characters_property, self.ebUndoManager)
    if LOG_OPERATION_DURATION {
      Swift.print ("  op\(opIdx) \(Int (Date ().timeIntervalSince (start) * 1000.0)) ms")
      opIdx += 1
    }
  //--- Selection controller property: mCharacterSelection
    self.mCharacterSelection.bind_selection (model: self.mSelectedCharacterController.selectedArray_property)
    if LOG_OPERATION_DURATION {
      Swift.print ("  op\(opIdx) \(Int (Date ().timeIntervalSince (start) * 1000.0)) ms")
      opIdx += 1
    }
    if LOG_OPERATION_DURATION {
      Swift.print ("  op\(opIdx) \(Int (Date ().timeIntervalSince (start) * 1000.0)) ms")
      opIdx += 1
    }
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
    if LOG_OPERATION_DURATION {
      Swift.print ("  op\(opIdx) \(Int (Date ().timeIntervalSince (start) * 1000.0)) ms")
      opIdx += 1
    }
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
    if LOG_OPERATION_DURATION {
      Swift.print ("  op\(opIdx) \(Int (Date ().timeIntervalSince (start) * 1000.0)) ms")
      opIdx += 1
    }
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
    if LOG_OPERATION_DURATION {
      Swift.print ("  op\(opIdx) \(Int (Date ().timeIntervalSince (start) * 1000.0)) ms")
      opIdx += 1
    }
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
    if LOG_OPERATION_DURATION {
      Swift.print ("  op\(opIdx) \(Int (Date ().timeIntervalSince (start) * 1000.0)) ms")
      opIdx += 1
    }
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
    if LOG_OPERATION_DURATION {
      Swift.print ("  op\(opIdx) \(Int (Date ().timeIntervalSince (start) * 1000.0)) ms")
      opIdx += 1
    }
    if LOG_OPERATION_DURATION {
      let durationMS = Int (Date ().timeIntervalSince (start) * 1000.0)
      Swift.print ("Configure properties \(durationMS) ms")
    }
  }

  //····················································································································
  
  final private func installBindings () {
    let start = Date ()
  //--------------------------- Install table view bindings
  //--------------------------- Install ebView bindings
  //--------------------------- Install regular bindings
    self.mPageSegmentedControl?.bind_selectedPage (self.rootObject.selectedTab_property)
    self.mSignatureTextField?.bind_signature (self.signatureObserver_property)
    self.mVersionField?.bind_version (self.versionObserver_property)
    self.mVersionField?.bind_versionShouldChange (self.versionShouldChangeObserver_property)
    self.mInspectorSegmentedControl?.bind_selectedPage (self.rootObject.selectedInspector_property)
    self.advancementTextField?.bind_value (self.mCharacterSelection.advance_property, sendContinously:true, autoFormatter:true)
    self.advancementSlider?.bind_intValue (self.mCharacterSelection.advance_property, sendContinously:true)
    self.transparencyTextField?.bind_value (preferences_fontEditionTransparency_property, sendContinously:false, autoFormatter:false)
    self.transparencySlider?.bind_doubleValue (preferences_fontEditionTransparency_property, sendContinously:true)
    self.mWarnsWhenNoSegmentCheckbox?.bind_value (self.mCharacterSelection.mWarnsWhenNoSegment_property)
    self.mWarnsWhenAdvanceIsZeroCheckbox?.bind_value (self.mCharacterSelection.mWarnsWhenAdvanceIsZero_property)
    self.mFontNominalSizeTextField?.bind_value (self.rootObject.nominalSize_property, sendContinously:false, autoFormatter:false)
    self.mFontCharacterSelectButton?.bind_codePoint (self.rootObject.currentCharacterCodePoint_property)
    self.mFontCharacterSelectButton?.bind_characters (self.rootObject.definedCharacters_property)
    self.mCurrentCharacterTextField?.bind_valueObserver (self.rootObject.currentCharacterCodePointString_property)
    self.currentCharacterStepper?.bind_value (self.rootObject.currentCharacterCodePoint_property, sendContinously:true)
    self.mShowGerberDrawingFlowCheckbox?.bind_value (preferences_showGerberDrawingFlow_property)
    self.mShowGerberDrawingIndexesCheckbox?.bind_value (preferences_showGerberDrawingIndexes_property)
    self.gerberCodeInstructionCountMessageTextField?.bind_valueObserver (self.mCharacterSelection.gerberCodeInstructionCountMessage_property)
    self.mGerberCodeTableView?.bind_characterGerberCode (self.mCharacterSelection.gerberCode_property)
    self.mSampleStringField?.bind_value (preferences_sampleString_property, sendContinously:true)
    self.mFontSampleStringView?.bind_bezierPath (self.rootObject.sampleStringBezierPath_property)
    self.mSampleStringSizeField?.bind_value (preferences_sampleStringSize_property, sendContinously:false, autoFormatter:false)
    self.mSampleStringWidthTextField?.bind_valueObserver (self.rootObject.sampleStringBezierPathWidth_property)
    self.mSampleStringAscentTextField?.bind_valueObserver (self.rootObject.sampleStringBezierPathAscent_property)
    self.mSampleStringDescentTextField?.bind_valueObserver (self.rootObject.sampleStringBezierPathDescent_property)
    self.currentCharacterView?.bind_advance (self.mCharacterSelection.advance_property)
    self.currentCharacterView?.bind_characterSegmentList (self.mCharacterSelection.segmentArrayForDrawing_property)
    self.currentCharacterView?.bind_transparency (preferences_fontEditionTransparency_property)
    self.currentCharacterView?.bind_displayFlow (preferences_showGerberDrawingFlow_property)
    self.currentCharacterView?.bind_displayDrawingIndexes (preferences_showGerberDrawingIndexes_property)
    self.mIssueTableView?.bind_issues (self.rootObject.issues_property)
    self.mStatusImageViewInToolbar?.bind_image (self.mStatusImage_property)
    self.mStatusImageViewInToolbar?.bind_tooltip (self.mStatusMessage_property)
    self.mIssueTextField?.bind_valueObserver (self.mStatusMessage_property)
    self.commentTextView?.bind_value (self.rootObject.comments_property)
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
    if LOG_OPERATION_DURATION {
      let durationMS = Int (Date ().timeIntervalSince (start) * 1000.0)
      Swift.print ("Install bindings \(durationMS) ms")
    }
  }

  //····················································································································
  
  final private func setTargetsAndActions () {
     let start = Date ()
   //--------------------------- Set targets / actions
    self.mAddCharacterButton?.target = self
    self.mAddCharacterButton?.action = #selector (FontDocument.addCharacterAction (_:))
    self.mDeleteCurrentCharacterButton?.target = self
    self.mDeleteCurrentCharacterButton?.action = #selector (FontDocument.deleteCurrentCharacterAction (_:))
    self.mAddSegmentButton?.target = self
    self.mAddSegmentButton?.action = #selector (FontDocument.addSegmentAction (_:))
    self.resetVersionAndSignatureButton?.target = self
    self.resetVersionAndSignatureButton?.action = #selector (FontDocument.resetVersionAndSignatureAction (_:))
    if LOG_OPERATION_DURATION {
      let durationMS = Int (Date ().timeIntervalSince (start) * 1000.0)
      Swift.print ("Set target and actions \(durationMS) ms")
    }
  }

  //····················································································································
  //    windowControllerDidLoadNib
  //····················································································································

  override func windowControllerDidLoadNib (_ aController: NSWindowController) {
    super.windowControllerDidLoadNib (aController)
    self.checkOutletConnections ()
    self.configureProperties ()
    self.installBindings ()
    self.setTargetsAndActions ()
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
    // self.rootObject.definedCharacters_property.removeEBObserver (self.canDeleteCurrentCharacter_property)
    // self.rootObject.issues_property.removeEBObserver (self.noIssue_property)
    // self.rootObject.issues_property.removeEBObserver (self.mStatusImage_property)
    // self.rootObject.issues_property.removeEBObserver (self.mStatusMessage_property)
    // self.rootObject.issues_property.removeEBObserver (self.mMetadataStatus_property)
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

//----------------------------------------------------------------------------------------------------------------------

