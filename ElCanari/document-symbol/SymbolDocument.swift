//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

@objc(SymbolDocument) class SymbolDocument : EBManagedDocument {

  //····················································································································
  //   Array controller: mSymbolObjectsController
  //····················································································································

  var mSymbolObjectsController = ArrayController_SymbolDocument_mSymbolObjectsController ()

  //····················································································································
  //   Selection controller: mSymbolTextSelectionController
  //····················································································································

  var mSymbolTextSelectionController = SelectionController_SymbolDocument_mSymbolTextSelectionController ()

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

  @IBOutlet var mAddBezierButton : CanariDragSourceButton?
  @IBOutlet var mAddOvalButton : CanariDragSourceButton?
  @IBOutlet var mAddPinButton : CanariDragSourceButton?
  @IBOutlet var mAddSegmentButton : CanariDragSourceButton?
  @IBOutlet var mAddSolidRectButton : CanariDragSourceButton?
  @IBOutlet var mAddTextButton : CanariDragSourceButton?
  @IBOutlet var mCommentTextView : EBTextView?
  @IBOutlet var mComposedSymbolScrollView : CanariDraggingDestinationScrollView?
  @IBOutlet var mComposedSymbolView : CanariViewWithZoomAndFlip?
  @IBOutlet var mDisplayInspectorView : NSView?
  @IBOutlet var mGridStep : EBPopUpButton?
  @IBOutlet var mGridStyle : EBPopUpButton?
  @IBOutlet var mHorizontalFlip : EBSwitch?
  @IBOutlet var mInspectorSegmentedControl : CanariSegmentedControl?
  @IBOutlet var mPageSegmentedControl : CanariSegmentedControl?
  @IBOutlet var mPinInspectorView : NSView?
  @IBOutlet var mResetVersionButton : EBButton?
  @IBOutlet var mSignatureTextField : CanariSignatureField?
  @IBOutlet var mSymbolInspectorView : NSView?
  @IBOutlet var mSymbolTextHorizontalAlignmentPopUpButton : EBPopUpButton?
  @IBOutlet var mSymbolZoomFlipInspectorView : NSView?
  @IBOutlet var mTextInspectorView : NSView?
  @IBOutlet var mVersionField : CanariVersionField?
  @IBOutlet var mVerticalFlip : EBSwitch?

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
  //--- Array controller property: mSymbolObjectsController
    self.mSymbolObjectsController.addExplorer (name: "mSymbolObjectsController", y:&y, view:view)
  //--- Selection controller property: mSymbolTextSelectionController
    self.mSymbolTextSelectionController.addExplorer (name: "mSymbolTextSelectionController", y:&y, view:view)
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

  var rootObject : SymbolRoot { get { return mRootObject as! SymbolRoot } }

  //····················································································································
  //    windowControllerDidLoadNib
  //····················································································································

