//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------
//   EBGraphicView
//----------------------------------------------------------------------------------------------------------------------

extension EBGraphicView {

  //····················································································································

  final func bind_backgroundImageData (_ model : EBReadOnlyProperty_Data, file : String, line : Int) {
    self.mBackgroundImageDataController = EBSimpleController (
      observedObjects: [model],
      callBack: { [weak self] in self?.updateBackgroundImageData (from: model) }
    )
  }

  //····················································································································

  final func unbind_backgroundImageData () {
    self.mBackgroundImageDataController?.unregister ()
    self.mBackgroundImageDataController = nil
  }

  //····················································································································

  final private func updateBackgroundImageData (from model : EBReadOnlyProperty_Data) {
    if self.mBackgroundImage != nil {
      self.mBackgroundImage = nil
      self.updateViewFrameAndBounds ()
      self.needsDisplay = true
    }
    switch model.selection {
    case .empty :
      break
    case .single (let v) :
      if let ciImage = CIImage (data: v) {
        self.mBackgroundImage = ciImage
        self.updateViewFrameAndBounds ()
        self.needsDisplay = true
      }
    case .multiple :
      break
    }
  }

  //····················································································································

  final func bind_backgroundImageOpacity (_ model : EBReadOnlyProperty_Double, file : String, line : Int) {
    self.mBackgroundImageOpacityController = EBSimpleController (
      observedObjects: [model],
      callBack: { [weak self] in self?.updateBackgroundImageOpacity (from: model) }
    )
  }

  //····················································································································

  final func unbind_backgroundImageOpacity () {
    self.mBackgroundImageOpacityController?.unregister ()
    self.mBackgroundImageOpacityController = nil
  }

  //····················································································································

  final private func updateBackgroundImageOpacity (from model : EBReadOnlyProperty_Double) {
    switch model.selection {
    case .empty :
      break
    case .single (let v) :
      self.mBackgroundImageOpacity = CGFloat (v)
      self.needsDisplay = true
    case .multiple :
      break
    }
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
