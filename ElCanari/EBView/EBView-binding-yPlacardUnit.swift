//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   EBView
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

extension EBView {

  //····················································································································

  func bind_yPlacardUnit (_ model : EBReadOnlyProperty_Int, file : String, line : Int) {
    self.mYPlacardUnitController = EBReadOnlyController_Int (
      model: model,
      callBack: { [weak self] in self?.updateYPlacardUnit (from: model) }
    )
  }

  func unbind_yPlacardUnit () {
    self.mYPlacardUnitController?.unregister ()
    self.mYPlacardUnitController = nil
  }

  //····················································································································

  private func updateYPlacardUnit (from model : EBReadOnlyProperty_Int) {
    switch model.prop {
    case .empty, .multiple :
      self.set (YPlacardUnit: 2286) // mils
    case .single (let v) :
      self.set (YPlacardUnit: v)
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
