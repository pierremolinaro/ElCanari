//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

@objc(PackageDocument) class PackageDocument : EBManagedDocument {

  //····················································································································
  //   Array controller: mPackageObjectsController
  //····················································································································

  var mPackageObjectsController = ArrayController_PackageDocument_mPackageObjectsController ()

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

  @IBOutlet var mAddSegmentButton : CanariDragSourceButton?
  @IBOutlet var mAutoNumberingInspectorView : CanariViewWithKeyView?
  @IBOutlet var mBaseInspectorView : NSView?
  @IBOutlet var mCommentTextView : EBTextView?
  @IBOutlet var mComposedPackageScrollView : EBScrollView?
  @IBOutlet var mComposedPackageView : EBView?
  @IBOutlet var mCrossColorOfPackageGridColorWell : EBColorWell?
  @IBOutlet var mDisplayInspectorView : CanariViewWithKeyView?
  @IBOutlet var mGridStep : EBPopUpButton?
  @IBOutlet var mGridStyle : EBPopUpButton?
  @IBOutlet var mGridZoomInspectorView : CanariViewWithKeyView?
  @IBOutlet var mHorizontalFlip : EBSwitch?
  @IBOutlet var mInfosPageView : CanariViewWithKeyView?
  @IBOutlet var mInspectorSegmentedControl : CanariSegmentedControl?
  @IBOutlet var mIssuesInspectorView : CanariViewWithKeyView?
  @IBOutlet var mLineColorOfPackageGridColorWell : EBColorWell?
  @IBOutlet var mMasterView : NSView?
  @IBOutlet var mPackageBackgroundColorColorWell : EBColorWell?
  @IBOutlet var mPackageColorColorWell : EBColorWell?
  @IBOutlet var mPackageDrawingWidthMultipliedByTenPopupButton : EBPopUpButton?
  @IBOutlet var mPackagePageView : CanariViewWithKeyView?
  @IBOutlet var mPadPageView : CanariViewWithKeyView?
  @IBOutlet var mPageSegmentedControl : CanariSegmentedControl?
  @IBOutlet var mPinNameFontButton : EBFontButton?
  @IBOutlet var mProgramPageView : CanariViewWithKeyView?
  @IBOutlet var mResetVersionButton : EBButton?
  @IBOutlet var mSelectedObjectsInspectorView : CanariViewWithKeyView?
  @IBOutlet var mSignatureTextField : CanariSignatureField?
  @IBOutlet var mVersionField : CanariVersionField?
  @IBOutlet var mVerticalFlip : EBSwitch?
  @IBOutlet var mXPlacardUnitPopUpButton : EBPopUpButton?
  @IBOutlet var mYPlacardUnitPopUpButton : EBPopUpButton?

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
  //--- Array controller property: mPackageObjectsController
    self.mPackageObjectsController.addExplorer (name: "mPackageObjectsController", y:&y, view:view)
  //---
    super.populateExplorerWindow (&y, view:view)
  }

  //····················································································································
  //    windowNibName
  //····················································································································

  override var windowNibName : NSNib.Name {
    return NSNib.Name ("PackageDocument")
  }
  
  //····················································································································
  //    rootEntityClassName
  //····················································································································

  override func rootEntityClassName () -> String {
    return "PackageRoot"
  }

  //····················································································································
  //    rootObject
  //····················································································································

  var rootObject : PackageRoot { get { return mRootObject as! PackageRoot } }

  //····················································································································
  //    windowControllerDidLoadNib
  //····················································································································

  override func windowControllerDidLoadNib (_ aController: NSWindowController) {
  //--------------------------- Outlet checking
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
    if let outlet : Any = self.mAutoNumberingInspectorView {
      if !(outlet is CanariViewWithKeyView) {
        presentErrorWindow (
          file: #file,
          line: #line,
          errorMessage: "the 'mAutoNumberingInspectorView' outlet is not an instance of 'CanariViewWithKeyView'"
        )
      }
    }else{
      presentErrorWindow (
        file: #file,
        line: #line,
        errorMessage: "the 'mAutoNumberingInspectorView' outlet is nil"
      )
    }
    if let outlet : Any = self.mBaseInspectorView {
      if !(outlet is NSView) {
        presentErrorWindow (
          file: #file,
          line: #line,
          errorMessage: "the 'mBaseInspectorView' outlet is not an instance of 'NSView'"
        )
      }
    }else{
      presentErrorWindow (
        file: #file,
        line: #line,
        errorMessage: "the 'mBaseInspectorView' outlet is nil"
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
    if let outlet : Any = self.mComposedPackageScrollView {
      if !(outlet is EBScrollView) {
        presentErrorWindow (
          file: #file,
          line: #line,
          errorMessage: "the 'mComposedPackageScrollView' outlet is not an instance of 'EBScrollView'"
        )
      }
    }else{
      presentErrorWindow (
        file: #file,
        line: #line,
        errorMessage: "the 'mComposedPackageScrollView' outlet is nil"
      )
    }
    if let outlet : Any = self.mComposedPackageView {
      if !(outlet is EBView) {
        presentErrorWindow (
          file: #file,
          line: #line,
          errorMessage: "the 'mComposedPackageView' outlet is not an instance of 'EBView'"
        )
      }
    }else{
      presentErrorWindow (
        file: #file,
        line: #line,
        errorMessage: "the 'mComposedPackageView' outlet is nil"
      )
    }
    if let outlet : Any = self.mCrossColorOfPackageGridColorWell {
      if !(outlet is EBColorWell) {
        presentErrorWindow (
          file: #file,
          line: #line,
          errorMessage: "the 'mCrossColorOfPackageGridColorWell' outlet is not an instance of 'EBColorWell'"
        )
      }
    }else{
      presentErrorWindow (
        file: #file,
        line: #line,
        errorMessage: "the 'mCrossColorOfPackageGridColorWell' outlet is nil"
      )
    }
    if let outlet : Any = self.mDisplayInspectorView {
      if !(outlet is CanariViewWithKeyView) {
        presentErrorWindow (
          file: #file,
          line: #line,
          errorMessage: "the 'mDisplayInspectorView' outlet is not an instance of 'CanariViewWithKeyView'"
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
    if let outlet : Any = self.mGridZoomInspectorView {
      if !(outlet is CanariViewWithKeyView) {
        presentErrorWindow (
          file: #file,
          line: #line,
          errorMessage: "the 'mGridZoomInspectorView' outlet is not an instance of 'CanariViewWithKeyView'"
        )
      }
    }else{
      presentErrorWindow (
        file: #file,
        line: #line,
        errorMessage: "the 'mGridZoomInspectorView' outlet is nil"
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
    if let outlet : Any = self.mIssuesInspectorView {
      if !(outlet is CanariViewWithKeyView) {
        presentErrorWindow (
          file: #file,
          line: #line,
          errorMessage: "the 'mIssuesInspectorView' outlet is not an instance of 'CanariViewWithKeyView'"
        )
      }
    }else{
      presentErrorWindow (
        file: #file,
        line: #line,
        errorMessage: "the 'mIssuesInspectorView' outlet is nil"
      )
    }
    if let outlet : Any = self.mLineColorOfPackageGridColorWell {
      if !(outlet is EBColorWell) {
        presentErrorWindow (
          file: #file,
          line: #line,
          errorMessage: "the 'mLineColorOfPackageGridColorWell' outlet is not an instance of 'EBColorWell'"
        )
      }
    }else{
      presentErrorWindow (
        file: #file,
        line: #line,
        errorMessage: "the 'mLineColorOfPackageGridColorWell' outlet is nil"
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
    if let outlet : Any = self.mPackageBackgroundColorColorWell {
      if !(outlet is EBColorWell) {
        presentErrorWindow (
          file: #file,
          line: #line,
          errorMessage: "the 'mPackageBackgroundColorColorWell' outlet is not an instance of 'EBColorWell'"
        )
      }
    }else{
      presentErrorWindow (
        file: #file,
        line: #line,
        errorMessage: "the 'mPackageBackgroundColorColorWell' outlet is nil"
      )
    }
    if let outlet : Any = self.mPackageColorColorWell {
      if !(outlet is EBColorWell) {
        presentErrorWindow (
          file: #file,
          line: #line,
          errorMessage: "the 'mPackageColorColorWell' outlet is not an instance of 'EBColorWell'"
        )
      }
    }else{
      presentErrorWindow (
        file: #file,
        line: #line,
        errorMessage: "the 'mPackageColorColorWell' outlet is nil"
      )
    }
    if let outlet : Any = self.mPackageDrawingWidthMultipliedByTenPopupButton {
      if !(outlet is EBPopUpButton) {
        presentErrorWindow (
          file: #file,
          line: #line,
          errorMessage: "the 'mPackageDrawingWidthMultipliedByTenPopupButton' outlet is not an instance of 'EBPopUpButton'"
        )
      }
    }else{
      presentErrorWindow (
        file: #file,
        line: #line,
        errorMessage: "the 'mPackageDrawingWidthMultipliedByTenPopupButton' outlet is nil"
      )
    }
    if let outlet : Any = self.mPackagePageView {
      if !(outlet is CanariViewWithKeyView) {
        presentErrorWindow (
          file: #file,
          line: #line,
          errorMessage: "the 'mPackagePageView' outlet is not an instance of 'CanariViewWithKeyView'"
        )
      }
    }else{
      presentErrorWindow (
        file: #file,
        line: #line,
        errorMessage: "the 'mPackagePageView' outlet is nil"
      )
    }
    if let outlet : Any = self.mPadPageView {
      if !(outlet is CanariViewWithKeyView) {
        presentErrorWindow (
          file: #file,
          line: #line,
          errorMessage: "the 'mPadPageView' outlet is not an instance of 'CanariViewWithKeyView'"
        )
      }
    }else{
      presentErrorWindow (
        file: #file,
        line: #line,
        errorMessage: "the 'mPadPageView' outlet is nil"
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
    if let outlet : Any = self.mPinNameFontButton {
      if !(outlet is EBFontButton) {
        presentErrorWindow (
          file: #file,
          line: #line,
          errorMessage: "the 'mPinNameFontButton' outlet is not an instance of 'EBFontButton'"
        )
      }
    }else{
      presentErrorWindow (
        file: #file,
        line: #line,
        errorMessage: "the 'mPinNameFontButton' outlet is nil"
      )
    }
    if let outlet : Any = self.mProgramPageView {
      if !(outlet is CanariViewWithKeyView) {
        presentErrorWindow (
          file: #file,
          line: #line,
          errorMessage: "the 'mProgramPageView' outlet is not an instance of 'CanariViewWithKeyView'"
        )
      }
    }else{
      presentErrorWindow (
        file: #file,
        line: #line,
        errorMessage: "the 'mProgramPageView' outlet is nil"
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
    if let outlet : Any = self.mSelectedObjectsInspectorView {
      if !(outlet is CanariViewWithKeyView) {
        presentErrorWindow (
          file: #file,
          line: #line,
          errorMessage: "the 'mSelectedObjectsInspectorView' outlet is not an instance of 'CanariViewWithKeyView'"
        )
      }
    }else{
      presentErrorWindow (
        file: #file,
        line: #line,
        errorMessage: "the 'mSelectedObjectsInspectorView' outlet is nil"
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
    if let outlet : Any = self.mXPlacardUnitPopUpButton {
      if !(outlet is EBPopUpButton) {
        presentErrorWindow (
          file: #file,
          line: #line,
          errorMessage: "the 'mXPlacardUnitPopUpButton' outlet is not an instance of 'EBPopUpButton'"
        )
      }
    }else{
      presentErrorWindow (
        file: #file,
        line: #line,
        errorMessage: "the 'mXPlacardUnitPopUpButton' outlet is nil"
      )
    }
    if let outlet : Any = self.mYPlacardUnitPopUpButton {
      if !(outlet is EBPopUpButton) {
        presentErrorWindow (
          file: #file,
          line: #line,
          errorMessage: "the 'mYPlacardUnitPopUpButton' outlet is not an instance of 'EBPopUpButton'"
        )
      }
    }else{
      presentErrorWindow (
        file: #file,
        line: #line,
        errorMessage: "the 'mYPlacardUnitPopUpButton' outlet is nil"
      )
    }
  //--- Array controller property: mPackageObjectsController
    self.mPackageObjectsController.bind_model (self.rootObject.packageObjects_property)
    self.mPackageObjectsController.bind_ebView (self.mComposedPackageView)
  //--------------------------- Install regular bindings
    self.mPageSegmentedControl?.bind_selectedPage (self.rootObject.selectedPageIndex_property, file: #file, line: #line)
    self.mSignatureTextField?.bind_signature (self.signatureObserver_property, file: #file, line: #line)
    self.mVersionField?.bind_version (self.versionObserver_property, file: #file, line: #line)
    self.mVersionField?.bind_versionShouldChange (self.versionShouldChangeObserver_property, file: #file, line: #line)
    self.mInspectorSegmentedControl?.bind_selectedPage (self.rootObject.selectedInspector_property, file: #file, line: #line)
    self.mComposedPackageView?.bind_horizontalFlip (self.rootObject.horizontalFlip_property, file: #file, line: #line)
    self.mComposedPackageView?.bind_verticalFlip (self.rootObject.verticalFlip_property, file: #file, line: #line)
    self.mComposedPackageView?.bind_gridStyle (self.rootObject.gridStyle_property, file: #file, line: #line)
    self.mComposedPackageView?.bind_gridStepFactor (self.rootObject.gridStep_property, file: #file, line: #line)
    self.mComposedPackageView?.bind_gridLineColor (g_Preferences!.lineColorOfPackageGrid_property, file: #file, line: #line)
    self.mComposedPackageView?.bind_gridCrossColor (g_Preferences!.crossColorOfPackageGrid_property, file: #file, line: #line)
    self.mComposedPackageView?.bind_zoom (self.rootObject.zoom_property, file: #file, line: #line)
    self.mComposedPackageView?.bind_backColor (g_Preferences!.packageBackgroundColor_property, file: #file, line: #line)
    self.mComposedPackageView?.bind_xPlacardUnit (self.rootObject.xPlacardUnit_property, file: #file, line: #line)
    self.mComposedPackageView?.bind_yPlacardUnit (self.rootObject.yPlacardUnit_property, file: #file, line: #line)
    self.mHorizontalFlip?.bind_value (self.rootObject.horizontalFlip_property, file: #file, line: #line)
    self.mVerticalFlip?.bind_value (self.rootObject.verticalFlip_property, file: #file, line: #line)
    self.mGridStyle?.bind_selectedIndex (self.rootObject.gridStyle_property, file: #file, line: #line)
    self.mGridStep?.bind_selectedTag (self.rootObject.gridStep_property, file: #file, line: #line)
    self.mXPlacardUnitPopUpButton?.bind_selectedTag (self.rootObject.xPlacardUnit_property, file: #file, line: #line)
    self.mYPlacardUnitPopUpButton?.bind_selectedTag (self.rootObject.yPlacardUnit_property, file: #file, line: #line)
    self.mCrossColorOfPackageGridColorWell?.bind_color (g_Preferences!.crossColorOfPackageGrid_property, file: #file, line: #line, sendContinously:false)
    self.mLineColorOfPackageGridColorWell?.bind_color (g_Preferences!.lineColorOfPackageGrid_property, file: #file, line: #line, sendContinously:false)
    self.mPackageColorColorWell?.bind_color (g_Preferences!.packageColor_property, file: #file, line: #line, sendContinously:false)
    self.mPackageBackgroundColorColorWell?.bind_color (g_Preferences!.packageBackgroundColor_property, file: #file, line: #line, sendContinously:false)
    self.mPackageDrawingWidthMultipliedByTenPopupButton?.bind_selectedTag (g_Preferences!.packageDrawingWidthMultipliedByTen_property, file: #file, line: #line)
    self.mPinNameFontButton?.bind_fontValue (g_Preferences!.pinNameFont_property, file: #file, line: #line)
    self.mCommentTextView?.bind_value (self.rootObject.comments_property, file: #file, line: #line)
  //--------------------------- Install multiple bindings
  //--------------------------- Set targets / actions
    self.mResetVersionButton?.target = self
    self.mResetVersionButton?.action = #selector (PackageDocument.resetVersionAction (_:))
  //--------------------------- Update display
    super.windowControllerDidLoadNib (aController)
    flushOutletEvents ()
  }

  //····················································································································
  //   removeWindowController
  //····················································································································

  override func removeUserInterface () {
  //--------------------------- Unbind regular bindings
    self.mPageSegmentedControl?.unbind_selectedPage ()
    self.mSignatureTextField?.unbind_signature ()
    self.mVersionField?.unbind_version ()
    self.mVersionField?.unbind_versionShouldChange ()
    self.mInspectorSegmentedControl?.unbind_selectedPage ()
    self.mComposedPackageView?.unbind_horizontalFlip ()
    self.mComposedPackageView?.unbind_verticalFlip ()
    self.mComposedPackageView?.unbind_gridStyle ()
    self.mComposedPackageView?.unbind_gridStepFactor ()
    self.mComposedPackageView?.unbind_gridLineColor ()
    self.mComposedPackageView?.unbind_gridCrossColor ()
    self.mComposedPackageView?.unbind_zoom ()
    self.mComposedPackageView?.unbind_backColor ()
    self.mComposedPackageView?.unbind_xPlacardUnit ()
    self.mComposedPackageView?.unbind_yPlacardUnit ()
    self.mHorizontalFlip?.unbind_value ()
    self.mVerticalFlip?.unbind_value ()
    self.mGridStyle?.unbind_selectedIndex ()
    self.mGridStep?.unbind_selectedTag ()
    self.mXPlacardUnitPopUpButton?.unbind_selectedTag ()
    self.mYPlacardUnitPopUpButton?.unbind_selectedTag ()
    self.mCrossColorOfPackageGridColorWell?.unbind_color ()
    self.mLineColorOfPackageGridColorWell?.unbind_color ()
    self.mPackageColorColorWell?.unbind_color ()
    self.mPackageBackgroundColorColorWell?.unbind_color ()
    self.mPackageDrawingWidthMultipliedByTenPopupButton?.unbind_selectedTag ()
    self.mPinNameFontButton?.unbind_fontValue ()
    self.mCommentTextView?.unbind_value ()
  //--------------------------- Unbind multiple bindings
  //--------------------------- Unbind array controllers
    self.mPackageObjectsController.unbind_ebView (self.mComposedPackageView)
  //--- Array controller property: mPackageObjectsController
    self.mPackageObjectsController.unbind_model ()
  //--------------------------- Remove targets / actions
    self.mResetVersionButton?.target = nil
  //--------------------------- Clean up outlets
    self.mAddSegmentButton?.ebCleanUp ()
    self.mAutoNumberingInspectorView?.ebCleanUp ()
    self.mBaseInspectorView?.ebCleanUp ()
    self.mCommentTextView?.ebCleanUp ()
    self.mComposedPackageScrollView?.ebCleanUp ()
    self.mComposedPackageView?.ebCleanUp ()
    self.mCrossColorOfPackageGridColorWell?.ebCleanUp ()
    self.mDisplayInspectorView?.ebCleanUp ()
    self.mGridStep?.ebCleanUp ()
    self.mGridStyle?.ebCleanUp ()
    self.mGridZoomInspectorView?.ebCleanUp ()
    self.mHorizontalFlip?.ebCleanUp ()
    self.mInfosPageView?.ebCleanUp ()
    self.mInspectorSegmentedControl?.ebCleanUp ()
    self.mIssuesInspectorView?.ebCleanUp ()
    self.mLineColorOfPackageGridColorWell?.ebCleanUp ()
    self.mMasterView?.ebCleanUp ()
    self.mPackageBackgroundColorColorWell?.ebCleanUp ()
    self.mPackageColorColorWell?.ebCleanUp ()
    self.mPackageDrawingWidthMultipliedByTenPopupButton?.ebCleanUp ()
    self.mPackagePageView?.ebCleanUp ()
    self.mPadPageView?.ebCleanUp ()
    self.mPageSegmentedControl?.ebCleanUp ()
    self.mPinNameFontButton?.ebCleanUp ()
    self.mProgramPageView?.ebCleanUp ()
    self.mResetVersionButton?.ebCleanUp ()
    self.mSelectedObjectsInspectorView?.ebCleanUp ()
    self.mSignatureTextField?.ebCleanUp ()
    self.mVersionField?.ebCleanUp ()
    self.mVerticalFlip?.ebCleanUp ()
    self.mXPlacardUnitPopUpButton?.ebCleanUp ()
    self.mYPlacardUnitPopUpButton?.ebCleanUp ()
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
