//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   EBView
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

extension EBView {

  //····················································································································

  func bind_verticalFlip (_ model : EBReadOnlyProperty_Bool, file : String, line : Int) {
    self.mVerticalFlipController = EBSimpleController (
      observedObjects: [model],
      callBack: { [weak self] in self?.updateVerticalFlip (from: model) }
    )
  }

  //····················································································································

  func unbind_verticalFlip () {
    self.mVerticalFlipController?.unregister ()
    self.mVerticalFlipController = nil
  }

  //····················································································································

  private func updateVerticalFlip (from model : EBReadOnlyProperty_Bool) {
    switch model.prop {
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
