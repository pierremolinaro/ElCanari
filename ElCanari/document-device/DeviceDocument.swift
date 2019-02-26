//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

@objc(DeviceDocument) class DeviceDocument : EBManagedDocument {

  //····················································································································
  //   Transient property: mStatusMessage
  //····················································································································

  var mStatusMessage_property = EBTransientProperty_String ()

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

  var mMetadataStatus_property = EBTransientProperty_MetadataStatus ()

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
  //   Transient property: mStatusImage
  //····················································································································

  var mStatusImage_property = EBTransientProperty_NSImage ()

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
  //    Outlets
  //····················································································································

  @IBOutlet var mAssignmentPageView : CanariViewWithKeyView?
  @IBOutlet var mCommentTextView : EBTextView?
  @IBOutlet var mCopyImageButton : EBButton?
  @IBOutlet var mDescriptionPageView : CanariViewWithKeyView?
  @IBOutlet var mInfosPageView : CanariViewWithKeyView?
  @IBOutlet var mIssueTextView : EBTextObserverView?
  @IBOutlet var mLibraryPageView : CanariViewWithKeyView?
  @IBOutlet var mMasterView : NSView?
  @IBOutlet var mPackagePageView : CanariViewWithKeyView?
  @IBOutlet var mPageSegmentedControl : CanariSegmentedControl?
  @IBOutlet var mPasteImageButton : EBButton?
  @IBOutlet var mPrefixTextField : EBTextField?
  @IBOutlet var mRemoveImageButton : EBButton?
  @IBOutlet var mRepresentationImageView : DeviceDroppableImageView?
  @IBOutlet var mResetVersionButton : EBButton?
  @IBOutlet var mSignatureTextField : CanariSignatureField?
  @IBOutlet var mStatusImageViewInToolbar : EBImageObserverView?
  @IBOutlet var mSymbolPageView : CanariViewWithKeyView?
  @IBOutlet var mTitleTextField : EBTextField?
  @IBOutlet var mVersionField : CanariVersionField?

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
  //---
    super.populateExplorerWindow (&y, view:view)
  }

  //····················································································································
  //    windowNibName
  //····················································································································

  override var windowNibName : NSNib.Name {
    return NSNib.Name ("DeviceDocument")
  }
  
  //····················································································································
  //    rootEntityClassName
  //····················································································································

  override func rootEntityClassName () -> String {
    return "DeviceRoot"
  }

  //····················································································································
  //    rootObject
  //····················································································································

  var rootObject : DeviceRoot { get { return mRootObject as! DeviceRoot } }

  //····················································································································
  //    windowControllerDidLoadNib
  //····················································································································

  override func windowControllerDidLoadNib (_ aController: NSWindowController) {
    super.windowControllerDidLoadNib (aController)
  //--------------------------- Outlet checking
    if let outlet : Any = self.mAssignmentPageView {
      if !(outlet is CanariViewWithKeyView) {
        presentErrorWindow (
          file: #file,
          line: #line,
          errorMessage: "the 'mAssignmentPageView' outlet is not an instance of 'CanariViewWithKeyView'"
        )
      }
    }else{
      presentErrorWindow (
        file: #file,
        line: #line,
        errorMessage: "the 'mAssignmentPageView' outlet is nil"
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
    if let outlet : Any = self.mCopyImageButton {
      if !(outlet is EBButton) {
        presentErrorWindow (
          file: #file,
          line: #line,
          errorMessage: "the 'mCopyImageButton' outlet is not an instance of 'EBButton'"
        )
      }
    }else{
      presentErrorWindow (
        file: #file,
        line: #line,
        errorMessage: "the 'mCopyImageButton' outlet is nil"
      )
    }
    if let outlet : Any = self.mDescriptionPageView {
      if !(outlet is CanariViewWithKeyView) {
        presentErrorWindow (
          file: #file,
          line: #line,
          errorMessage: "the 'mDescriptionPageView' outlet is not an instance of 'CanariViewWithKeyView'"
        )
      }
    }else{
      presentErrorWindow (
        file: #file,
        line: #line,
        errorMessage: "the 'mDescriptionPageView' outlet is nil"
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
    if let outlet : Any = self.mIssueTextView {
      if !(outlet is EBTextObserverView) {
        presentErrorWindow (
          file: #file,
          line: #line,
          errorMessage: "the 'mIssueTextView' outlet is not an instance of 'EBTextObserverView'"
        )
      }
    }else{
      presentErrorWindow (
        file: #file,
        line: #line,
        errorMessage: "the 'mIssueTextView' outlet is nil"
      )
    }
    if let outlet : Any = self.mLibraryPageView {
      if !(outlet is CanariViewWithKeyView) {
        presentErrorWindow (
          file: #file,
          line: #line,
          errorMessage: "the 'mLibraryPageView' outlet is not an instance of 'CanariViewWithKeyView'"
        )
      }
    }else{
      presentErrorWindow (
        file: #file,
        line: #line,
        errorMessage: "the 'mLibraryPageView' outlet is nil"
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
    if let outlet : Any = self.mPasteImageButton {
      if !(outlet is EBButton) {
        presentErrorWindow (
          file: #file,
          line: #line,
          errorMessage: "the 'mPasteImageButton' outlet is not an instance of 'EBButton'"
        )
      }
    }else{
      presentErrorWindow (
        file: #file,
        line: #line,
        errorMessage: "the 'mPasteImageButton' outlet is nil"
      )
    }
    if let outlet : Any = self.mPrefixTextField {
      if !(outlet is EBTextField) {
        presentErrorWindow (
          file: #file,
          line: #line,
          errorMessage: "the 'mPrefixTextField' outlet is not an instance of 'EBTextField'"
        )
      }
    }else{
      presentErrorWindow (
        file: #file,
        line: #line,
        errorMessage: "the 'mPrefixTextField' outlet is nil"
      )
    }
    if let outlet : Any = self.mRemoveImageButton {
      if !(outlet is EBButton) {
        presentErrorWindow (
          file: #file,
          line: #line,
          errorMessage: "the 'mRemoveImageButton' outlet is not an instance of 'EBButton'"
        )
      }
    }else{
      presentErrorWindow (
        file: #file,
        line: #line,
        errorMessage: "the 'mRemoveImageButton' outlet is nil"
      )
    }
    if let outlet : Any = self.mRepresentationImageView {
      if !(outlet is DeviceDroppableImageView) {
        presentErrorWindow (
          file: #file,
          line: #line,
          errorMessage: "the 'mRepresentationImageView' outlet is not an instance of 'DeviceDroppableImageView'"
        )
      }
    }else{
      presentErrorWindow (
        file: #file,
        line: #line,
        errorMessage: "the 'mRepresentationImageView' outlet is nil"
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
    if let outlet : Any = self.mStatusImageViewInToolbar {
      if !(outlet is EBImageObserverView) {
        presentErrorWindow (
          file: #file,
          line: #line,
          errorMessage: "the 'mStatusImageViewInToolbar' outlet is not an instance of 'EBImageObserverView'"
        )
      }
    }else{
      presentErrorWindow (
        file: #file,
        line: #line,
        errorMessage: "the 'mStatusImageViewInToolbar' outlet is nil"
      )
    }
    if let outlet : Any = self.mSymbolPageView {
      if !(outlet is CanariViewWithKeyView) {
        presentErrorWindow (
          file: #file,
          line: #line,
          errorMessage: "the 'mSymbolPageView' outlet is not an instance of 'CanariViewWithKeyView'"
        )
      }
    }else{
      presentErrorWindow (
        file: #file,
        line: #line,
        errorMessage: "the 'mSymbolPageView' outlet is nil"
      )
    }
    if let outlet : Any = self.mTitleTextField {
      if !(outlet is EBTextField) {
        presentErrorWindow (
          file: #file,
          line: #line,
          errorMessage: "the 'mTitleTextField' outlet is not an instance of 'EBTextField'"
        )
      }
    }else{
      presentErrorWindow (
        file: #file,
        line: #line,
        errorMessage: "the 'mTitleTextField' outlet is nil"
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
  //--- Atomic property: mStatusMessage
    self.mStatusMessage_property.readModelFunction = { [weak self] in
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
            return .single (transient_DeviceDocument_mStatusMessage (v0))
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
    self.mMetadataStatus_property.readModelFunction = { [weak self] in
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
            return .single (transient_DeviceDocument_mMetadataStatus (v0))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.rootObject.issues_property.addEBObserver (self.mMetadataStatus_property)
  //--- Atomic property: mStatusImage
    self.mStatusImage_property.readModelFunction = { [weak self] in
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
            return .single (transient_DeviceDocument_mStatusImage (v0))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.rootObject.issues_property.addEBObserver (self.mStatusImage_property)
  //--------------------------- Install regular bindings
    self.mPageSegmentedControl?.bind_selectedPage (self.rootObject.selectedPageIndex_property, file: #file, line: #line)
    self.mSignatureTextField?.bind_signature (self.signatureObserver_property, file: #file, line: #line)
    self.mVersionField?.bind_version (self.versionObserver_property, file: #file, line: #line)
    self.mVersionField?.bind_versionShouldChange (self.versionShouldChangeObserver_property, file: #file, line: #line)
    self.mStatusImageViewInToolbar?.bind_image (self.mStatusImage_property, file: #file, line: #line)
    self.mStatusImageViewInToolbar?.bind_tooltip (self.mStatusMessage_property, file: #file, line: #line)
    self.mIssueTextView?.bind_valueObserver (self.mStatusMessage_property, file: #file, line: #line)
    self.mTitleTextField?.bind_value (self.rootObject.title_property, file: #file, line: #line, sendContinously:true)
    self.mRepresentationImageView?.bind_imageData (self.rootObject.representationImageData_property, file: #file, line: #line)
    self.mPrefixTextField?.bind_value (self.rootObject.prefix_property, file: #file, line: #line, sendContinously:true)
    self.mCommentTextView?.bind_value (self.rootObject.comments_property, file: #file, line: #line)
  //--------------------------- Install multiple bindings
  //--------------------------- Set targets / actions
    self.mPasteImageButton?.target = self
    self.mPasteImageButton?.action = #selector (DeviceDocument.pasteImageAction (_:))
    self.mCopyImageButton?.target = self
    self.mCopyImageButton?.action = #selector (DeviceDocument.copyImageAction (_:))
    self.mRemoveImageButton?.target = self
    self.mRemoveImageButton?.action = #selector (DeviceDocument.removeImageAction (_:))
    self.mResetVersionButton?.target = self
    self.mResetVersionButton?.action = #selector (DeviceDocument.resetVersionAction (_:))
  //--------------------------- Read documentFilePath model 
    self.documentFilePath_property.readModelFunction = { [weak self] in
      if let r = self?.computeTransient_documentFilePath () {
        return .single (r)
      }else{
        return .empty
      }
    }

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
    self.mStatusImageViewInToolbar?.unbind_image ()
    self.mStatusImageViewInToolbar?.unbind_tooltip ()
    self.mIssueTextView?.unbind_valueObserver ()
    self.mTitleTextField?.unbind_value ()
    self.mRepresentationImageView?.unbind_imageData ()
    self.mPrefixTextField?.unbind_value ()
    self.mCommentTextView?.unbind_value ()
  //--------------------------- Unbind multiple bindings
  //--------------------------- Unbind array controllers
    self.rootObject.issues_property.removeEBObserver (self.mStatusMessage_property)
    self.rootObject.issues_property.removeEBObserver (self.mMetadataStatus_property)
    self.rootObject.issues_property.removeEBObserver (self.mStatusImage_property)
  //--------------------------- Remove targets / actions
    self.mPasteImageButton?.target = nil
    self.mCopyImageButton?.target = nil
    self.mRemoveImageButton?.target = nil
    self.mResetVersionButton?.target = nil
  //--------------------------- Clean up outlets
    self.mAssignmentPageView?.ebCleanUp ()
    self.mCommentTextView?.ebCleanUp ()
    self.mCopyImageButton?.ebCleanUp ()
    self.mDescriptionPageView?.ebCleanUp ()
    self.mInfosPageView?.ebCleanUp ()
    self.mIssueTextView?.ebCleanUp ()
    self.mLibraryPageView?.ebCleanUp ()
    self.mMasterView?.ebCleanUp ()
    self.mPackagePageView?.ebCleanUp ()
    self.mPageSegmentedControl?.ebCleanUp ()
    self.mPasteImageButton?.ebCleanUp ()
    self.mPrefixTextField?.ebCleanUp ()
    self.mRemoveImageButton?.ebCleanUp ()
    self.mRepresentationImageView?.ebCleanUp ()
    self.mResetVersionButton?.ebCleanUp ()
    self.mSignatureTextField?.ebCleanUp ()
    self.mStatusImageViewInToolbar?.ebCleanUp ()
    self.mSymbolPageView?.ebCleanUp ()
    self.mTitleTextField?.ebCleanUp ()
    self.mVersionField?.ebCleanUp ()
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

