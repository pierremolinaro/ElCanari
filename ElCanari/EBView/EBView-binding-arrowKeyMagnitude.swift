//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   EBView
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

extension EBView {

  //····················································································································

  func bind_arrowKeyMagnitude (_ model : EBReadOnlyProperty_CGFloat, file : String, line : Int) {
    self.mArrowKeyMagnitudeController = EBReadOnlyController_CGFloat (
      model: model,
      callBack: { [weak self] in self?.updateArrowKeyMagnitude (from: model) }
    )
  }

  //····················································································································

  func unbind_arrowKeyMagnitude () {
    self.mArrowKeyMagnitudeController?.unregister ()
    self.mArrowKeyMagnitudeController = nil
  }

  //····················································································································

  private func updateArrowKeyMagnitude (from model : EBReadOnlyProperty_CGFloat) {
    switch model.prop {
    case .empty :
      break
    case .single (let v) :
      self.set (arrowKeyMagnitude: v)
    case .multiple :
      break
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————