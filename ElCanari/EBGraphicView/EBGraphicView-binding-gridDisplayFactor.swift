//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   EBGraphicView
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

extension EBGraphicView {

  //····················································································································

  final func bind_gridDisplayFactor (_ model : EBReadOnlyProperty_Int) {
    self.mGridDisplayFactorController = EBReadOnlyPropertyController (
      observedObjects: [model],
      callBack: { [weak self] in self?.updateGridDisplayFactor (from: model) }
    )
  }

  //····················································································································

  final func unbind_gridDisplayFactor () {
    self.mGridDisplayFactorController?.unregister ()
    self.mGridDisplayFactorController = nil
  }

  //····················································································································

  final private func updateGridDisplayFactor (from model : EBReadOnlyProperty_Int) {
    switch model.selection {
    case .empty, .multiple :
      self.mGridDisplayFactor = 4
    case .single (let v) :
      self.mGridDisplayFactor = v
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
