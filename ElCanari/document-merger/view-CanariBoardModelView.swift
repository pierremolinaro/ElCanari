//
//  CanariBoardModelView.swift
//  ElCanari
//
//  Created by Pierre Molinaro on 23/06/2018.
//
//
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   CanariBoardModelView
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class CanariBoardModelView : CanariViewWithZoomAndFlip {

   fileprivate var mBackgroundLayer = CAShapeLayer ()
   fileprivate var mNoModelTextLayer = CATextLayer ()
   fileprivate var mViaPadLayer = CALayer ()
   fileprivate var mViaHoleLayer = CALayer ()
   fileprivate var mFrontComponentNamesLayer = CALayer ()

   fileprivate var mDisplayPads = true
   fileprivate var mDisplayHoles = true
   fileprivate var mDisplayFrontComponentNames = true

   fileprivate var mViaPadLayerComponents = [CAShapeLayer] ()
   fileprivate var mViaHoleLayerComponents = [CAShapeLayer] ()
   fileprivate var mFrontComponentNamesLayerComponents = [CAShapeLayer] ()

  //····················································································································
  //  awakeFromNib
  //····················································································································

  final override func awakeFromNib () {
    CATransaction.begin()
    self.layer?.addSublayer (mBackgroundLayer)
    self.layer?.addSublayer (mNoModelTextLayer)
    self.layer?.addSublayer (mViaPadLayer)
    self.layer?.addSublayer (mFrontComponentNamesLayer)
    self.layer?.addSublayer (mViaHoleLayer)
    CATransaction.commit ()
  }

  //····················································································································
  //  Set size
  //····················································································································

  override func setSize (width : Int, height : Int) {
    super.setSize (width:width, height:height)
    let noModel = (width == 0) || (height == 0)
    if noModel {
      mBackgroundLayer.fillColor = nil
      mBackgroundLayer.strokeColor = nil
      mNoModelTextLayer.frame = self.frame
      mNoModelTextLayer.foregroundColor = NSColor.black.cgColor
      mNoModelTextLayer.contentsScale = NSScreen.main ()!.backingScaleFactor
      mNoModelTextLayer.alignmentMode = kCAAlignmentCenter
      mNoModelTextLayer.string = "No Model"
    }else{
      mBackgroundLayer.path = CGPath (rect: self.bounds, transform: nil)
      mBackgroundLayer.position = CGPoint (x:0.0, y:0.0)
      mBackgroundLayer.fillColor = NSColor.white.cgColor
      mNoModelTextLayer.string = ""
    }
  }

  //····················································································································
  //    Update via display
  //····················································································································

  func updateViaDisplay () {
    mViaPadLayer.sublayers = mDisplayPads ? mViaPadLayerComponents : nil
  }

  //····················································································································
  //    Update hole display
  //····················································································································

  func updateHoleDisplay () {
    mViaHoleLayer.sublayers = mDisplayHoles ? mViaHoleLayerComponents : nil
  }

  //····················································································································
  //    Update front component name display
  //····················································································································

  func updateFrontComponentNamesDisplay () {
    mFrontComponentNamesLayer.sublayers = mDisplayFrontComponentNames ? mFrontComponentNamesLayerComponents : nil
  }

  //····················································································································
  //    vias
  //····················································································································

  private var mViasController : Controller_CanariBoardModelView_vias?

  func bind_vias (_ vias:EBReadOnlyProperty_MergerViaShapeArray, file:String, line:Int) {
    mViasController = Controller_CanariBoardModelView_vias (vias:vias, outlet:self, file:file, line:line)
  }

  func unbind_vias () {
    mViasController?.unregister ()
    mViasController = nil
  }

  //····················································································································

  func setVias (_ inVias : [MergerViaShape]) {
    mViaPadLayerComponents = [CAShapeLayer] ()
    mViaHoleLayerComponents = [CAShapeLayer] ()
    for via in inVias {
    //--- Pad
      let padShape = via.viaPad (color : NSColor.black.cgColor)
      mViaPadLayerComponents.append (padShape)
    //--- Hole
      let holeShape = via.viaHole (color : NSColor.white.cgColor)
      mViaHoleLayerComponents.append (holeShape)
    }
    updateViaDisplay ()
    updateHoleDisplay ()
  }

  //····················································································································
  //    Display pads
  //····················································································································

  private var mDisplayPadsController : Controller_CanariBoardModelView_displayPads?

  func bind_displayPads (_ display:EBReadOnlyProperty_Bool, file:String, line:Int) {
    mDisplayPadsController = Controller_CanariBoardModelView_displayPads (display:display, outlet:self, file:file, line:line)
  }

  func unbind_displayPads () {
    mDisplayPadsController?.unregister ()
    mDisplayPadsController = nil
  }

  //····················································································································

  func setDisplayPads (_ inDisplay : Bool) {
    mDisplayPads = inDisplay
    updateViaDisplay ()
  }

  //····················································································································
  //    Display holes
  //····················································································································

  private var mDisplayHolesController : Controller_CanariBoardModelView_displayHoles?

  func bind_displayHoles (_ display:EBReadOnlyProperty_Bool, file:String, line:Int) {
    mDisplayHolesController = Controller_CanariBoardModelView_displayHoles (display:display, outlet:self, file:file, line:line)
  }

  func unbind_displayHoles () {
    mDisplayHolesController?.unregister ()
    mDisplayHolesController = nil
  }

  //····················································································································

  func setDisplayHoles (_ inDisplay : Bool) {
    mDisplayHoles = inDisplay
    updateHoleDisplay ()
  }

  //····················································································································
  //    Front component names
  //····················································································································

  private var mFrontComponentNamesController : Controller_CanariBoardModelView_frontComponentNameSegments?

  func bind_frontComponentNameSegments (_ segments:EBReadOnlyProperty_MergerSegmentArray, file:String, line:Int) {
    mFrontComponentNamesController = Controller_CanariBoardModelView_frontComponentNameSegments (segments:segments, outlet:self, file:file, line:line)
  }

  func unbind_frontComponentNameSegments () {
    mFrontComponentNamesController?.unregister ()
    mFrontComponentNamesController = nil
  }

  //····················································································································

  func setFrontComponentNameSegments (_ inSegments : [MergerSegment]) {
    mFrontComponentNamesLayerComponents = [CAShapeLayer] ()
    for segment in inSegments {
      let shape = segment.segmentShape (color:NSColor.black.cgColor)
      mFrontComponentNamesLayerComponents.append (shape)
    }
    updateFrontComponentNamesDisplay ()
  }

  //····················································································································
  //    Display front component names
  //····················································································································

  private var mDisplayFrontComponentNamesController : Controller_CanariBoardModelView_displayFrontComponentNames?

  func bind_displayFrontComponentNames (_ display:EBReadOnlyProperty_Bool, file:String, line:Int) {
    mDisplayFrontComponentNamesController = Controller_CanariBoardModelView_displayFrontComponentNames (display:display, outlet:self, file:file, line:line)
  }

  func unbind_displayFrontComponentNames () {
    mDisplayFrontComponentNamesController?.unregister ()
    mDisplayFrontComponentNamesController = nil
  }

  //····················································································································

  func setDisplayFrontComponentNames (_ inDisplay : Bool) {
    mDisplayFrontComponentNames = inDisplay
    updateFrontComponentNamesDisplay ()
  }

  //····················································································································

}


