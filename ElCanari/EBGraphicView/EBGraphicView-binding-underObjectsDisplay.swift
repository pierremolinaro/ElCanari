//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------
//   EBGraphicView
//----------------------------------------------------------------------------------------------------------------------

extension EBGraphicView {

  //····················································································································

  final func bind_underObjectsDisplay (_ model : EBReadOnlyProperty_EBShape, file : String, line : Int) {
    self.mUnderObjectsDisplayController = EBSimpleController (
      observedObjects: [model],
      callBack: { [weak self] in self?.updateUnderObjectsDisplay (from: model) }
    )
  }

  //····················································································································

  final func unbind_underObjectsDisplay () {
    self.mUnderObjectsDisplayController?.unregister ()
    self.mUnderObjectsDisplayController = nil
  }

  //····················································································································

  final private func updateUnderObjectsDisplay (from model : EBReadOnlyProperty_EBShape) {
    switch model.prop {
    case .empty, .multiple :
      self.mUnderObjectsDisplay = EBShape ()
    case .single (let v) :
      self.mUnderObjectsDisplay = v
    }
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
