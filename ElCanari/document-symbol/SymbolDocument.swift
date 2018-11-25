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

  @IBOutlet var mAddBezierButton : EBButton?
  @IBOutlet var mAddOvalButton : EBButton?
  @IBOutlet var mAddPinButton : EBButton?
  @IBOutlet var mAddSegmentButton : CanariDragSourceButton?
  @IBOutlet var mAddSolidRectButton : EBButton?
  @IBOutlet var mAddTextButton : EBButton?
  @IBOutlet var mCommentTextView : EBTextView?
  @IBOutlet var mComposedSymbolView : CanariViewWithZoomAndFlip?
  @IBOutlet var mDisplayInspectorView : NSView?
  @IBOutlet var mGridStep : EBPopUpButton?
  @IBOutlet var mGridStyle : EBPopUpButton?
  @IBOutlet var mHorizontalFlip : EBSwitch?
  @IBOutlet var mInspectorSegmentedControl : CanariSegmentedControl?
  @IBOutlet var mPageSegmentedControl : CanariSegmentedControl?
  @IBOutlet var mResetVersionButton : EBButton?
  @IBOutlet var mSignatureTextField : CanariSignatureField?
  @IBOutlet var mSymbolZoomFlipInspectorView : NSView?
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
      if !(outlet is EBButton) {
        presentErrorWindow (
          file: #file,
          line: #line,
          errorMessage: "the 'mAddBezierButton' outlet is not an instance of 'EBButton'"
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
      if !(outlet is EBButton) {
        presentErrorWindow (
          file: #file,
          line: #line,
          errorMessage: "the 'mAddOvalButton' outlet is not an instance of 'EBButton'"
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
      if !(outlet is EBButton) {
        presentErrorWindow (
          file: #file,
          line: #line,
          errorMessage: "the 'mAddPinButton' outlet is not an instance of 'EBButton'"
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
      if !(outlet is EBButton) {
        presentErrorWindow (
          file: #file,
          line: #line,
          errorMessage: "the 'mAddSolidRectButton' outlet is not an instance of 'EBButton'"
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
      if !(outlet is EBButton) {
        presentErrorWindow (
          file: #file,
          line: #line,
          errorMessage: "the 'mAddTextButton' outlet is not an instance of 'EBButton'"
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
    mAddBezierButton?.target = self
    mAddBezierButton?.action = #selector (SymbolDocument.addBezierAction (_:))
    mAddOvalButton?.target = self
    mAddOvalButton?.action = #selector (SymbolDocument.addOvalAction (_:))
    mAddSolidRectButton?.target = self
    mAddSolidRectButton?.action = #selector (SymbolDocument.addSolidRectAction (_:))
    mAddTextButton?.target = self
    mAddTextButton?.action = #selector (SymbolDocument.addTextAction (_:))
    mAddPinButton?.target = self
    mAddPinButton?.action = #selector (SymbolDocument.addPinAction (_:))
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
  //--------------------------- Remove targets / actions
    mResetVersionButton?.target = nil
    mAddBezierButton?.target = nil
    mAddOvalButton?.target = nil
    mAddSolidRectButton?.target = nil
    mAddTextButton?.target = nil
    mAddPinButton?.target = nil
  //--------------------------- Clean up outlets
    self.mAddBezierButton?.ebCleanUp ()
    self.mAddOvalButton?.ebCleanUp ()
    self.mAddPinButton?.ebCleanUp ()
    self.mAddSegmentButton?.ebCleanUp ()
    self.mAddSolidRectButton?.ebCleanUp ()
    self.mAddTextButton?.ebCleanUp ()
    self.mCommentTextView?.ebCleanUp ()
    self.mComposedSymbolView?.ebCleanUp ()
    self.mDisplayInspectorView?.ebCleanUp ()
    self.mGridStep?.ebCleanUp ()
    self.mGridStyle?.ebCleanUp ()
    self.mHorizontalFlip?.ebCleanUp ()
    self.mInspectorSegmentedControl?.ebCleanUp ()
    self.mPageSegmentedControl?.ebCleanUp ()
    self.mResetVersionButton?.ebCleanUp ()
    self.mSignatureTextField?.ebCleanUp ()
    self.mSymbolZoomFlipInspectorView?.ebCleanUp ()
    self.mVersionField?.ebCleanUp ()
    self.mVerticalFlip?.ebCleanUp ()
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

