//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

@objc(PMMergerDocument) class PMMergerDocument : EBManagedDocument {

  //····················································································································
  //    Outlets
  //····················································································································

  @IBOutlet var addBoardModelButton : EBButton?
  @IBOutlet var mArtworkNameTextField : EBTextObserverField?
  @IBOutlet var mBoardHeightTextField : CanariDimensionTextField?
  @IBOutlet var mBoardHeightUnitPopUp : EBPopUpButton?
  @IBOutlet var mBoardModelComponentCountTextField : EBIntObserverField?
  @IBOutlet var mBoardModelNameTextField : EBTextObserverField?
  @IBOutlet var mBoardModelTableView : EBTableView?
  @IBOutlet var mBoardModelTrackCountTextField : EBIntObserverField?
  @IBOutlet var mBoardModelViaCountTextField : EBIntObserverField?
  @IBOutlet var mBoardModelView : CanariBoardModelView?
  @IBOutlet var mBoardWidthTextField : CanariDimensionTextField?
  @IBOutlet var mBoardWidthUnitPopUp : EBPopUpButton?
  @IBOutlet var mPageSegmentedControl : CanariSegmentedControl?

  //····················································································································
  //    Properties
  //····················································································································


  //····················································································································
  //    Transient properties
  //····················································································································


  //····················································································································
  //    Transient arraies
  //····················································································································


  //····················································································································
  //    Array Controllers
  //····················································································································

  var mBoardModelController = ArrayController_PMMergerDocument_mBoardModelController ()

  //····················································································································
  //    Selection Controllers
  //····················································································································

  var mBoardModelSelection = SelectionController_PMMergerDocument_mBoardModelSelection ()

  //····················································································································
  //    Custom object Controllers
  //····················································································································


  //····················································································································
  //    populateExplorerWindow
  //····················································································································

  override func populateExplorerWindow (_ y : inout CGFloat, view : NSView) {
    mBoardModelController.addExplorer (name: "mBoardModelController", y:&y, view:view)
    mBoardModelSelection.addExplorer (name: "mBoardModelSelection", y:&y, view:view)
    super.populateExplorerWindow (&y, view:view)
  }

  //····················································································································
  //    windowNibName
  //····················································································································

  override var windowNibName: String {
    return "PMMergerDocument"
  }

  //····················································································································
  //    rootEntityClassName
  //····················································································································

  override func rootEntityClassName () -> String {
    return "MergerRootEntity"
  }

  //····················································································································
  //    rootObject
  //····················································································································

  var rootObject : MergerRootEntity { get { return mRootObject as! MergerRootEntity } }

  //····················································································································
  //    windowControllerDidLoadNib
  //····················································································································