//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   Controller_CanariBoardModelView_vias
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class Controller_CanariBoardModelView_vias : EBSimpleController {

  private let mVias : EBReadOnlyProperty_MergerViaShapeArray
  private let mOutlet : CanariBoardModelView

  //····················································································································

  init (vias : EBReadOnlyProperty_MergerViaShapeArray, outlet : CanariBoardModelView, file : String, line : Int) {
    mVias = vias
    mOutlet = outlet
    super.init (objects:[vias], outlet:outlet)
    mVias.addEBObserver (self)
  }

  //····················································································································
  
  func unregister () {
    mVias.removeEBObserver (self)
  }

  //····················································································································

  override func sendUpdateEvent () {
    switch mVias.prop {
    case .noSelection :
      mOutlet.setVias ([])
    case .singleSelection (let v) :
      mOutlet.setVias (v.shapeArray)
    case .multipleSelection :
      mOutlet.setVias ([])
    }
  }

  //····················································································································
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   Controller_CanariBoardModelView_displayPads
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class Controller_CanariBoardModelView_displayPads : EBSimpleController {

  private let mDisplay : EBReadOnlyProperty_Bool
  private let mOutlet : CanariBoardModelView

  //····················································································································

  init (display : EBReadOnlyProperty_Bool, outlet : CanariBoardModelView, file : String, line : Int) {
    mDisplay = display
    mOutlet = outlet
    super.init (objects:[display], outlet:outlet)
    mDisplay.addEBObserver (self)
  }

  //····················································································································
  
  func unregister () {
    mDisplay.removeEBObserver (self)
  }

  //····················································································································

  override func sendUpdateEvent () {
    switch mDisplay.prop {
    case .noSelection :
      mOutlet.setDisplayPads (false)
    case .singleSelection (let v) :
      mOutlet.setDisplayPads (v)
    case .multipleSelection :
      mOutlet.setDisplayPads (false)
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   Controller_CanariBoardModelView_displayHoles
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class Controller_CanariBoardModelView_displayHoles : EBSimpleController {

  private let mDisplay : EBReadOnlyProperty_Bool
  private let mOutlet : CanariBoardModelView

  //····················································································································

  init (display : EBReadOnlyProperty_Bool, outlet : CanariBoardModelView, file : String, line : Int) {
    mDisplay = display
    mOutlet = outlet
    super.init (objects:[display], outlet:outlet)
    mDisplay.addEBObserver (self)
  }

  //····················································································································
  
  func unregister () {
    mDisplay.removeEBObserver (self)
  }

  //····················································································································

  override func sendUpdateEvent () {
    switch mDisplay.prop {
    case .noSelection :
      mOutlet.setDisplayHoles (false)
    case .singleSelection (let v) :
      mOutlet.setDisplayHoles (v)
    case .multipleSelection :
      mOutlet.setDisplayHoles (false)
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   Controller_CanariBoardModelView_frontComponentNameSegments
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class Controller_CanariBoardModelView_frontComponentNameSegments : EBSimpleController {

  private let mSegments : EBReadOnlyProperty_MergerSegmentArray
  private let mOutlet : CanariBoardModelView

  //····················································································································

  init (segments : EBReadOnlyProperty_MergerSegmentArray, outlet : CanariBoardModelView, file : String, line : Int) {
    mSegments = segments
    mOutlet = outlet
    super.init (objects:[segments], outlet:outlet)
    mSegments.addEBObserver (self)
  }

  //····················································································································
  
  func unregister () {
    mSegments.removeEBObserver (self)
  }

  //····················································································································

  override func sendUpdateEvent () {
    switch mSegments.prop {
    case .noSelection :
      mOutlet.setFrontComponentNameSegments ([])
    case .singleSelection (let v) :
      mOutlet.setFrontComponentNameSegments (v.segmentArray)
    case .multipleSelection :
      mOutlet.setFrontComponentNameSegments ([])
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   Controller_CanariBoardModelView_displayFrontComponentNames
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class Controller_CanariBoardModelView_displayFrontComponentNames : EBSimpleController {

  private let mDisplay : EBReadOnlyProperty_Bool
  private let mOutlet : CanariBoardModelView

  //····················································································································

  init (display : EBReadOnlyProperty_Bool, outlet : CanariBoardModelView, file : String, line : Int) {
    mDisplay = display
    mOutlet = outlet
    super.init (objects:[display], outlet:outlet)
    mDisplay.addEBObserver (self)
  }

  //····················································································································
  
  func unregister () {
    mDisplay.removeEBObserver (self)
  }

  //····················································································································

  override func sendUpdateEvent () {
    switch mDisplay.prop {
    case .noSelection :
      mOutlet.setDisplayFrontComponentNames (false)
    case .singleSelection (let v) :
      mOutlet.setDisplayFrontComponentNames (v)
    case .multipleSelection :
      mOutlet.setDisplayFrontComponentNames (false)
    }
  }

  //····················································································································

}
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
