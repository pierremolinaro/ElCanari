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
  @IBOutlet var mBoardInsertMenu : CanariBoardInsertMenu?
  @IBOutlet var mBoardModelTableView : EBTableView?
  @IBOutlet var mBoardModelView : CanariBoardModelView?
  @IBOutlet var mBoardWidthTextField : CanariDimensionTextField?
  @IBOutlet var mBoardWidthUnitPopUp : EBPopUpButton?
  @IBOutlet var mComposedBoardView : CanariBoardModelView?
  @IBOutlet var mPageSegmentedControl : CanariSegmentedControl?
  @IBOutlet var removeBoardModelButton : EBButton?
  @IBOutlet var showPrefsForSettingMergerDisplayButton : EBButton?
  @IBOutlet var updateBoardModelButton : EBButton?

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
    if nil == mBoardInsertMenu {
      presentErrorWindow (file: #file,
                              line: #line,
                              errorMessage: "the 'mBoardInsertMenu' outlet is nil") ;
//    }else if !mBoardInsertMenu!.isKindOfClass (CanariBoardInsertMenu) {
//      presentErrorWindow (file: #file,
//                              line: #line,
//                              errorMessage: "the 'mBoardInsertMenu' outlet is not an instance of 'CanariBoardInsertMenu'") ;
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
    if nil == mComposedBoardView {
      presentErrorWindow (file: #file,
                              line: #line,
                              errorMessage: "the 'mComposedBoardView' outlet is nil") ;
//    }else if !mComposedBoardView!.isKindOfClass (CanariBoardModelView) {
//      presentErrorWindow (file: #file,
//                              line: #line,
//                              errorMessage: "the 'mComposedBoardView' outlet is not an instance of 'CanariBoardModelView'") ;
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
    if nil == removeBoardModelButton {
      presentErrorWindow (file: #file,
                              line: #line,
                              errorMessage: "the 'removeBoardModelButton' outlet is nil") ;
//    }else if !removeBoardModelButton!.isKindOfClass (EBButton) {
//      presentErrorWindow (file: #file,
//                              line: #line,
//                              errorMessage: "the 'removeBoardModelButton' outlet is not an instance of 'EBButton'") ;
    }
    if nil == showPrefsForSettingMergerDisplayButton {
      presentErrorWindow (file: #file,
                              line: #line,
                              errorMessage: "the 'showPrefsForSettingMergerDisplayButton' outlet is nil") ;
//    }else if !showPrefsForSettingMergerDisplayButton!.isKindOfClass (EBButton) {
//      presentErrorWindow (file: #file,
//                              line: #line,
//                              errorMessage: "the 'showPrefsForSettingMergerDisplayButton' outlet is not an instance of 'EBButton'") ;
    }
    if nil == updateBoardModelButton {
      presentErrorWindow (file: #file,
                              line: #line,
                              errorMessage: "the 'updateBoardModelButton' outlet is nil") ;
//    }else if !updateBoardModelButton!.isKindOfClass (EBButton) {
//      presentErrorWindow (file: #file,
//                              line: #line,
//                              errorMessage: "the 'updateBoardModelButton' outlet is not an instance of 'EBButton'") ;
    }
  //--------------------------- Array controllers
    self.mBoardModelController.bind_modelAndView (
      model: self.rootObject.boardModels_property,
      tableViewArray: [mBoardModelTableView!],
      file: #file,
      line: #line
    )
  //--------------------------- Selection controllers
    mBoardModelSelection.bind_selection (
      model: mBoardModelController.selectedArray_property,
      file: #file,
      line: #line
    )
  //--------------------------- Custom object controllers
  //--- Transient compute functions
  //--- Install property observers for transients
  //--- Install regular bindings
    mPageSegmentedControl?.bind_selectedPage (self.rootObject.selectedPageIndex_property, file: #file, line: #line)
    mArtworkNameTextField?.bind_valueObserver (self.mBoardModelSelection.artworkName_property, file: #file, line: #line)
    mBoardWidthUnitPopUp?.bind_selectedTag (self.mBoardModelSelection.boardWidthUnit_property, file: #file, line: #line)
    mBoardWidthTextField?.bind_dimensionAndUnit (self.mBoardModelSelection.boardWidth_property, self.mBoardModelSelection.boardWidthUnit_property, file: #file, line: #line)
    mBoardHeightUnitPopUp?.bind_selectedTag (self.mBoardModelSelection.boardHeightUnit_property, file: #file, line: #line)
    mBoardHeightTextField?.bind_dimensionAndUnit (self.mBoardModelSelection.boardHeight_property, self.mBoardModelSelection.boardHeightUnit_property, file: #file, line: #line)
    mBoardModelView?.bind_size (self.mBoardModelSelection.boardWidth_property, self.mBoardModelSelection.boardHeight_property, file: #file, line: #line)
    mBoardModelView?.bind_zoom (self.mBoardModelSelection.zoom_property, file: #file, line: #line)
    mBoardModelView?.bind_horizontalFlip (g_Preferences!.mergerHorizontalFlip_property, file: #file, line: #line)
    mBoardModelView?.bind_verticalFlip (g_Preferences!.mergerVerticalFlip_property, file: #file, line: #line)
    mBoardModelView?.bind_vias (self.mBoardModelSelection.viaShapesForDisplay_property, file: #file, line: #line)
    mBoardModelView?.bind_frontComponentNames (self.mBoardModelSelection.frontComponentNameSegmentsForDisplay_property, file: #file, line: #line)
    mBoardModelView?.bind_frontComponentValues (self.mBoardModelSelection.frontComponentValuesForDisplay_property, file: #file, line: #line)
    mBoardModelView?.bind_backComponentNames (self.mBoardModelSelection.backComponentNameSegmentsForDisplay_property, file: #file, line: #line)
    mBoardModelView?.bind_backComponentValues (self.mBoardModelSelection.backComponentValuesForDisplay_property, file: #file, line: #line)
    mBoardModelView?.bind_frontTracks (self.mBoardModelSelection.frontTrackSegmentsForDisplay_property, file: #file, line: #line)
    mBoardModelView?.bind_backTracks (self.mBoardModelSelection.backTrackSegmentsForDisplay_property, file: #file, line: #line)
    mBoardModelView?.bind_frontPackages (self.mBoardModelSelection.frontPackagesSegmentsForDisplay_property, file: #file, line: #line)
    mBoardModelView?.bind_backPackages (self.mBoardModelSelection.backPackagesSegmentsForDisplay_property, file: #file, line: #line)
    mBoardModelView?.bind_boardLimits (self.mBoardModelSelection.boardLimits_property, file: #file, line: #line)
    mBoardModelView?.bind_frontPads (self.mBoardModelSelection.frontPadsForDisplay_property, file: #file, line: #line)
    mBoardModelView?.bind_backPads (self.mBoardModelSelection.backPadsForDisplay_property, file: #file, line: #line)

    // mBoardModelView?.bind_holes (self.mBoardModelSelection.holesForDisplay_property, file: #file, line: #line)

    mController_hole_MergerHoleArray = GenericController_MergerHoleArray (
      getPropertyValueCallBack: { return self.mBoardModelSelection.holesForDisplay_property_selection },
      modelDidChange: { (v : EBSelection <MergerHoleArray>) in self.mBoardModelView?.hole_modelDidChange (v) }
    )
    self.mBoardModelSelection.holesForDisplay_property.addEBObserver (self.mController_hole_MergerHoleArray!)

    mBoardModelView?.bind_frontLegendTexts (self.mBoardModelSelection.frontLegendTextsSegmentsForDisplay_property, file: #file, line: #line)
    mBoardModelView?.bind_frontLayoutTexts (self.mBoardModelSelection.frontLayoutTextsSegmentsForDisplay_property, file: #file, line: #line)
    mBoardModelView?.bind_backLegendTexts (self.mBoardModelSelection.backLegendTextsSegmentsForDisplay_property, file: #file, line: #line)
    mBoardModelView?.bind_backLayoutTexts (self.mBoardModelSelection.backLayoutTextsSegmentsForDisplay_property, file: #file, line: #line)
    mBoardInsertMenu?.bind_names (self.rootObject.modelNames_property, file: #file, line: #line)
  //--- Install multiple bindings
    removeBoardModelButton?.bind_enabled (
      [self.mBoardModelController.selectedArray_property.count_property],
      computeFunction:{
        return (self.mBoardModelController.selectedArray_property.count_property.prop > EBSelection.single (0))
      },
      file: #file, line: #line
    )
    updateBoardModelButton?.bind_enabled (
      [self.mBoardModelController.selectedArray_property.count_property],
      computeFunction:{
        return (self.mBoardModelController.selectedArray_property.count_property.prop > EBSelection.single (0))
      },
      file: #file, line: #line
    )
  //--------------------------- Set targets / actions
    showPrefsForSettingMergerDisplayButton?.target = self
    showPrefsForSettingMergerDisplayButton?.action = #selector (PMMergerDocument.showPrefsForSettingMergerDisplayAction (_:))
    addBoardModelButton?.target = self
    addBoardModelButton?.action = #selector (PMMergerDocument.addBoardModelAction (_:))
    removeBoardModelButton?.target = mBoardModelController
    removeBoardModelButton?.action = #selector (ArrayController_PMMergerDocument_mBoardModelController.remove (_:))
    updateBoardModelButton?.target = self
    updateBoardModelButton?.action = #selector (PMMergerDocument.updateBoardModelAction (_:))
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
    mArtworkNameTextField?.unbind_valueObserver ()
    mBoardWidthUnitPopUp?.unbind_selectedTag ()
    mBoardWidthTextField?.unbind_dimensionAndUnit ()
    mBoardHeightUnitPopUp?.unbind_selectedTag ()
    mBoardHeightTextField?.unbind_dimensionAndUnit ()
    mBoardModelView?.unbind_size ()
    mBoardModelView?.unbind_zoom ()
    mBoardModelView?.unbind_horizontalFlip ()
    mBoardModelView?.unbind_verticalFlip ()
    mBoardModelView?.unbind_vias ()
    mBoardModelView?.unbind_frontComponentNames ()
    mBoardModelView?.unbind_frontComponentValues ()
    mBoardModelView?.unbind_backComponentNames ()
    mBoardModelView?.unbind_backComponentValues ()
    mBoardModelView?.unbind_frontTracks ()
    mBoardModelView?.unbind_backTracks ()
    mBoardModelView?.unbind_frontPackages ()
    mBoardModelView?.unbind_backPackages ()
    mBoardModelView?.unbind_boardLimits ()
    mBoardModelView?.unbind_frontPads ()
    mBoardModelView?.unbind_backPads ()

  //  mBoardModelView?.unbind_holes ()
    self.mBoardModelSelection.holesForDisplay_property.removeEBObserver (self.mController_hole_MergerHoleArray!)
    self.mController_hole_MergerHoleArray = nil


    mBoardModelView?.unbind_frontLegendTexts ()
    mBoardModelView?.unbind_frontLayoutTexts ()
    mBoardModelView?.unbind_backLegendTexts ()
    mBoardModelView?.unbind_backLayoutTexts ()
    mBoardInsertMenu?.unbind_names ()
  //--- Unbind multiple bindings
    removeBoardModelButton?.unbind_enabled ()
    updateBoardModelButton?.unbind_enabled ()
  //--- Uninstall compute functions for transients
  //--------------------------- Unbind array controllers
    mBoardModelController.unbind_modelAndView ()
  //--------------------------- Unbind selection controllers
    mBoardModelSelection.unbind_selection ()
  //--- Uninstall property observers for transients
  //--------------------------- Remove targets / actions
    showPrefsForSettingMergerDisplayButton?.target = nil
    addBoardModelButton?.target = nil
    removeBoardModelButton?.target = nil
    updateBoardModelButton?.target = nil
  }

  //····················································································································

  fileprivate var mController_hole_MergerHoleArray : GenericController_MergerHoleArray?
}

//—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————*