  override func windowControllerDidLoadNib (_ aController: NSWindowController) {
  //--------------------------- Outlet checking
    if nil == addBoardModelButton {
      presentErrorWindow (file: #file,
                              line: #line,
                              errorMessage: "the 'addBoardModelButton' outlet is nil") ;
//    }else if !addBoardModelButton!.isKindOfClass (EBButton) {
//      presentErrorWindow (file: #file,
//                              line: #line,
//                              errorMessage: "the 'addBoardModelButton' outlet is not an instance of 'EBButton'") ;
    }
    if nil == mArtworkNameTextField {
      presentErrorWindow (file: #file,
                              line: #line,
                              errorMessage: "the 'mArtworkNameTextField' outlet is nil") ;
//    }else if !mArtworkNameTextField!.isKindOfClass (EBTextObserverField) {
//      presentErrorWindow (file: #file,
//                              line: #line,
//                              errorMessage: "the 'mArtworkNameTextField' outlet is not an instance of 'EBTextObserverField'") ;
    }
    if nil == mBoardHeightTextField {
      presentErrorWindow (file: #file,
                              line: #line,
                              errorMessage: "the 'mBoardHeightTextField' outlet is nil") ;
//    }else if !mBoardHeightTextField!.isKindOfClass (CanariDimensionTextField) {
//      presentErrorWindow (file: #file,
//                              line: #line,
//                              errorMessage: "the 'mBoardHeightTextField' outlet is not an instance of 'CanariDimensionTextField'") ;
    }
    if nil == mBoardHeightUnitPopUp {
      presentErrorWindow (file: #file,
                              line: #line,
                              errorMessage: "the 'mBoardHeightUnitPopUp' outlet is nil") ;
//    }else if !mBoardHeightUnitPopUp!.isKindOfClass (EBPopUpButton) {
//      presentErrorWindow (file: #file,
//                              line: #line,
//                              errorMessage: "the 'mBoardHeightUnitPopUp' outlet is not an instance of 'EBPopUpButton'") ;
    }
    if nil == mBoardModelComponentCountTextField {
      presentErrorWindow (file: #file,
                              line: #line,
                              errorMessage: "the 'mBoardModelComponentCountTextField' outlet is nil") ;
//    }else if !mBoardModelComponentCountTextField!.isKindOfClass (EBIntObserverField) {
//      presentErrorWindow (file: #file,
//                              line: #line,
//                              errorMessage: "the 'mBoardModelComponentCountTextField' outlet is not an instance of 'EBIntObserverField'") ;
    }
    if nil == mBoardModelNameTextField {
      presentErrorWindow (file: #file,
                              line: #line,
                              errorMessage: "the 'mBoardModelNameTextField' outlet is nil") ;
//    }else if !mBoardModelNameTextField!.isKindOfClass (EBTextObserverField) {
//      presentErrorWindow (file: #file,
//                              line: #line,
//                              errorMessage: "the 'mBoardModelNameTextField' outlet is not an instance of 'EBTextObserverField'") ;
    }
    if nil == mBoardModelTableView {
      presentErrorWindow (file: #file,
                              line: #line,
                              errorMessage: "the 'mBoardModelTableView' outlet is nil") ;
//    }else if !mBoardModelTableView!.isKindOfClass (EBTableView) {
//      presentErrorWindow (file: #file,
//                              line: #line,
//                              errorMessage: "the 'mBoardModelTableView' outlet is not an instance of 'EBTableView'") ;
    }
    if nil == mBoardModelTrackCountTextField {
      presentErrorWindow (file: #file,
                              line: #line,
                              errorMessage: "the 'mBoardModelTrackCountTextField' outlet is nil") ;
//    }else if !mBoardModelTrackCountTextField!.isKindOfClass (EBIntObserverField) {
//      presentErrorWindow (file: #file,
//                              line: #line,
//                              errorMessage: "the 'mBoardModelTrackCountTextField' outlet is not an instance of 'EBIntObserverField'") ;
    }
    if nil == mBoardModelViaCountTextField {
      presentErrorWindow (file: #file,
                              line: #line,
                              errorMessage: "the 'mBoardModelViaCountTextField' outlet is nil") ;
//    }else if !mBoardModelViaCountTextField!.isKindOfClass (EBIntObserverField) {
//      presentErrorWindow (file: #file,
//                              line: #line,
//                              errorMessage: "the 'mBoardModelViaCountTextField' outlet is not an instance of 'EBIntObserverField'") ;
    }
    if nil == mBoardModelView {
      presentErrorWindow (file: #file,
                              line: #line,
                              errorMessage: "the 'mBoardModelView' outlet is nil") ;
//    }else if !mBoardModelView!.isKindOfClass (CanariBoardModelView) {
//      presentErrorWindow (file: #file,
//                              line: #line,
//                              errorMessage: "the 'mBoardModelView' outlet is not an instance of 'CanariBoardModelView'") ;
    }
    if nil == mBoardWidthTextField {
      presentErrorWindow (file: #file,
                              line: #line,
                              errorMessage: "the 'mBoardWidthTextField' outlet is nil") ;
//    }else if !mBoardWidthTextField!.isKindOfClass (CanariDimensionTextField) {
//      presentErrorWindow (file: #file,
//                              line: #line,
//                              errorMessage: "the 'mBoardWidthTextField' outlet is not an instance of 'CanariDimensionTextField'") ;
    }
    if nil == mBoardWidthUnitPopUp {
      presentErrorWindow (file: #file,
                              line: #line,
                              errorMessage: "the 'mBoardWidthUnitPopUp' outlet is nil") ;
//    }else if !mBoardWidthUnitPopUp!.isKindOfClass (EBPopUpButton) {
//      presentErrorWindow (file: #file,
//                              line: #line,
//                              errorMessage: "the 'mBoardWidthUnitPopUp' outlet is not an instance of 'EBPopUpButton'") ;
    }
    if nil == mPageSegmentedControl {
      presentErrorWindow (file: #file,
                              line: #line,
                              errorMessage: "the 'mPageSegmentedControl' outlet is nil") ;
//    }else if !mPageSegmentedControl!.isKindOfClass (CanariSegmentedControl) {
//      presentErrorWindow (file: #file,
//                              line: #line,
//                              errorMessage: "the 'mPageSegmentedControl' outlet is not an instance of 'CanariSegmentedControl'") ;
    }
  //--------------------------- Array controllers
    mBoardModelController.bind_modelAndView (
      model: rootObject.boardModels,
      tableViewArray: [mBoardModelTableView!],
      file: #file,
      line: #line
    )
  //--------------------------- Selection controllers
    mBoardModelSelection.bind_selection (
      model: mBoardModelController.selectedArray,
      file: #file,
      line: #line
    )
  //--------------------------- Custom object controllers
  //--- Transient compute functions
  //--- Install property observers for transients
  //--- Install regular bindings
    mPageSegmentedControl?.bind_selectedPage (self.rootObject.selectedPageIndex, file: #file, line: #line)
    mBoardModelNameTextField?.bind_valueObserver (self.mBoardModelSelection.name, file: #file, line: #line)
    mArtworkNameTextField?.bind_valueObserver (self.mBoardModelSelection.artworkName, file: #file, line: #line)
    mBoardWidthUnitPopUp?.bind_selectedTag (self.mBoardModelSelection.boardWidthUnit, file: #file, line: #line)
    mBoardWidthTextField?.bind_dimensionAndUnit (self.mBoardModelSelection.boardHeight, self.mBoardModelSelection.boardWidthUnit, file: #file, line: #line)
    mBoardHeightUnitPopUp?.bind_selectedTag (self.mBoardModelSelection.boardHeightUnit, file: #file, line: #line)
    mBoardHeightTextField?.bind_dimensionAndUnit (self.mBoardModelSelection.boardHeight, self.mBoardModelSelection.boardHeightUnit, file: #file, line: #line)
    mBoardModelTrackCountTextField?.bind_valueObserver (self.mBoardModelSelection.trackCount, file: #file, line: #line, autoFormatter:true)
    mBoardModelViaCountTextField?.bind_valueObserver (self.mBoardModelSelection.viaCount, file: #file, line: #line, autoFormatter:true)
    mBoardModelComponentCountTextField?.bind_valueObserver (self.mBoardModelSelection.componentCount, file: #file, line: #line, autoFormatter:true)
    mBoardModelView?.bind_size (self.mBoardModelSelection.boardWidth, self.mBoardModelSelection.boardHeight, file: #file, line: #line)
    mBoardModelView?.bind_zoom (self.mBoardModelSelection.zoom, file: #file, line: #line)
    mBoardModelView?.bind_horizontalFlip (self.mBoardModelSelection.horizontalFlip, file: #file, line: #line)
    mBoardModelView?.bind_verticalFlip (self.mBoardModelSelection.verticalFlip, file: #file, line: #line)
  //--- Install multiple bindings
  //--------------------------- Set targets / actions
    addBoardModelButton?.target = self
    addBoardModelButton?.action = #selector (PMMergerDocument.addBoardModelAction (_:))
  //--------------------------- Update display
    super.windowControllerDidLoadNib (aController)
    flushOutletEvents ()
  }

  //····················································································································
  //   removeWindowController
  //····················································································································

  override func removeUserInterface () {
  //--- Unbind regular bindings
    mPageSegmentedControl?.unbind_selectedPage ()
    mBoardModelNameTextField?.unbind_valueObserver ()
    mArtworkNameTextField?.unbind_valueObserver ()
    mBoardWidthUnitPopUp?.unbind_selectedTag ()
    mBoardWidthTextField?.unbind_dimensionAndUnit ()
    mBoardHeightUnitPopUp?.unbind_selectedTag ()
    mBoardHeightTextField?.unbind_dimensionAndUnit ()
    mBoardModelTrackCountTextField?.unbind_valueObserver ()
    mBoardModelViaCountTextField?.unbind_valueObserver ()
    mBoardModelComponentCountTextField?.unbind_valueObserver ()
    mBoardModelView?.unbind_size ()
    mBoardModelView?.unbind_zoom ()
    mBoardModelView?.unbind_horizontalFlip ()
    mBoardModelView?.unbind_verticalFlip ()
  //--- Unbind multiple bindings
  //--- Uninstall compute functions for transients
  //--------------------------- Unbind array controllers
    mBoardModelController.unbind_modelAndView ()
  //--------------------------- Unbind selection controllers
    mBoardModelSelection.unbind_selection ()
  //--- Uninstall property observers for transients
  //--------------------------- Remove targets / actions
    addBoardModelButton?.target = nil
  }

  //····················································································································

}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

