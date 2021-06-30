//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   EBGraphicView
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

extension EBGraphicView {

  //····················································································································

  final func bind_mouseGrid (_ model : EBReadOnlyProperty_Int) {
    self.mMouseGridController = EBReadOnlyPropertyController (
      observedObjects: [model],
      callBack: { [weak self] in self?.updateMouseGrid (from: model) }
    )
  }

  //····················································································································

  final func unbind_mouseGrid () {
    self.mMouseGridController?.unregister ()
    self.mMouseGridController = nil
  }

  //····················································································································

  final private func updateMouseGrid (from model : EBReadOnlyProperty_Int) {
    switch model.selection {
    case .empty, .multiple :
      self.set (mouseGridInCanariUnit: 1)
    case .single (let v) :
      self.set (mouseGridInCanariUnit: v)
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
