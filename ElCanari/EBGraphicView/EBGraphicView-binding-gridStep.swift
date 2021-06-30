//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   EBGraphicView
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

extension EBGraphicView {

  //····················································································································

  final func bind_gridStep (_ model : EBReadOnlyProperty_Int) {
    self.mGridStepController = EBReadOnlyPropertyController (
      observedObjects: [model],
      callBack: { [weak self] in self?.updateGridStep (from: model) }
    )
  }

  //····················································································································

  final func unbind_gridStep () {
    self.mGridStepController?.unregister ()
    self.mGridStepController = nil
  }

  //····················································································································

  final private func updateGridStep (from model : EBReadOnlyProperty_Int) {
    switch model.selection {
    case .empty, .multiple :
      self.mGridStepInCanariUnit = milsToCanariUnit (fromInt: 25)
    case .single (let v) :
      self.mGridStepInCanariUnit = v
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
