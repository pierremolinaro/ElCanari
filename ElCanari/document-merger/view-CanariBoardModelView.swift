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
   fileprivate var mFrontTracksLayer = CALayer ()
   fileprivate var mBackTracksLayer = CALayer ()
   fileprivate var mBackComponentNamesLayer = CALayer ()
   fileprivate var mFrontComponentValuesLayer = CALayer ()
   fileprivate var mBackComponentValuesLayer = CALayer ()
   fileprivate var mFrontPackagesLayer = CALayer ()
   fileprivate var mBackPackagesLayer = CALayer ()
   fileprivate var mBoardLimitsLayer = CALayer ()

  //····················································································································
  //  awakeFromNib
  //····················································································································

  final override func awakeFromNib () {
   // CATransaction.begin()
    self.layer?.addSublayer (mBackgroundLayer)
    self.layer?.addSublayer (mNoModelTextLayer)
    self.layer?.addSublayer (mViaPadLayer)
    self.layer?.addSublayer (mBackPackagesLayer)
    self.layer?.addSublayer (mBackComponentNamesLayer)
    self.layer?.addSublayer (mBackComponentValuesLayer)
    self.layer?.addSublayer (mBackTracksLayer)
    self.layer?.addSublayer (mFrontTracksLayer)
    self.layer?.addSublayer (mFrontPackagesLayer)
    self.layer?.addSublayer (mFrontComponentValuesLayer)
    self.layer?.addSublayer (mFrontComponentNamesLayer)
    self.layer?.addSublayer (mBoardLimitsLayer)
    self.layer?.addSublayer (mViaHoleLayer)
 //   CATransaction.commit ()
  }

  //····················································································································
  //  Set size
  //····················································································································

  override func setBoardModelSize (width : Int, height : Int) {
    super.setBoardModelSize (width:width, height:height)
    let noModel = (width == 0) || (height == 0)
    if noModel {
      mBackgroundLayer.fillColor = nil
      mBackgroundLayer.strokeColor = nil
      mNoModelTextLayer.frame = self.bounds
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
    var viaPadLayerComponents = [CAShapeLayer] ()
    var viaHoleLayerComponents = [CAShapeLayer] ()
    for via in inVias {
    //--- Pad
      let padShape = via.viaPad (color : NSColor.black.cgColor)
      viaPadLayerComponents.append (padShape)
    //--- Hole
      let holeShape = via.viaHole (color : NSColor.white.cgColor)
      viaHoleLayerComponents.append (holeShape)
    }
    mViaPadLayer.sublayers = viaPadLayerComponents
    mViaHoleLayer.sublayers = viaHoleLayerComponents
  }

  //····················································································································
  //    Front component names
  //····················································································································

  private var mFrontComponentNamesController : Controller_CanariBoardModelView_generic_MergerSegmentArray?

  func bind_frontComponentNames (_ segments:EBReadOnlyProperty_MergerSegmentArray, file:String, line:Int) {
    mFrontComponentNamesController = Controller_CanariBoardModelView_generic_MergerSegmentArray (
      segments:segments,
      outlet:self,
      callBack: { (_ inSegments : [MergerSegment]) in
        var components = [CAShapeLayer] ()
        for segment in inSegments {
          let shape = segment.segmentShape (color:NSColor.orange.cgColor)
          components.append (shape)
        }
        self.mFrontComponentNamesLayer.sublayers = components
      }
    )
  }

  func unbind_frontComponentNames () {
    mFrontComponentNamesController?.unregister ()
    mFrontComponentNamesController = nil
  }

  //····················································································································
  //    Back component names
  //····················································································································

  private var mBackComponentNamesController : Controller_CanariBoardModelView_generic_MergerSegmentArray?

  func bind_backComponentNames (_ segments:EBReadOnlyProperty_MergerSegmentArray, file:String, line:Int) {
    mBackComponentNamesController = Controller_CanariBoardModelView_generic_MergerSegmentArray (
      segments:segments,
      outlet:self,
      callBack: { (_ inSegments : [MergerSegment]) in
        var components = [CAShapeLayer] ()
        for segment in inSegments {
          let shape = segment.segmentShape (color:NSColor.gray.cgColor)
          components.append (shape)
        }
        self.mBackComponentNamesLayer.sublayers = components
      }
    )
  }

  func unbind_backComponentNames () {
    mBackComponentNamesController?.unregister ()
    mBackComponentNamesController = nil
  }

  //····················································································································
  //    Front tracks
  //····················································································································

  private var mFrontTracksController : Controller_CanariBoardModelView_generic_MergerSegmentArray?

  func bind_frontTracks (_ segments:EBReadOnlyProperty_MergerSegmentArray, file:String, line:Int) {
    mFrontTracksController = Controller_CanariBoardModelView_generic_MergerSegmentArray (
      segments:segments,
      outlet:self,
      callBack: { (_ inSegments : [MergerSegment]) in
        var components = [CAShapeLayer] ()
        for segment in inSegments {
          let shape = segment.segmentShape (color:NSColor.blue.cgColor)
          components.append (shape)
        }
        self.mFrontTracksLayer.sublayers = components
      }
    )
  }

  func unbind_frontTracks () {
    mFrontTracksController?.unregister ()
    mFrontTracksController = nil
  }

  //····················································································································
  //    Back tracks
  //····················································································································

  private var mBackTracksController : Controller_CanariBoardModelView_generic_MergerSegmentArray?

  func bind_backTracks (_ segments:EBReadOnlyProperty_MergerSegmentArray, file:String, line:Int) {
    mBackTracksController = Controller_CanariBoardModelView_generic_MergerSegmentArray (
      segments:segments,
      outlet:self,
      callBack: { (_ inSegments : [MergerSegment]) in
        var components = [CAShapeLayer] ()
        for segment in inSegments {
          let shape = segment.segmentShape (color:NSColor.green.cgColor)
          components.append (shape)
        }
        self.mBackTracksLayer.sublayers = components
      }
    )
  }

  func unbind_backTracks () {
    mBackTracksController?.unregister ()
    mBackTracksController = nil
  }

  //····················································································································
  //    Front component values
  //····················································································································

  private var mFrontComponentValuesController : Controller_CanariBoardModelView_generic_MergerSegmentArray?

  func bind_frontComponentValues (_ segments:EBReadOnlyProperty_MergerSegmentArray, file:String, line:Int) {
    mFrontComponentValuesController = Controller_CanariBoardModelView_generic_MergerSegmentArray (
      segments:segments,
      outlet:self,
      callBack: { (_ inSegments : [MergerSegment]) in
        var components = [CAShapeLayer] ()
        for segment in inSegments {
          let shape = segment.segmentShape (color:NSColor.brown.cgColor)
          components.append (shape)
        }
        self.mFrontComponentValuesLayer.sublayers = components
      }
    )
  }

  func unbind_frontComponentValues () {
    mFrontComponentValuesController?.unregister ()
    mFrontComponentValuesController = nil
  }

  //····················································································································
  //    Back component values
  //····················································································································

  private var mBackComponentValuesController : Controller_CanariBoardModelView_generic_MergerSegmentArray?

  func bind_backComponentValues (_ segments:EBReadOnlyProperty_MergerSegmentArray, file:String, line:Int) {
    mBackComponentValuesController = Controller_CanariBoardModelView_generic_MergerSegmentArray (
      segments:segments,
      outlet:self,
      callBack: { (_ inSegments : [MergerSegment]) in
        var components = [CAShapeLayer] ()
        for segment in inSegments {
          let shape = segment.segmentShape (color:NSColor.gray.cgColor)
          components.append (shape)
        }
        self.mBackComponentValuesLayer.sublayers = components
      }
    )
  }

  func unbind_backComponentValues () {
    mBackComponentValuesController?.unregister ()
    mBackComponentValuesController = nil
  }

  //····················································································································
  //    Front packages
  //····················································································································

  private var mFrontPackagesController : Controller_CanariBoardModelView_generic_MergerSegmentArray?

  func bind_frontPackages (_ segments:EBReadOnlyProperty_MergerSegmentArray, file:String, line:Int) {
    mFrontPackagesController = Controller_CanariBoardModelView_generic_MergerSegmentArray (
      segments:segments,
      outlet:self,
      callBack: { (_ inSegments : [MergerSegment]) in
        var components = [CAShapeLayer] ()
        for segment in inSegments {
          let shape = segment.segmentShape (color:NSColor.brown.cgColor)
          components.append (shape)
        }
        self.mFrontPackagesLayer.sublayers = components
      }
    )
  }

  func unbind_frontPackages () {
    mFrontPackagesController?.unregister ()
    mFrontPackagesController = nil
  }

  //····················································································································
  //    Back packages
  //····················································································································

  private var mBackPackagesController : Controller_CanariBoardModelView_generic_MergerSegmentArray?

  func bind_backPackages (_ segments:EBReadOnlyProperty_MergerSegmentArray, file:String, line:Int) {
    mBackPackagesController = Controller_CanariBoardModelView_generic_MergerSegmentArray (
      segments:segments,
      outlet:self,
      callBack: { (_ inSegments : [MergerSegment]) in
        var components = [CAShapeLayer] ()
        for segment in inSegments {
          let shape = segment.segmentShape (color:NSColor.gray.cgColor)
          components.append (shape)
        }
        self.mBackPackagesLayer.sublayers = components
      }
    )
  }

  func unbind_backPackages () {
    mBackPackagesController?.unregister ()
    mBackPackagesController = nil
  }

  //····················································································································
  //    Board limits
  //····················································································································

  private var mBoardLimitsController : Controller_CanariBoardModelView_boardLimits?

  func bind_boardLimits (_ limits:EBReadOnlyProperty_MergerBoardLimits, file:String, line:Int) {
    mBoardLimitsController = Controller_CanariBoardModelView_boardLimits (limits:limits, outlet:self)
  }

  //····················································································································

  func unbind_boardLimits () {
    mBoardLimitsController?.unregister ()
    mBoardLimitsController = nil
  }

  //····················································································································

  func setBoardLimits (_ inLimits : MergerBoardLimits) {
   var components = [CAShapeLayer] ()
    if inLimits.lineWidth > 0 {
      let boardWith = canariUnitToCocoa (inLimits.boardWidth)
      let boardHeight = canariUnitToCocoa (inLimits.boardHeight)
      let lineWidth = canariUnitToCocoa (inLimits.lineWidth)
      let path = CGMutablePath ()
      path.move    (to:CGPoint (x:lineWidth / 2.0,             y:lineWidth / 2.0))
      path.addLine (to:CGPoint (x:lineWidth / 2.0,             y:boardHeight - lineWidth / 2.0))
      path.addLine (to:CGPoint (x:boardWith - lineWidth / 2.0, y:boardHeight - lineWidth / 2.0))
      path.addLine (to:CGPoint (x:boardWith - lineWidth / 2.0, y:lineWidth / 2.0))
      path.addLine (to:CGPoint (x:lineWidth / 2.0,             y:lineWidth / 2.0))
      let shape = CAShapeLayer ()
      shape.path = path
      shape.position = CGPoint (x:0.0, y:0.0)
      shape.strokeColor = NSColor.brown.cgColor
      shape.fillColor = nil
      shape.lineWidth = lineWidth
      shape.lineCap = kCALineCapSquare
      shape.lineJoin = kCALineJoinMiter
      components.append (shape)
    }
    self.mBoardLimitsLayer.sublayers = components
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
    super.init (observedObjects:[vias], outlet:outlet)
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
//   Controller_CanariBoardModelView_generic_MergerSegmentArray
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class Controller_CanariBoardModelView_generic_MergerSegmentArray : EBSimpleController {

  private let mSegments : EBReadOnlyProperty_MergerSegmentArray
  private let mOutlet : CanariBoardModelView
  private let mCallBack : ([MergerSegment]) -> Void

  //····················································································································

  init (segments : EBReadOnlyProperty_MergerSegmentArray, outlet : CanariBoardModelView, callBack inCallBack : @escaping ([MergerSegment]) -> Void) {
    mSegments = segments
    mOutlet = outlet
    mCallBack = inCallBack
    super.init (observedObjects:[segments], outlet:outlet)
  }

  //····················································································································

  override func sendUpdateEvent () {
    switch mSegments.prop {
    case .noSelection :
      mCallBack ([])
    case .singleSelection (let v) :
      mCallBack (v.segmentArray)
    case .multipleSelection :
      mCallBack ([])
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   Controller_CanariBoardModelView_boardLimits
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class Controller_CanariBoardModelView_boardLimits : EBSimpleController {

  private let mLimits : EBReadOnlyProperty_MergerBoardLimits
  private let mOutlet : CanariBoardModelView

  //····················································································································

  init (limits : EBReadOnlyProperty_MergerBoardLimits, outlet : CanariBoardModelView) {
    mLimits = limits
    mOutlet = outlet
    super.init (observedObjects:[limits], outlet:outlet)
  }

  //····················································································································

  override func sendUpdateEvent () {
    switch mLimits.prop {
    case .noSelection :
      mOutlet.setBoardLimits (MergerBoardLimits ())
    case .singleSelection (let v) :
      mOutlet.setBoardLimits (v)
    case .multipleSelection :
      mOutlet.setBoardLimits (MergerBoardLimits ())
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
