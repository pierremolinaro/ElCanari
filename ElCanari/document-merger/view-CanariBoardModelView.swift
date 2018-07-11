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

fileprivate let OPAQUE_LAYERS = true ;
fileprivate let DRAWS_ASYNCHRONOUSLY = true ;

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   CanariBoardModelView
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class CanariBoardModelView : CanariViewWithZoomAndFlip {

  //····················································································································
  //  Outlets
  //····················································································································

   @IBOutlet fileprivate weak var mViewEventDelegate : DelegateForMergerBoardViewEvents? = nil

  //····················································································································
  //  Properties
  //····················································································································

   fileprivate var mObjectLayer = CALayer ()
   fileprivate var mSelectionLayer = CALayer ()

  //····················································································································
  //  awakeFromNib
  //····················································································································

  final override func awakeFromNib () {
    self.layer?.drawsAsynchronously = DRAWS_ASYNCHRONOUSLY
    self.layer?.isOpaque = OPAQUE_LAYERS

    self.mObjectLayer.drawsAsynchronously = DRAWS_ASYNCHRONOUSLY
    self.mObjectLayer.isOpaque = OPAQUE_LAYERS
    self.layer?.addSublayer (mObjectLayer)
    self.layer?.addSublayer (mSelectionLayer)
  }

  //····················································································································
  //    Object Layer
  //····················································································································

  private var mObjectLayerController : Controller_CanariBoardModelView_objectLayer?

  func bind_objectLayer (_ layer:EBReadOnlyProperty_CALayer, file:String, line:Int) {
    mObjectLayerController = Controller_CanariBoardModelView_objectLayer (layer:layer, outlet:self)
  }

  //····················································································································

  func unbind_objectLayer () {
    mObjectLayerController?.unregister ()
    mObjectLayerController = nil
  }

  //····················································································································
  //    Selection Layer
  //····················································································································

  var selectionLayer : CALayer { return mSelectionLayer }

  //····················································································································
  // Mouse Events
  //····················································································································

  override func mouseDown (with inEvent: NSEvent) {
    let mouseDownLocation = self.convert (inEvent.locationInWindow, from:nil)
    if let result = self.mObjectLayer.findLayer (at: mouseDownLocation) {
      // NSLog ("HIT \(Unmanaged<CALayer>.passUnretained (result).toOpaque()), --> \(result.name)")
      if let name = result.name, let idx = Int (name) {
        mViewEventDelegate?.mouseDown (with:inEvent, objectIndex:idx) // No object
      }else{
        mViewEventDelegate?.mouseDown (with:inEvent, objectIndex:-1) // No object
      }
    }else{
      mViewEventDelegate?.mouseDown (with: inEvent, objectIndex: -1) // No object
     // NSLog ("HIT nil")
    }
    super.mouseDown (with: inEvent)
  }

  //····················································································································
  // key Events
  //····················································································································

  override func keyDown (with inEvent: NSEvent) {
    mViewEventDelegate?.keyDown (with:inEvent)
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   Controller_CanariBoardModelView_objectLayer
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class Controller_CanariBoardModelView_objectLayer : EBSimpleController {

  private let mLayer : EBReadOnlyProperty_CALayer
  private let mOutlet : CanariBoardModelView

  //····················································································································

  init (layer : EBReadOnlyProperty_CALayer, outlet : CanariBoardModelView) {
    mLayer = layer
    mOutlet = outlet
    super.init (observedObjects:[layer], outlet:outlet)
    self.eventCallBack = { [weak self] in self?.updateOutlet () }
  }

  //····················································································································

  private func updateOutlet () {
    switch mLayer.prop {
    case .empty :
      mOutlet.mObjectLayer.sublayers = nil
    case .single (let v) :
      mOutlet.mObjectLayer.sublayers = [v]
    case .multiple :
      mOutlet.mObjectLayer.sublayers = nil
    }
  }

  //····················································································································

}


//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
