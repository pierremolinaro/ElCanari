//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

@objc(ProjectDocument) class ProjectDocument : EBManagedDocument {

  //····················································································································
  //   Array controller: mComponentController
  //····················································································································

  var mComponentController = ArrayController_ProjectDocument_mComponentController ()

  //····················································································································
  //   Array controller: mProjectFontController
  //····················································································································

  var mProjectFontController = ArrayController_ProjectDocument_mProjectFontController ()

  //····················································································································
  //   Array controller: mProjectDeviceController
  //····················································································································

  var mProjectDeviceController = ArrayController_ProjectDocument_mProjectDeviceController ()

  //····················································································································
  //   Transient property: componentCount
  //····················································································································

  var componentCount_property = EBTransientProperty_String ()

  //····················································································································

  var componentCount_property_selection : EBSelection <String> {
    return self.componentCount_property.prop
  }

  //····················································································································

  var componentCount : String? {
    switch self.componentCount_property_selection {
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
  //   Transient property: selectedDevicePackageNames
  //····················································································································

  var selectedDevicePackageNames_property = EBTransientProperty_StringArray ()

  //····················································································································

  var selectedDevicePackageNames_property_selection : EBSelection <StringArray> {
    return self.selectedDevicePackageNames_property.prop
  }

  //····················································································································

  var selectedDevicePackageNames : StringArray? {
    switch self.selectedDevicePackageNames_property_selection {
    case .empty, .multiple :
      return nil
    case .single (let v) :
      return v
    }
  }

  //····················································································································
  //   Transient property: canRemoveSelectedDevices
  //····················································································································

  var canRemoveSelectedDevices_property = EBTransientProperty_Bool ()

  //····················································································································

  var canRemoveSelectedDevices_property_selection : EBSelection <Bool> {
    return self.canRemoveSelectedDevices_property.prop
  }

  //····················································································································

  var canRemoveSelectedDevices : Bool? {
    switch self.canRemoveSelectedDevices_property_selection {
    case .empty, .multiple :
      return nil
    case .single (let v) :
      return v
    }
  }


  //····················································································································
  //    Outlets
  //····················································································································

  @IBOutlet var mAddComponentButton : EBButton?
  @IBOutlet var mAddFontButton : EBButton?
  @IBOutlet var mBoardPageView : CanariViewWithKeyView?
  @IBOutlet var mComponentCountTextField : EBTextObserverField?
  @IBOutlet var mComponentTableView : EBTableView?
  @IBOutlet var mComponentsPageView : CanariViewWithKeyView?
  @IBOutlet var mDeviceLibraryTableView : EBTableView?
  @IBOutlet var mDevicePackageTableView : StringArrayTableView?
  @IBOutlet var mEditDeviceButton : EBButton?
  @IBOutlet var mEditFontButton : EBButton?
  @IBOutlet var mExportDeviceButton : EBButton?
  @IBOutlet var mFontLibraryTableView : EBTableView?
  @IBOutlet var mLibraryPageView : CanariViewWithKeyView?
  @IBOutlet var mMasterView : NSView?
  @IBOutlet var mNetClassesPageView : CanariViewWithKeyView?
  @IBOutlet var mNetListPageView : CanariViewWithKeyView?
  @IBOutlet var mPageSegmentedControl : CanariSegmentedControl?
  @IBOutlet var mProductPageView : CanariViewWithKeyView?
  @IBOutlet var mRemoveDeviceButton : EBButton?
  @IBOutlet var mRemoveFontButton : EBButton?
  @IBOutlet var mRemoveSelectedComponentsActionButton : EBButton?
  @IBOutlet var mResetDeviceVersionButton : EBButton?
  @IBOutlet var mResetFontVersionButton : EBButton?
  @IBOutlet var mSchematicsPageView : CanariViewWithKeyView?
  @IBOutlet var mUpdateDeviceButton : EBButton?
  @IBOutlet var mUpdateFontButton : EBButton?

  //····················································································································
  //    Multiple bindings controllers
  //····················································································································

  var mController_mRemoveSelectedComponentsActionButton_enabled : MultipleBindingController_enabled? = nil
  var mController_mEditFontButton_enabled : MultipleBindingController_enabled? = nil
  var mController_mUpdateFontButton_enabled : MultipleBindingController_enabled? = nil
  var mController_mRemoveFontButton_enabled : MultipleBindingController_enabled? = nil
  var mController_mResetFontVersionButton_enabled : MultipleBindingController_enabled? = nil
  var mController_mResetDeviceVersionButton_enabled : MultipleBindingController_enabled? = nil
  var mController_mRemoveDeviceButton_enabled : MultipleBindingController_enabled? = nil
  var mController_mEditDeviceButton_enabled : MultipleBindingController_enabled? = nil
  var mController_mExportDeviceButton_enabled : MultipleBindingController_enabled? = nil
  var mController_mUpdateDeviceButton_enabled : MultipleBindingController_enabled? = nil

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
  //--- Array controller property: mComponentController
    self.mComponentController.addExplorer (name: "mComponentController", y:&y, view:view)
  //--- Array controller property: mProjectFontController
    self.mProjectFontController.addExplorer (name: "mProjectFontController", y:&y, view:view)
  //--- Array controller property: mProjectDeviceController
    self.mProjectDeviceController.addExplorer (name: "mProjectDeviceController", y:&y, view:view)
  //---
    super.populateExplorerWindow (&y, view:view)
  }

  //····················································································································
  //    windowNibName
  //····················································································································

  override var windowNibName : NSNib.Name {
    return NSNib.Name ("ProjectDocument")
  }
  
  //····················································································································
  //    rootEntityClassName
  //····················································································································

  override func rootEntityClassName () -> String {
    return "ProjectRoot"
  }

  //····················································································································
  //    rootObject
  //····················································································································

  var rootObject : ProjectRoot { return self.mRootObject as! ProjectRoot }

  //····················································································································
  //    check outlet connections
  //····················································································································

  private func checkOutletConnections () {
    checkOutletConnection (self.mAddComponentButton, "mAddComponentButton", EBButton.self, #file, #line)
    checkOutletConnection (self.mAddFontButton, "mAddFontButton", EBButton.self, #file, #line)
    checkOutletConnection (self.mBoardPageView, "mBoardPageView", CanariViewWithKeyView.self, #file, #line)
    checkOutletConnection (self.mComponentCountTextField, "mComponentCountTextField", EBTextObserverField.self, #file, #line)
    checkOutletConnection (self.mComponentTableView, "mComponentTableView", EBTableView.self, #file, #line)
    checkOutletConnection (self.mComponentsPageView, "mComponentsPageView", CanariViewWithKeyView.self, #file, #line)
    checkOutletConnection (self.mDeviceLibraryTableView, "mDeviceLibraryTableView", EBTableView.self, #file, #line)
    checkOutletConnection (self.mDevicePackageTableView, "mDevicePackageTableView", StringArrayTableView.self, #file, #line)
    checkOutletConnection (self.mEditDeviceButton, "mEditDeviceButton", EBButton.self, #file, #line)
    checkOutletConnection (self.mEditFontButton, "mEditFontButton", EBButton.self, #file, #line)
    checkOutletConnection (self.mExportDeviceButton, "mExportDeviceButton", EBButton.self, #file, #line)
    checkOutletConnection (self.mFontLibraryTableView, "mFontLibraryTableView", EBTableView.self, #file, #line)
    checkOutletConnection (self.mLibraryPageView, "mLibraryPageView", CanariViewWithKeyView.self, #file, #line)
    checkOutletConnection (self.mMasterView, "mMasterView", NSView.self, #file, #line)
    checkOutletConnection (self.mNetClassesPageView, "mNetClassesPageView", CanariViewWithKeyView.self, #file, #line)
    checkOutletConnection (self.mNetListPageView, "mNetListPageView", CanariViewWithKeyView.self, #file, #line)
    checkOutletConnection (self.mPageSegmentedControl, "mPageSegmentedControl", CanariSegmentedControl.self, #file, #line)
    checkOutletConnection (self.mProductPageView, "mProductPageView", CanariViewWithKeyView.self, #file, #line)
    checkOutletConnection (self.mRemoveDeviceButton, "mRemoveDeviceButton", EBButton.self, #file, #line)
    checkOutletConnection (self.mRemoveFontButton, "mRemoveFontButton", EBButton.self, #file, #line)
    checkOutletConnection (self.mRemoveSelectedComponentsActionButton, "mRemoveSelectedComponentsActionButton", EBButton.self, #file, #line)
    checkOutletConnection (self.mResetDeviceVersionButton, "mResetDeviceVersionButton", EBButton.self, #file, #line)
    checkOutletConnection (self.mResetFontVersionButton, "mResetFontVersionButton", EBButton.self, #file, #line)
    checkOutletConnection (self.mSchematicsPageView, "mSchematicsPageView", CanariViewWithKeyView.self, #file, #line)
    checkOutletConnection (self.mUpdateDeviceButton, "mUpdateDeviceButton", EBButton.self, #file, #line)
    checkOutletConnection (self.mUpdateFontButton, "mUpdateFontButton", EBButton.self, #file, #line)
   }
  
  //····················································································································
  //    windowControllerDidLoadNib
  //····················································································································

  override func windowControllerDidLoadNib (_ aController: NSWindowController) {
    super.windowControllerDidLoadNib (aController)
  //--------------------------- Outlet checking
    self.checkOutletConnections ()
  //--- Array controller property: mComponentController
    self.mComponentController.bind_model (self.rootObject.mComponents_property)
  //--- Array controller property: mProjectFontController
    self.mProjectFontController.bind_model (self.rootObject.mFonts_property)
  //--- Array controller property: mProjectDeviceController
    self.mProjectDeviceController.bind_model (self.rootObject.mDevices_property)
  //--- Atomic property: componentCount
    self.componentCount_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        let kind = unwSelf.rootObject.mComponents_property.count_property_selection.kind ()
        switch kind {
        case .noSelectionKind :
          return .empty
        case .multipleSelectionKind :
          return .multiple
        case .singleSelectionKind :
          switch (unwSelf.rootObject.mComponents_property.count_property_selection) {
          case (.single (let v0)) :
            return .single (transient_ProjectDocument_componentCount (v0))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.rootObject.mComponents_property.count_property.addEBObserver (self.componentCount_property)
  //--- Atomic property: selectedDevicePackageNames
    self.selectedDevicePackageNames_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        let kind = unwSelf.mProjectDeviceController.selectedArray_property_selection.kind ()
        switch kind {
        case .noSelectionKind :
          return .empty
        case .multipleSelectionKind :
          return .multiple
        case .singleSelectionKind :
          switch (unwSelf.mProjectDeviceController.selectedArray_property_selection) {
          case (.single (let v0)) :
            return .single (transient_ProjectDocument_selectedDevicePackageNames (v0))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.mProjectDeviceController.selectedArray_property.addEBObserverOf_packageNames (self.selectedDevicePackageNames_property)
  //--- Atomic property: canRemoveSelectedDevices
    self.canRemoveSelectedDevices_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        let kind = unwSelf.mProjectDeviceController.selectedArray_property_selection.kind ()
        switch kind {
        case .noSelectionKind :
          return .empty
        case .multipleSelectionKind :
          return .multiple
        case .singleSelectionKind :
          switch (unwSelf.mProjectDeviceController.selectedArray_property_selection) {
          case (.single (let v0)) :
            return .single (transient_ProjectDocument_canRemoveSelectedDevices (v0))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.mProjectDeviceController.selectedArray_property.addEBObserverOf_canRemove (self.canRemoveSelectedDevices_property)
    self.mComponentController.bind_tableView (self.mComponentTableView, file: #file, line: #line)
    self.mProjectFontController.bind_tableView (self.mFontLibraryTableView, file: #file, line: #line)
    self.mProjectDeviceController.bind_tableView (self.mDeviceLibraryTableView, file: #file, line: #line)
  //--------------------------- Install regular bindings
    self.mPageSegmentedControl?.bind_selectedPage (self.rootObject.mSelectedPageIndex_property, file: #file, line: #line)
    self.mComponentCountTextField?.bind_valueObserver (self.componentCount_property, file: #file, line: #line)
    self.mDevicePackageTableView?.bind_stringArray (self.selectedDevicePackageNames_property, file: #file, line: #line)
  //--------------------------- Install multiple bindings
    do{
      let controller = MultipleBindingController_enabled (
        computeFunction: {
          return (self.mComponentController.selectedArray_property.count_property_selection > EBSelection.single (0))
        },
        outlet: self.mRemoveSelectedComponentsActionButton
      )
      self.mComponentController.selectedArray_property.count_property.addEBObserver (controller)
      self.mController_mRemoveSelectedComponentsActionButton_enabled = controller
    }
    do{
      let controller = MultipleBindingController_enabled (
        computeFunction: {
          return (self.mProjectFontController.selectedArray_property.count_property_selection > EBSelection.single (0))
        },
        outlet: self.mEditFontButton
      )
      self.mProjectFontController.selectedArray_property.count_property.addEBObserver (controller)
      self.mController_mEditFontButton_enabled = controller
    }
    do{
      let controller = MultipleBindingController_enabled (
        computeFunction: {
          return (self.mProjectFontController.selectedArray_property.count_property_selection > EBSelection.single (0))
        },
        outlet: self.mUpdateFontButton
      )
      self.mProjectFontController.selectedArray_property.count_property.addEBObserver (controller)
      self.mController_mUpdateFontButton_enabled = controller
    }
    do{
      let controller = MultipleBindingController_enabled (
        computeFunction: {
          return (self.mProjectFontController.selectedArray_property.count_property_selection > EBSelection.single (0))
        },
        outlet: self.mRemoveFontButton
      )
      self.mProjectFontController.selectedArray_property.count_property.addEBObserver (controller)
      self.mController_mRemoveFontButton_enabled = controller
    }
    do{
      let controller = MultipleBindingController_enabled (
        computeFunction: {
          return (self.mProjectFontController.selectedArray_property.count_property_selection > EBSelection.single (0))
        },
        outlet: self.mResetFontVersionButton
      )
      self.mProjectFontController.selectedArray_property.count_property.addEBObserver (controller)
      self.mController_mResetFontVersionButton_enabled = controller
    }
    do{
      let controller = MultipleBindingController_enabled (
        computeFunction: {
          return (self.mProjectDeviceController.selectedArray_property.count_property_selection > EBSelection.single (0))
        },
        outlet: self.mResetDeviceVersionButton
      )
      self.mProjectDeviceController.selectedArray_property.count_property.addEBObserver (controller)
      self.mController_mResetDeviceVersionButton_enabled = controller
    }
    do{
      let controller = MultipleBindingController_enabled (
        computeFunction: {
          return self.canRemoveSelectedDevices_property_selection
        },
        outlet: self.mRemoveDeviceButton
      )
      self.canRemoveSelectedDevices_property.addEBObserver (controller)
      self.mController_mRemoveDeviceButton_enabled = controller
    }
    do{
      let controller = MultipleBindingController_enabled (
        computeFunction: {
          return (self.mProjectDeviceController.selectedArray_property.count_property_selection > EBSelection.single (0))
        },
        outlet: self.mEditDeviceButton
      )
      self.mProjectDeviceController.selectedArray_property.count_property.addEBObserver (controller)
      self.mController_mEditDeviceButton_enabled = controller
    }
    do{
      let controller = MultipleBindingController_enabled (
        computeFunction: {
          return (self.mProjectDeviceController.selectedArray_property.count_property_selection > EBSelection.single (0))
        },
        outlet: self.mExportDeviceButton
      )
      self.mProjectDeviceController.selectedArray_property.count_property.addEBObserver (controller)
      self.mController_mExportDeviceButton_enabled = controller
    }
    do{
      let controller = MultipleBindingController_enabled (
        computeFunction: {
          return (self.mProjectDeviceController.selectedArray_property.count_property_selection > EBSelection.single (0))
        },
        outlet: self.mUpdateDeviceButton
      )
      self.mProjectDeviceController.selectedArray_property.count_property.addEBObserver (controller)
      self.mController_mUpdateDeviceButton_enabled = controller
    }
  //--------------------------- Set targets / actions
    self.mAddComponentButton?.target = self
    self.mAddComponentButton?.action = #selector (ProjectDocument.addComponentAction (_:))
    self.mRemoveSelectedComponentsActionButton?.target = self
    self.mRemoveSelectedComponentsActionButton?.action = #selector (ProjectDocument.removeSelectedComponentsAction (_:))
    self.mAddFontButton?.target = self
    self.mAddFontButton?.action = #selector (ProjectDocument.addFontAction (_:))
    self.mEditFontButton?.target = self
    self.mEditFontButton?.action = #selector (ProjectDocument.editFontAction (_:))
    self.mUpdateFontButton?.target = self
    self.mUpdateFontButton?.action = #selector (ProjectDocument.updateFontAction (_:))
    self.mRemoveFontButton?.target = self
    self.mRemoveFontButton?.action = #selector (ProjectDocument.removeFontAction (_:))
    self.mResetFontVersionButton?.target = self
    self.mResetFontVersionButton?.action = #selector (ProjectDocument.resetFontVersionAction (_:))
    self.mResetDeviceVersionButton?.target = self
    self.mResetDeviceVersionButton?.action = #selector (ProjectDocument.resetDeviceVersionAction (_:))
    self.mRemoveDeviceButton?.target = self
    self.mRemoveDeviceButton?.action = #selector (ProjectDocument.removeDeviceAction (_:))
    self.mEditDeviceButton?.target = self
    self.mEditDeviceButton?.action = #selector (ProjectDocument.editDeviceAction (_:))
    self.mExportDeviceButton?.target = self
    self.mExportDeviceButton?.action = #selector (ProjectDocument.exportDeviceAction (_:))
    self.mUpdateDeviceButton?.target = self
    self.mUpdateDeviceButton?.action = #selector (ProjectDocument.updateDeviceAction (_:))
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
    self.mComponentCountTextField?.unbind_valueObserver ()
    self.mDevicePackageTableView?.unbind_stringArray ()
  //--------------------------- Unbind multiple bindings
    self.mComponentController.selectedArray_property.count_property.removeEBObserver (self.mController_mRemoveSelectedComponentsActionButton_enabled!)
    self.mController_mRemoveSelectedComponentsActionButton_enabled = nil
    self.mProjectFontController.selectedArray_property.count_property.removeEBObserver (self.mController_mEditFontButton_enabled!)
    self.mController_mEditFontButton_enabled = nil
    self.mProjectFontController.selectedArray_property.count_property.removeEBObserver (self.mController_mUpdateFontButton_enabled!)
    self.mController_mUpdateFontButton_enabled = nil
    self.mProjectFontController.selectedArray_property.count_property.removeEBObserver (self.mController_mRemoveFontButton_enabled!)
    self.mController_mRemoveFontButton_enabled = nil
    self.mProjectFontController.selectedArray_property.count_property.removeEBObserver (self.mController_mResetFontVersionButton_enabled!)
    self.mController_mResetFontVersionButton_enabled = nil
    self.mProjectDeviceController.selectedArray_property.count_property.removeEBObserver (self.mController_mResetDeviceVersionButton_enabled!)
    self.mController_mResetDeviceVersionButton_enabled = nil
    self.canRemoveSelectedDevices_property.removeEBObserver (self.mController_mRemoveDeviceButton_enabled!)
    self.mController_mRemoveDeviceButton_enabled = nil
    self.mProjectDeviceController.selectedArray_property.count_property.removeEBObserver (self.mController_mEditDeviceButton_enabled!)
    self.mController_mEditDeviceButton_enabled = nil
    self.mProjectDeviceController.selectedArray_property.count_property.removeEBObserver (self.mController_mExportDeviceButton_enabled!)
    self.mController_mExportDeviceButton_enabled = nil
    self.mProjectDeviceController.selectedArray_property.count_property.removeEBObserver (self.mController_mUpdateDeviceButton_enabled!)
    self.mController_mUpdateDeviceButton_enabled = nil
  //--------------------------- Unbind array controllers
    self.mComponentController.unbind_tableView (self.mComponentTableView)
    self.mProjectFontController.unbind_tableView (self.mFontLibraryTableView)
    self.mProjectDeviceController.unbind_tableView (self.mDeviceLibraryTableView)
  //--- Array controller property: mComponentController
    self.mComponentController.unbind_model ()
  //--- Array controller property: mProjectFontController
    self.mProjectFontController.unbind_model ()
  //--- Array controller property: mProjectDeviceController
    self.mProjectDeviceController.unbind_model ()
    self.rootObject.mComponents_property.count_property.removeEBObserver (self.componentCount_property)
    self.mProjectDeviceController.selectedArray_property.removeEBObserverOf_packageNames (self.selectedDevicePackageNames_property)
    self.mProjectDeviceController.selectedArray_property.removeEBObserverOf_canRemove (self.canRemoveSelectedDevices_property)
  //--------------------------- Remove targets / actions
    self.mAddComponentButton?.target = nil
    self.mRemoveSelectedComponentsActionButton?.target = nil
    self.mAddFontButton?.target = nil
    self.mEditFontButton?.target = nil
    self.mUpdateFontButton?.target = nil
    self.mRemoveFontButton?.target = nil
    self.mResetFontVersionButton?.target = nil
    self.mResetDeviceVersionButton?.target = nil
    self.mRemoveDeviceButton?.target = nil
    self.mEditDeviceButton?.target = nil
    self.mExportDeviceButton?.target = nil
    self.mUpdateDeviceButton?.target = nil
  //--------------------------- Clean up outlets
    self.mAddComponentButton?.ebCleanUp ()
    self.mAddFontButton?.ebCleanUp ()
    self.mBoardPageView?.ebCleanUp ()
    self.mComponentCountTextField?.ebCleanUp ()
    self.mComponentTableView?.ebCleanUp ()
    self.mComponentsPageView?.ebCleanUp ()
    self.mDeviceLibraryTableView?.ebCleanUp ()
    self.mDevicePackageTableView?.ebCleanUp ()
    self.mEditDeviceButton?.ebCleanUp ()
    self.mEditFontButton?.ebCleanUp ()
    self.mExportDeviceButton?.ebCleanUp ()
    self.mFontLibraryTableView?.ebCleanUp ()
    self.mLibraryPageView?.ebCleanUp ()
    self.mMasterView?.ebCleanUp ()
    self.mNetClassesPageView?.ebCleanUp ()
    self.mNetListPageView?.ebCleanUp ()
    self.mPageSegmentedControl?.ebCleanUp ()
    self.mProductPageView?.ebCleanUp ()
    self.mRemoveDeviceButton?.ebCleanUp ()
    self.mRemoveFontButton?.ebCleanUp ()
    self.mRemoveSelectedComponentsActionButton?.ebCleanUp ()
    self.mResetDeviceVersionButton?.ebCleanUp ()
    self.mResetFontVersionButton?.ebCleanUp ()
    self.mSchematicsPageView?.ebCleanUp ()
    self.mUpdateDeviceButton?.ebCleanUp ()
    self.mUpdateFontButton?.ebCleanUp ()
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

