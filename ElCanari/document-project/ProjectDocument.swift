//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

@objc(ProjectDocument) class ProjectDocument : EBManagedDocument {

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

  @IBOutlet var mAddFontButton : EBButton?
  @IBOutlet var mBoardPageView : CanariViewWithKeyView?
  @IBOutlet var mComponentsPageView : CanariViewWithKeyView?
  @IBOutlet var mLibraryPageView : CanariViewWithKeyView?
  @IBOutlet var mMasterView : NSView?
  @IBOutlet var mNetClassesPageView : CanariViewWithKeyView?
  @IBOutlet var mNetListPageView : CanariViewWithKeyView?
  @IBOutlet var mPageSegmentedControl : CanariSegmentedControl?
  @IBOutlet var mProductPageView : CanariViewWithKeyView?
  @IBOutlet var mSchematicsPageView : CanariViewWithKeyView?

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
    checkOutletConnection (self.mAddFontButton, "mAddFontButton", EBButton.self, #file, #line)
    checkOutletConnection (self.mBoardPageView, "mBoardPageView", CanariViewWithKeyView.self, #file, #line)
    checkOutletConnection (self.mComponentsPageView, "mComponentsPageView", CanariViewWithKeyView.self, #file, #line)
    checkOutletConnection (self.mLibraryPageView, "mLibraryPageView", CanariViewWithKeyView.self, #file, #line)
    checkOutletConnection (self.mMasterView, "mMasterView", NSView.self, #file, #line)
    checkOutletConnection (self.mNetClassesPageView, "mNetClassesPageView", CanariViewWithKeyView.self, #file, #line)
    checkOutletConnection (self.mNetListPageView, "mNetListPageView", CanariViewWithKeyView.self, #file, #line)
    checkOutletConnection (self.mPageSegmentedControl, "mPageSegmentedControl", CanariSegmentedControl.self, #file, #line)
    checkOutletConnection (self.mProductPageView, "mProductPageView", CanariViewWithKeyView.self, #file, #line)
    checkOutletConnection (self.mSchematicsPageView, "mSchematicsPageView", CanariViewWithKeyView.self, #file, #line)
   }
  
  //····················································································································
  //    windowControllerDidLoadNib
  //····················································································································

  override func windowControllerDidLoadNib (_ aController: NSWindowController) {
    super.windowControllerDidLoadNib (aController)
  //--------------------------- Outlet checking
    self.checkOutletConnections ()
  //--------------------------- Install regular bindings
    self.mPageSegmentedControl?.bind_selectedPage (self.rootObject.mSelectedPageIndex_property, file: #file, line: #line)
  //--------------------------- Install multiple bindings
  //--------------------------- Set targets / actions
    self.mAddFontButton?.target = self
    self.mAddFontButton?.action = #selector (ProjectDocument.addFontAction (_:))
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
  //--------------------------- Unbind multiple bindings
  //--------------------------- Unbind array controllers
  //--------------------------- Remove targets / actions
    self.mAddFontButton?.target = nil
  //--------------------------- Clean up outlets
    self.mAddFontButton?.ebCleanUp ()
    self.mBoardPageView?.ebCleanUp ()
    self.mComponentsPageView?.ebCleanUp ()
    self.mLibraryPageView?.ebCleanUp ()
    self.mMasterView?.ebCleanUp ()
    self.mNetClassesPageView?.ebCleanUp ()
    self.mNetListPageView?.ebCleanUp ()
    self.mPageSegmentedControl?.ebCleanUp ()
    self.mProductPageView?.ebCleanUp ()
    self.mSchematicsPageView?.ebCleanUp ()
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

