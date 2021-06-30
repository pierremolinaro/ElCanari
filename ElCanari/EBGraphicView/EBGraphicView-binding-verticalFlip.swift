//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   EBGraphicView
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

extension EBGraphicView {

  //····················································································································

  final func bind_verticalFlip (_ model : EBReadOnlyProperty_Bool) {
    self.mVerticalFlipController = EBReadOnlyPropertyController (
      observedObjects: [model],
      callBack: { [weak self] in self?.updateVerticalFlip (from: model) }
    )
  }

  //····················································································································

  final func unbind_verticalFlip () {
    self.mVerticalFlipController?.unregister ()
    self.mVerticalFlipController = nil
  }

  //····················································································································

  final private func updateVerticalFlip (from model : EBReadOnlyProperty_Bool) {
    switch model.selection {
    case .empty :
      self.setVerticalFlip (false)
    case .single (let v) :
      self.setVerticalFlip (v)
    case .multiple :
      self.setVerticalFlip (false)
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
