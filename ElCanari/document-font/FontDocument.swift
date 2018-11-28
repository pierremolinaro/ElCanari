//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

@objc(FontDocument) class FontDocument : EBManagedDocument {

  //····················································································································
  //   Array controller: mSelectedCharacterController
  //····················································································································

  var mSelectedCharacterController = ArrayController_FontDocument_mSelectedCharacterController ()

  //····················································································································
  //   Selection controller: mCharacterSelection
  //····················································································································

  var mCharacterSelection = SelectionController_FontDocument_mCharacterSelection ()

  //····················································································································
  //   Transient property: documentFilePath
  //····················································································································

  var documentFilePath_property = EBTransientProperty_String ()

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

  @IBOutlet var advancementSlider : EBSlider?
  @IBOutlet var advancementTextField : EBIntField?
  @IBOutlet var commentTextView : EBTextView?
  @IBOutlet var currentCharacterStepper : EBStepper?
  @IBOutlet var currentCharacterView : CanariCharacterView?
  @IBOutlet var gerberCodeInstructionCountMessageTextField : EBTextObserverField?
  @IBOutlet var mAddCharacterButton : EBButton?
  @IBOutlet var mAddSegmentButton : EBButton?
  @IBOutlet var mCurrentCharacterTextField : EBTextObserverField?
  @IBOutlet var mFontCharacterSelectButton : CanariFontCharacterSelectButton?
  @IBOutlet var mFontNominalSizeTextField : EBIntField?
  @IBOutlet var mFontPageView : CanariViewWithKeyView?
  @IBOutlet var mFontSampleStringView : CanariFontSampleStringView?
  @IBOutlet var mGerberCodeTableView : CanariCharacterGerberCodeTableView?
  @IBOutlet var mInfosPageView : CanariViewWithKeyView?
  @IBOutlet var mInspectorSegmentedControl : CanariSegmentedControl?
  @IBOutlet var mMasterFontPageView : NSView?
  @IBOutlet var mMasterView : NSView?
  @IBOutlet var mNewCharacterPanel : NSPanel?
  @IBOutlet var mNewCharacterView : NewCharacterView?
  @IBOutlet var mPageSegmentedControl : CanariSegmentedControl?
  @IBOutlet var mSampleStringAscentTextField : EBTextObserverField?
  @IBOutlet var mSampleStringDescentTextField : EBTextObserverField?
  @IBOutlet var mSampleStringField : EBTextField?
  @IBOutlet var mSampleStringInspectorView : CanariViewWithKeyView?
  @IBOutlet var mSampleStringSizeField : EBDoubleField?
  @IBOutlet var mSampleStringWidthTextField : EBTextObserverField?
  @IBOutlet var mSelectedCharacterInspectorView : CanariViewWithKeyView?
  @IBOutlet var mShowGerberDrawingFlowCheckbox : EBSwitch?
  @IBOutlet var mShowGerberDrawingIndexesCheckbox : EBSwitch?
  @IBOutlet var mSignatureTextField : CanariSignatureField?
  @IBOutlet var mVersionField : CanariVersionField?
  @IBOutlet var resetVersionAndSignatureButton : EBButton?
  @IBOutlet var transparencySlider : EBSlider?
  @IBOutlet var transparencyTextField : EBDoubleField?

  //····················································································································
  //    Multiple bindings controllers
  //····················································································································


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