  override func windowControllerDidLoadNib (_ aController: NSWindowController) {
  //--------------------------- Outlet checking
    if let outlet : Any = self.mAddBezierButton {
      if !(outlet is CanariDragSourceButton) {
        presentErrorWindow (
          file: #file,
          line: #line,
          errorMessage: "the 'mAddBezierButton' outlet is not an instance of 'CanariDragSourceButton'"
        )
      }
    }else{
      presentErrorWindow (
        file: #file,
        line: #line,
        errorMessage: "the 'mAddBezierButton' outlet is nil"
      )
    }
    if let outlet : Any = self.mAddOvalButton {
      if !(outlet is CanariDragSourceButton) {
        presentErrorWindow (
          file: #file,
          line: #line,
          errorMessage: "the 'mAddOvalButton' outlet is not an instance of 'CanariDragSourceButton'"
        )
      }
    }else{
      presentErrorWindow (
        file: #file,
        line: #line,
        errorMessage: "the 'mAddOvalButton' outlet is nil"
      )
    }
    if let outlet : Any = self.mAddPinButton {
      if !(outlet is CanariDragSourceButton) {
        presentErrorWindow (
          file: #file,
          line: #line,
          errorMessage: "the 'mAddPinButton' outlet is not an instance of 'CanariDragSourceButton'"
        )
      }
    }else{
      presentErrorWindow (
        file: #file,
        line: #line,
        errorMessage: "the 'mAddPinButton' outlet is nil"
      )
    }
    if let outlet : Any = self.mAddSegmentButton {
      if !(outlet is CanariDragSourceButton) {
        presentErrorWindow (
          file: #file,
          line: #line,
          errorMessage: "the 'mAddSegmentButton' outlet is not an instance of 'CanariDragSourceButton'"
        )
      }
    }else{
      presentErrorWindow (
        file: #file,
        line: #line,
        errorMessage: "the 'mAddSegmentButton' outlet is nil"
      )
    }
    if let outlet : Any = self.mAddSolidRectButton {
      if !(outlet is CanariDragSourceButton) {
        presentErrorWindow (
          file: #file,
          line: #line,
          errorMessage: "the 'mAddSolidRectButton' outlet is not an instance of 'CanariDragSourceButton'"
        )
      }
    }else{
      presentErrorWindow (
        file: #file,
        line: #line,
        errorMessage: "the 'mAddSolidRectButton' outlet is nil"
      )
    }
    if let outlet : Any = self.mAddTextButton {
      if !(outlet is CanariDragSourceButton) {
        presentErrorWindow (
          file: #file,
          line: #line,
          errorMessage: "the 'mAddTextButton' outlet is not an instance of 'CanariDragSourceButton'"
        )
      }
    }else{
      presentErrorWindow (
        file: #file,
        line: #line,
        errorMessage: "the 'mAddTextButton' outlet is nil"
      )
    }
    if let outlet : Any = self.mCommentTextView {
      if !(outlet is EBTextView) {
        presentErrorWindow (
          file: #file,
          line: #line,
          errorMessage: "the 'mCommentTextView' outlet is not an instance of 'EBTextView'"
        )
      }
    }else{
      presentErrorWindow (
        file: #file,
        line: #line,
        errorMessage: "the 'mCommentTextView' outlet is nil"
      )
    }
    if let outlet : Any = self.mComposedSymbolScrollView {
      if !(outlet is CanariDraggingDestinationScrollView) {
        presentErrorWindow (
          file: #file,
          line: #line,
          errorMessage: "the 'mComposedSymbolScrollView' outlet is not an instance of 'CanariDraggingDestinationScrollView'"
        )
      }
    }else{
      presentErrorWindow (
        file: #file,
        line: #line,
        errorMessage: "the 'mComposedSymbolScrollView' outlet is nil"
      )
    }
    if let outlet : Any = self.mComposedSymbolView {
      if !(outlet is CanariViewWithZoomAndFlip) {
        presentErrorWindow (
          file: #file,
          line: #line,
          errorMessage: "the 'mComposedSymbolView' outlet is not an instance of 'CanariViewWithZoomAndFlip'"
        )
      }
    }else{
      presentErrorWindow (
        file: #file,
        line: #line,
        errorMessage: "the 'mComposedSymbolView' outlet is nil"
      )
    }
    if let outlet : Any = self.mDisplayInspectorView {
      if !(outlet is NSView) {
        presentErrorWindow (
          file: #file,
          line: #line,
          errorMessage: "the 'mDisplayInspectorView' outlet is not an instance of 'NSView'"
        )
      }
    }else{
      presentErrorWindow (
        file: #file,
        line: #line,
        errorMessage: "the 'mDisplayInspectorView' outlet is nil"
      )
    }
    if let outlet : Any = self.mGridStep {
      if !(outlet is EBPopUpButton) {
        presentErrorWindow (
          file: #file,
          line: #line,
          errorMessage: "the 'mGridStep' outlet is not an instance of 'EBPopUpButton'"
        )
      }
    }else{
      presentErrorWindow (
        file: #file,
        line: #line,
        errorMessage: "the 'mGridStep' outlet is nil"
      )
    }
    if let outlet : Any = self.mGridStyle {
      if !(outlet is EBPopUpButton) {
        presentErrorWindow (
          file: #file,
          line: #line,
          errorMessage: "the 'mGridStyle' outlet is not an instance of 'EBPopUpButton'"
        )
      }
    }else{
      presentErrorWindow (
        file: #file,
        line: #line,
        errorMessage: "the 'mGridStyle' outlet is nil"
      )
    }
    if let outlet : Any = self.mHorizontalFlip {
      if !(outlet is EBSwitch) {
        presentErrorWindow (
          file: #file,
          line: #line,
          errorMessage: "the 'mHorizontalFlip' outlet is not an instance of 'EBSwitch'"
        )
      }
    }else{
      presentErrorWindow (
        file: #file,
        line: #line,
        errorMessage: "the 'mHorizontalFlip' outlet is nil"
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
    if let outlet : Any = self.mPinInspectorView {
      if !(outlet is NSView) {
        presentErrorWindow (
          file: #file,
          line: #line,
          errorMessage: "the 'mPinInspectorView' outlet is not an instance of 'NSView'"
        )
      }
    }else{
      presentErrorWindow (
        file: #file,
        line: #line,
        errorMessage: "the 'mPinInspectorView' outlet is nil"
      )
    }
    if let outlet : Any = self.mResetVersionButton {
      if !(outlet is EBButton) {
        presentErrorWindow (
          file: #file,
          line: #line,
          errorMessage: "the 'mResetVersionButton' outlet is not an instance of 'EBButton'"
        )
      }
    }else{
      presentErrorWindow (
        file: #file,
        line: #line,
        errorMessage: "the 'mResetVersionButton' outlet is nil"
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
    if let outlet : Any = self.mSymbolInspectorView {
      if !(outlet is NSView) {
        presentErrorWindow (
          file: #file,
          line: #line,
          errorMessage: "the 'mSymbolInspectorView' outlet is not an instance of 'NSView'"
        )
      }
    }else{
      presentErrorWindow (
        file: #file,
        line: #line,
        errorMessage: "the 'mSymbolInspectorView' outlet is nil"
      )
    }
    if let outlet : Any = self.mSymbolTextHorizontalAlignmentPopUpButton {
      if !(outlet is EBPopUpButton) {
        presentErrorWindow (
          file: #file,
          line: #line,
          errorMessage: "the 'mSymbolTextHorizontalAlignmentPopUpButton' outlet is not an instance of 'EBPopUpButton'"
        )
      }
    }else{
      presentErrorWindow (
        file: #file,
        line: #line,
        errorMessage: "the 'mSymbolTextHorizontalAlignmentPopUpButton' outlet is nil"
      )
    }
    if let outlet : Any = self.mSymbolZoomFlipInspectorView {
      if !(outlet is NSView) {
        presentErrorWindow (
          file: #file,
          line: #line,
          errorMessage: "the 'mSymbolZoomFlipInspectorView' outlet is not an instance of 'NSView'"
        )
      }
    }else{
      presentErrorWindow (
        file: #file,
        line: #line,
        errorMessage: "the 'mSymbolZoomFlipInspectorView' outlet is nil"
      )
    }
    if let outlet : Any = self.mTextInspectorView {
      if !(outlet is NSView) {
        presentErrorWindow (
          file: #file,
          line: #line,
          errorMessage: "the 'mTextInspectorView' outlet is not an instance of 'NSView'"
        )
      }
    }else{
      presentErrorWindow (
        file: #file,
        line: #line,
        errorMessage: "the 'mTextInspectorView' outlet is nil"
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
    if let outlet : Any = self.mVerticalFlip {
      if !(outlet is EBSwitch) {
        presentErrorWindow (
          file: #file,
          line: #line,
          errorMessage: "the 'mVerticalFlip' outlet is not an instance of 'EBSwitch'"
        )
      }
    }else{
      presentErrorWindow (
        file: #file,
        line: #line,
        errorMessage: "the 'mVerticalFlip' outlet is nil"
      )
    }
  //--- Array controller property: mSymbolObjectsController
    self.mSymbolObjectsController.setManagedObjectContext (self.managedObjectContext)
    self.mSymbolObjectsController.bind_model (self.rootObject.symbolObjects_property)
  //--- Selection controller property: mSymbolTextSelectionController
    self.mSymbolTextSelectionController.bind_selection (model: self.mSymbolObjectsController.selectedArray_property, file: #file, line: #line)
    self.mSymbolObjectsController.bind_ebView (self.mComposedSymbolView)
  //--------------------------- Install regular bindings
    mPageSegmentedControl?.bind_selectedPage (self.rootObject.selectedPageIndex_property, file: #file, line: #line)
    mSignatureTextField?.bind_signature (self.signatureObserver_property, file: #file, line: #line)
    mVersionField?.bind_version (self.versionObserver_property, file: #file, line: #line)
    mVersionField?.bind_versionShouldChange (self.versionShouldChangeObserver_property, file: #file, line: #line)
    mInspectorSegmentedControl?.bind_selectedPage (self.rootObject.selectedInspector_property, file: #file, line: #line)
    mHorizontalFlip?.bind_value (self.rootObject.horizontalFlip_property, file: #file, line: #line)
    mVerticalFlip?.bind_value (self.rootObject.verticalFlip_property, file: #file, line: #line)
    mGridStyle?.bind_selectedIndex (self.rootObject.gridStyle_property, file: #file, line: #line)
    mGridStep?.bind_selectedTag (self.rootObject.gridStep_property, file: #file, line: #line)
    mComposedSymbolView?.bind_horizontalFlip (self.rootObject.horizontalFlip_property, file: #file, line: #line)
    mComposedSymbolView?.bind_verticalFlip (self.rootObject.verticalFlip_property, file: #file, line: #line)
    mComposedSymbolView?.bind_gridStyle (self.rootObject.gridStyle_property, file: #file, line: #line)
    mComposedSymbolView?.bind_gridStepFactor (self.rootObject.gridStep_property, file: #file, line: #line)
    mComposedSymbolView?.bind_gridLineColor (g_Preferences!.lineColorOfSymbolGrid_property, file: #file, line: #line)
    mComposedSymbolView?.bind_gridDotColor (g_Preferences!.dotColorOfSymbolGrid_property, file: #file, line: #line)
    mCommentTextView?.bind_value (self.rootObject.comments_property, file: #file, line: #line)
  //--------------------------- Install multiple bindings
  //--------------------------- Set targets / actions
    mResetVersionButton?.target = self
    mResetVersionButton?.action = #selector (SymbolDocument.resetVersionAction (_:))
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
    mHorizontalFlip?.unbind_value ()
    mVerticalFlip?.unbind_value ()
    mGridStyle?.unbind_selectedIndex ()
    mGridStep?.unbind_selectedTag ()
    mComposedSymbolView?.unbind_horizontalFlip ()
    mComposedSymbolView?.unbind_verticalFlip ()
    mComposedSymbolView?.unbind_gridStyle ()
    mComposedSymbolView?.unbind_gridStepFactor ()
    mComposedSymbolView?.unbind_gridLineColor ()
    mComposedSymbolView?.unbind_gridDotColor ()
    mCommentTextView?.unbind_value ()
  //--------------------------- Unbind multiple bindings
  //--------------------------- Unbind array controllers
    self.mSymbolObjectsController.unbind_ebView (self.mComposedSymbolView)
  //--- Array controller property: mSymbolObjectsController
    self.mSymbolObjectsController.unbind_model ()
  //--- Selection controller property: mSymbolTextSelectionController
    self.mSymbolTextSelectionController.unbind_selection ()
  //--------------------------- Remove targets / actions
    mResetVersionButton?.target = nil
  //--------------------------- Clean up outlets
    self.mAddBezierButton?.ebCleanUp ()
    self.mAddOvalButton?.ebCleanUp ()
    self.mAddPinButton?.ebCleanUp ()
    self.mAddSegmentButton?.ebCleanUp ()
    self.mAddSolidRectButton?.ebCleanUp ()
    self.mAddTextButton?.ebCleanUp ()
    self.mCommentTextView?.ebCleanUp ()
    self.mComposedSymbolScrollView?.ebCleanUp ()
    self.mComposedSymbolView?.ebCleanUp ()
    self.mDisplayInspectorView?.ebCleanUp ()
    self.mGridStep?.ebCleanUp ()
    self.mGridStyle?.ebCleanUp ()
    self.mHorizontalFlip?.ebCleanUp ()
    self.mInspectorSegmentedControl?.ebCleanUp ()
    self.mPageSegmentedControl?.ebCleanUp ()
    self.mPinInspectorView?.ebCleanUp ()
    self.mResetVersionButton?.ebCleanUp ()
    self.mSignatureTextField?.ebCleanUp ()
    self.mSymbolInspectorView?.ebCleanUp ()
    self.mSymbolTextHorizontalAlignmentPopUpButton?.ebCleanUp ()
    self.mSymbolZoomFlipInspectorView?.ebCleanUp ()
    self.mTextInspectorView?.ebCleanUp ()
    self.mVersionField?.ebCleanUp ()
    self.mVerticalFlip?.ebCleanUp ()
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