  override var windowNibName : NSNib.Name {
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

  var rootObject : FontRoot { get { return mRootObject as! FontRoot } }

  //····················································································································
  //    windowControllerDidLoadNib
  //····················································································································

  override func windowControllerDidLoadNib (_ aController: NSWindowController) {
  //--------------------------- Outlet checking
    if let outlet : Any = self.advancementSlider {
      if !(outlet is EBSlider) {
        presentErrorWindow (
          file: #file,
          line: #line,
          errorMessage: "the 'advancementSlider' outlet is not an instance of 'EBSlider'"
        )
      }
    }else{
      presentErrorWindow (
        file: #file,
        line: #line,
        errorMessage: "the 'advancementSlider' outlet is nil"
      )
    }
    if let outlet : Any = self.advancementTextField {
      if !(outlet is EBIntField) {
        presentErrorWindow (
          file: #file,
          line: #line,
          errorMessage: "the 'advancementTextField' outlet is not an instance of 'EBIntField'"
        )
      }
    }else{
      presentErrorWindow (
        file: #file,
        line: #line,
        errorMessage: "the 'advancementTextField' outlet is nil"
      )
    }
    if let outlet : Any = self.commentTextView {
      if !(outlet is EBTextView) {
        presentErrorWindow (
          file: #file,
          line: #line,
          errorMessage: "the 'commentTextView' outlet is not an instance of 'EBTextView'"
        )
      }
    }else{
      presentErrorWindow (
        file: #file,
        line: #line,
        errorMessage: "the 'commentTextView' outlet is nil"
      )
    }
    if let outlet : Any = self.currentCharacterStepper {
      if !(outlet is EBStepper) {
        presentErrorWindow (
          file: #file,
          line: #line,
          errorMessage: "the 'currentCharacterStepper' outlet is not an instance of 'EBStepper'"
        )
      }
    }else{
      presentErrorWindow (
        file: #file,
        line: #line,
        errorMessage: "the 'currentCharacterStepper' outlet is nil"
      )
    }
    if let outlet : Any = self.currentCharacterView {
      if !(outlet is CanariCharacterView) {
        presentErrorWindow (
          file: #file,
          line: #line,
          errorMessage: "the 'currentCharacterView' outlet is not an instance of 'CanariCharacterView'"
        )
      }
    }else{
      presentErrorWindow (
        file: #file,
        line: #line,
        errorMessage: "the 'currentCharacterView' outlet is nil"
      )
    }
    if let outlet : Any = self.gerberCodeInstructionCountMessageTextField {
      if !(outlet is EBTextObserverField) {
        presentErrorWindow (
          file: #file,
          line: #line,
          errorMessage: "the 'gerberCodeInstructionCountMessageTextField' outlet is not an instance of 'EBTextObserverField'"
        )
      }
    }else{
      presentErrorWindow (
        file: #file,
        line: #line,
        errorMessage: "the 'gerberCodeInstructionCountMessageTextField' outlet is nil"
      )
    }
    if let outlet : Any = self.mAddCharacterButton {
      if !(outlet is EBButton) {
        presentErrorWindow (
          file: #file,
          line: #line,
          errorMessage: "the 'mAddCharacterButton' outlet is not an instance of 'EBButton'"
        )
      }
    }else{
      presentErrorWindow (
        file: #file,
        line: #line,
        errorMessage: "the 'mAddCharacterButton' outlet is nil"
      )
    }
    if let outlet : Any = self.mAddSegmentButton {
      if !(outlet is EBButton) {
        presentErrorWindow (
          file: #file,
          line: #line,
          errorMessage: "the 'mAddSegmentButton' outlet is not an instance of 'EBButton'"
        )
      }
    }else{
      presentErrorWindow (
        file: #file,
        line: #line,
        errorMessage: "the 'mAddSegmentButton' outlet is nil"
      )
    }
    if let outlet : Any = self.mCurrentCharacterTextField {
      if !(outlet is EBTextObserverField) {
        presentErrorWindow (
          file: #file,
          line: #line,
          errorMessage: "the 'mCurrentCharacterTextField' outlet is not an instance of 'EBTextObserverField'"
        )
      }
    }else{
      presentErrorWindow (
        file: #file,
        line: #line,
        errorMessage: "the 'mCurrentCharacterTextField' outlet is nil"
      )
    }
    if let outlet : Any = self.mFontCharacterSelectButton {
      if !(outlet is CanariFontCharacterSelectButton) {
        presentErrorWindow (
          file: #file,
          line: #line,
          errorMessage: "the 'mFontCharacterSelectButton' outlet is not an instance of 'CanariFontCharacterSelectButton'"
        )
      }
    }else{
      presentErrorWindow (
        file: #file,
        line: #line,
        errorMessage: "the 'mFontCharacterSelectButton' outlet is nil"
      )
    }
    if let outlet : Any = self.mFontNominalSizeTextField {
      if !(outlet is EBIntField) {
        presentErrorWindow (
          file: #file,
          line: #line,
          errorMessage: "the 'mFontNominalSizeTextField' outlet is not an instance of 'EBIntField'"
        )
      }
    }else{
      presentErrorWindow (
        file: #file,
        line: #line,
        errorMessage: "the 'mFontNominalSizeTextField' outlet is nil"
      )
    }
    if let outlet : Any = self.mFontPageView {
      if !(outlet is CanariViewWithKeyView) {
        presentErrorWindow (
          file: #file,
          line: #line,
          errorMessage: "the 'mFontPageView' outlet is not an instance of 'CanariViewWithKeyView'"
        )
      }
    }else{
      presentErrorWindow (
        file: #file,
        line: #line,
        errorMessage: "the 'mFontPageView' outlet is nil"
      )
    }
    if let outlet : Any = self.mFontSampleStringView {
      if !(outlet is CanariFontSampleStringView) {
        presentErrorWindow (
          file: #file,
          line: #line,
          errorMessage: "the 'mFontSampleStringView' outlet is not an instance of 'CanariFontSampleStringView'"
        )
      }
    }else{
      presentErrorWindow (
        file: #file,
        line: #line,
        errorMessage: "the 'mFontSampleStringView' outlet is nil"
      )
    }
    if let outlet : Any = self.mGerberCodeTableView {
      if !(outlet is CanariCharacterGerberCodeTableView) {
        presentErrorWindow (
          file: #file,
          line: #line,
          errorMessage: "the 'mGerberCodeTableView' outlet is not an instance of 'CanariCharacterGerberCodeTableView'"
        )
      }
    }else{
      presentErrorWindow (
        file: #file,
        line: #line,
        errorMessage: "the 'mGerberCodeTableView' outlet is nil"
      )
    }
    if let outlet : Any = self.mInfosPageView {
      if !(outlet is CanariViewWithKeyView) {
        presentErrorWindow (
          file: #file,
          line: #line,
          errorMessage: "the 'mInfosPageView' outlet is not an instance of 'CanariViewWithKeyView'"
        )
      }
    }else{
      presentErrorWindow (
        file: #file,
        line: #line,
        errorMessage: "the 'mInfosPageView' outlet is nil"
      )
    }
    if let outlet : Any = self.mInspectorSegmentedControl {
      if !(outlet is CanariSegmentedControl) {
        presentErrorWindow (
          file: #file,
          line: #line,
          errorMessage: "the 'mInspectorSegmentedControl' outlet is not an instance of 'CanariSegmentedControl'"
        )
      }
    }else{
      presentErrorWindow (
        file: #file,
        line: #line,
        errorMessage: "the 'mInspectorSegmentedControl' outlet is nil"
      )
    }
    if let outlet : Any = self.mMasterFontPageView {
      if !(outlet is NSView) {
        presentErrorWindow (
          file: #file,
          line: #line,
          errorMessage: "the 'mMasterFontPageView' outlet is not an instance of 'NSView'"
        )
      }
    }else{
      presentErrorWindow (
        file: #file,
        line: #line,
        errorMessage: "the 'mMasterFontPageView' outlet is nil"
      )
    }
    if let outlet : Any = self.mMasterView {
      if !(outlet is NSView) {
        presentErrorWindow (
          file: #file,
          line: #line,
          errorMessage: "the 'mMasterView' outlet is not an instance of 'NSView'"
        )
      }
    }else{
      presentErrorWindow (
        file: #file,
        line: #line,
        errorMessage: "the 'mMasterView' outlet is nil"
      )
    }
    if let outlet : Any = self.mNewCharacterPanel {
      if !(outlet is NSPanel) {
        presentErrorWindow (
          file: #file,
          line: #line,
          errorMessage: "the 'mNewCharacterPanel' outlet is not an instance of 'NSPanel'"
        )
      }
    }else{
      presentErrorWindow (
        file: #file,
        line: #line,
        errorMessage: "the 'mNewCharacterPanel' outlet is nil"
      )
    }
    if let outlet : Any = self.mNewCharacterView {
      if !(outlet is NewCharacterView) {
        presentErrorWindow (
          file: #file,
          line: #line,
          errorMessage: "the 'mNewCharacterView' outlet is not an instance of 'NewCharacterView'"
        )
      }
    }else{
      presentErrorWindow (
        file: #file,
        line: #line,
        errorMessage: "the 'mNewCharacterView' outlet is nil"
      )
    }
    if let outlet : Any = self.mPageSegmentedControl {
      if !(outlet is CanariSegmentedControl) {
        presentErrorWindow (
          file: #file,
          line: #line,
          errorMessage: "the 'mPageSegmentedControl' outlet is not an instance of 'CanariSegmentedControl'"
        )
      }
    }else{
      presentErrorWindow (
        file: #file,
        line: #line,
        errorMessage: "the 'mPageSegmentedControl' outlet is nil"
      )
    }
    if let outlet : Any = self.mSampleStringAscentTextField {
      if !(outlet is EBTextObserverField) {
        presentErrorWindow (
          file: #file,
          line: #line,
          errorMessage: "the 'mSampleStringAscentTextField' outlet is not an instance of 'EBTextObserverField'"
        )
      }
    }else{
      presentErrorWindow (
        file: #file,
        line: #line,
        errorMessage: "the 'mSampleStringAscentTextField' outlet is nil"
      )
    }
    if let outlet : Any = self.mSampleStringDescentTextField {
      if !(outlet is EBTextObserverField) {
        presentErrorWindow (
          file: #file,
          line: #line,
          errorMessage: "the 'mSampleStringDescentTextField' outlet is not an instance of 'EBTextObserverField'"
        )
      }
    }else{
      presentErrorWindow (
        file: #file,
        line: #line,
        errorMessage: "the 'mSampleStringDescentTextField' outlet is nil"
      )
    }
    if let outlet : Any = self.mSampleStringField {
      if !(outlet is EBTextField) {
        presentErrorWindow (
          file: #file,
          line: #line,
          errorMessage: "the 'mSampleStringField' outlet is not an instance of 'EBTextField'"
        )
      }
    }else{
      presentErrorWindow (
        file: #file,
        line: #line,
        errorMessage: "the 'mSampleStringField' outlet is nil"
      )
    }
    if let outlet : Any = self.mSampleStringInspectorView {
      if !(outlet is CanariViewWithKeyView) {
        presentErrorWindow (
          file: #file,
          line: #line,
          errorMessage: "the 'mSampleStringInspectorView' outlet is not an instance of 'CanariViewWithKeyView'"
        )
      }
    }else{
      presentErrorWindow (
        file: #file,
        line: #line,
        errorMessage: "the 'mSampleStringInspectorView' outlet is nil"
      )
    }
    if let outlet : Any = self.mSampleStringSizeField {
      if !(outlet is EBDoubleField) {
        presentErrorWindow (
          file: #file,
          line: #line,
          errorMessage: "the 'mSampleStringSizeField' outlet is not an instance of 'EBDoubleField'"
        )
      }
    }else{
      presentErrorWindow (
        file: #file,
        line: #line,
        errorMessage: "the 'mSampleStringSizeField' outlet is nil"
      )
    }
    if let outlet : Any = self.mSampleStringWidthTextField {
      if !(outlet is EBTextObserverField) {
        presentErrorWindow (
          file: #file,
          line: #line,
          errorMessage: "the 'mSampleStringWidthTextField' outlet is not an instance of 'EBTextObserverField'"
        )
      }
    }else{
      presentErrorWindow (
        file: #file,
        line: #line,
        errorMessage: "the 'mSampleStringWidthTextField' outlet is nil"
      )
    }
    if let outlet : Any = self.mSelectedCharacterInspectorView {
      if !(outlet is CanariViewWithKeyView) {
        presentErrorWindow (
          file: #file,
          line: #line,
          errorMessage: "the 'mSelectedCharacterInspectorView' outlet is not an instance of 'CanariViewWithKeyView'"
        )
      }
    }else{
      presentErrorWindow (
        file: #file,
        line: #line,
        errorMessage: "the 'mSelectedCharacterInspectorView' outlet is nil"
      )
    }
    if let outlet : Any = self.mShowGerberDrawingFlowCheckbox {
      if !(outlet is EBSwitch) {
        presentErrorWindow (
          file: #file,
          line: #line,
          errorMessage: "the 'mShowGerberDrawingFlowCheckbox' outlet is not an instance of 'EBSwitch'"
        )
      }
    }else{
      presentErrorWindow (
        file: #file,
        line: #line,
        errorMessage: "the 'mShowGerberDrawingFlowCheckbox' outlet is nil"
      )
    }
    if let outlet : Any = self.mShowGerberDrawingIndexesCheckbox {
      if !(outlet is EBSwitch) {
        presentErrorWindow (
          file: #file,
          line: #line,
          errorMessage: "the 'mShowGerberDrawingIndexesCheckbox' outlet is not an instance of 'EBSwitch'"
        )
      }
    }else{
      presentErrorWindow (
        file: #file,
        line: #line,
        errorMessage: "the 'mShowGerberDrawingIndexesCheckbox' outlet is nil"
      )
    }
    if let outlet : Any = self.mSignatureTextField {
      if !(outlet is CanariSignatureField) {
        presentErrorWindow (
          file: #file,
          line: #line,
          errorMessage: "the 'mSignatureTextField' outlet is not an instance of 'CanariSignatureField'"
        )
      }
    }else{
      presentErrorWindow (
        file: #file,
        line: #line,
        errorMessage: "the 'mSignatureTextField' outlet is nil"
      )
    }
    if let outlet : Any = self.mVersionField {
      if !(outlet is CanariVersionField) {
        presentErrorWindow (
          file: #file,
          line: #line,
          errorMessage: "the 'mVersionField' outlet is not an instance of 'CanariVersionField'"
        )
      }
    }else{
      presentErrorWindow (
        file: #file,
        line: #line,
        errorMessage: "the 'mVersionField' outlet is nil"
      )
    }
    if let outlet : Any = self.resetVersionAndSignatureButton {
      if !(outlet is EBButton) {
        presentErrorWindow (
          file: #file,
          line: #line,
          errorMessage: "the 'resetVersionAndSignatureButton' outlet is not an instance of 'EBButton'"
        )
      }
    }else{
      presentErrorWindow (
        file: #file,
        line: #line,
        errorMessage: "the 'resetVersionAndSignatureButton' outlet is nil"
      )
    }
    if let outlet : Any = self.transparencySlider {
      if !(outlet is EBSlider) {
        presentErrorWindow (
          file: #file,
          line: #line,
          errorMessage: "the 'transparencySlider' outlet is not an instance of 'EBSlider'"
        )
      }
    }else{
      presentErrorWindow (
        file: #file,
        line: #line,
        errorMessage: "the 'transparencySlider' outlet is nil"
      )
    }
    if let outlet : Any = self.transparencyTextField {
      if !(outlet is EBDoubleField) {
        presentErrorWindow (
          file: #file,
          line: #line,
          errorMessage: "the 'transparencyTextField' outlet is not an instance of 'EBDoubleField'"
        )
      }
    }else{
      presentErrorWindow (
        file: #file,
        line: #line,
        errorMessage: "the 'transparencyTextField' outlet is nil"
      )
    }
  //--- Array controller property: mSelectedCharacterController
    self.mSelectedCharacterController.setManagedObjectContext (self.managedObjectContext)
    self.mSelectedCharacterController.bind_model (self.rootObject.characters_property)
  //--- Selection controller property: mCharacterSelection
    self.mCharacterSelection.bind_selection (model: self.mSelectedCharacterController.selectedArray_property, file: #file, line: #line)
  //--------------------------- Install regular bindings
    mPageSegmentedControl?.bind_selectedPage (self.rootObject.selectedTab_property, file: #file, line: #line)
    mSignatureTextField?.bind_signature (self.signatureObserver_property, file: #file, line: #line)
    mVersionField?.bind_version (self.versionObserver_property, file: #file, line: #line)
    mVersionField?.bind_versionShouldChange (self.versionShouldChangeObserver_property, file: #file, line: #line)
    mInspectorSegmentedControl?.bind_selectedPage (self.rootObject.selectedInspector_property, file: #file, line: #line)
    advancementTextField?.bind_value (self.mCharacterSelection.advance_property, file: #file, line: #line, sendContinously:true, autoFormatter:true)
    advancementSlider?.bind_intValue (self.mCharacterSelection.advance_property, file: #file, line: #line, sendContinously:true)
    transparencyTextField?.bind_value (g_Preferences!.fontEditionTransparency_property, file: #file, line: #line, sendContinously:false, autoFormatter:false)
    transparencySlider?.bind_doubleValue (g_Preferences!.fontEditionTransparency_property, file: #file, line: #line, sendContinously:true)
    mFontNominalSizeTextField?.bind_value (self.rootObject.nominalSize_property, file: #file, line: #line, sendContinously:false, autoFormatter:false)
    mFontCharacterSelectButton?.bind_codePoint (g_Preferences!.currentCharacterCodePoint_property, file: #file, line: #line)
    mCurrentCharacterTextField?.bind_valueObserver (self.rootObject.currentCharacterCodePointString_property, file: #file, line: #line)
    currentCharacterStepper?.bind_value (g_Preferences!.currentCharacterCodePoint_property, file: #file, line: #line, sendContinously:true)
    mShowGerberDrawingFlowCheckbox?.bind_value (g_Preferences!.showGerberDrawingFlow_property, file: #file, line: #line)
    mShowGerberDrawingIndexesCheckbox?.bind_value (g_Preferences!.showGerberDrawingIndexes_property, file: #file, line: #line)
    gerberCodeInstructionCountMessageTextField?.bind_valueObserver (self.mCharacterSelection.gerberCodeInstructionCountMessage_property, file: #file, line: #line)
    mGerberCodeTableView?.bind_characterGerberCode (self.mCharacterSelection.gerberCode_property, file: #file, line: #line)
    mSampleStringField?.bind_value (g_Preferences!.sampleString_property, file: #file, line: #line, sendContinously:true)
    mFontSampleStringView?.bind_bezierPath (self.rootObject.sampleStringBezierPath_property, file: #file, line: #line)
    mSampleStringSizeField?.bind_value (g_Preferences!.sampleStringSize_property, file: #file, line: #line, sendContinously:false, autoFormatter:false)
    mSampleStringWidthTextField?.bind_valueObserver (self.rootObject.sampleStringBezierPathWidth_property, file: #file, line: #line)
    mSampleStringAscentTextField?.bind_valueObserver (self.rootObject.sampleStringBezierPathAscent_property, file: #file, line: #line)
    mSampleStringDescentTextField?.bind_valueObserver (self.rootObject.sampleStringBezierPathDescent_property, file: #file, line: #line)
    currentCharacterView?.bind_advance (self.mCharacterSelection.advance_property, file: #file, line: #line)
    currentCharacterView?.bind_characterSegmentList (self.mCharacterSelection.segmentArrayForDrawing_property, file: #file, line: #line)
    currentCharacterView?.bind_transparency (g_Preferences!.fontEditionTransparency_property, file: #file, line: #line)
    currentCharacterView?.bind_displayFlow (g_Preferences!.showGerberDrawingFlow_property, file: #file, line: #line)
    currentCharacterView?.bind_displayDrawingIndexes (g_Preferences!.showGerberDrawingIndexes_property, file: #file, line: #line)
    commentTextView?.bind_value (self.rootObject.comments_property, file: #file, line: #line)
  //--------------------------- Install multiple bindings
  //--------------------------- Set targets / actions
    mAddCharacterButton?.target = self
    mAddCharacterButton?.action = #selector (FontDocument.addCharacterAction (_:))
    mAddSegmentButton?.target = self
    mAddSegmentButton?.action = #selector (FontDocument.addSegmentAction (_:))
    resetVersionAndSignatureButton?.target = self
    resetVersionAndSignatureButton?.action = #selector (FontDocument.resetVersionAndSignatureAction (_:))
  //--------------------------- Update display
    super.windowControllerDidLoadNib (aController)
    flushOutletEvents ()
  }

  //····················································································································
  //   removeWindowController
  //····················································································································

  override func removeUserInterface () {
  //--------------------------- Unbind regular bindings
    mPageSegmentedControl?.unbind_selectedPage ()
    mSignatureTextField?.unbind_signature ()
    mVersionField?.unbind_version ()
    mVersionField?.unbind_versionShouldChange ()
    mInspectorSegmentedControl?.unbind_selectedPage ()
    advancementTextField?.unbind_value ()
    advancementSlider?.unbind_intValue ()
    transparencyTextField?.unbind_value ()
    transparencySlider?.unbind_doubleValue ()
    mFontNominalSizeTextField?.unbind_value ()
    mFontCharacterSelectButton?.unbind_codePoint ()
    mCurrentCharacterTextField?.unbind_valueObserver ()
    currentCharacterStepper?.unbind_value ()
    mShowGerberDrawingFlowCheckbox?.unbind_value ()
    mShowGerberDrawingIndexesCheckbox?.unbind_value ()
    gerberCodeInstructionCountMessageTextField?.unbind_valueObserver ()
    mGerberCodeTableView?.unbind_characterGerberCode ()
    mSampleStringField?.unbind_value ()
    mFontSampleStringView?.unbind_bezierPath ()
    mSampleStringSizeField?.unbind_value ()
    mSampleStringWidthTextField?.unbind_valueObserver ()
    mSampleStringAscentTextField?.unbind_valueObserver ()
    mSampleStringDescentTextField?.unbind_valueObserver ()
    currentCharacterView?.unbind_advance ()
    currentCharacterView?.unbind_characterSegmentList ()
    currentCharacterView?.unbind_transparency ()
    currentCharacterView?.unbind_displayFlow ()
    currentCharacterView?.unbind_displayDrawingIndexes ()
    commentTextView?.unbind_value ()
  //--------------------------- Unbind multiple bindings
  //--------------------------- Unbind array controllers
  //--- Array controller property: mSelectedCharacterController
    self.mSelectedCharacterController.unbind_model ()
  //--- Selection controller property: mCharacterSelection
    self.mCharacterSelection.unbind_selection ()
  //--------------------------- Remove targets / actions
    mAddCharacterButton?.target = nil
    mAddSegmentButton?.target = nil
    resetVersionAndSignatureButton?.target = nil
  //--------------------------- Clean up outlets
    self.advancementSlider?.ebCleanUp ()
    self.advancementTextField?.ebCleanUp ()
    self.commentTextView?.ebCleanUp ()
    self.currentCharacterStepper?.ebCleanUp ()
    self.currentCharacterView?.ebCleanUp ()
    self.gerberCodeInstructionCountMessageTextField?.ebCleanUp ()
    self.mAddCharacterButton?.ebCleanUp ()
    self.mAddSegmentButton?.ebCleanUp ()
    self.mCurrentCharacterTextField?.ebCleanUp ()
    self.mFontCharacterSelectButton?.ebCleanUp ()
    self.mFontNominalSizeTextField?.ebCleanUp ()
    self.mFontPageView?.ebCleanUp ()
    self.mFontSampleStringView?.ebCleanUp ()
    self.mGerberCodeTableView?.ebCleanUp ()
    self.mInfosPageView?.ebCleanUp ()
    self.mInspectorSegmentedControl?.ebCleanUp ()
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
    self.mVersionField?.ebCleanUp ()
    self.resetVersionAndSignatureButton?.ebCleanUp ()
    self.transparencySlider?.ebCleanUp ()
    self.transparencyTextField?.ebCleanUp ()
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
