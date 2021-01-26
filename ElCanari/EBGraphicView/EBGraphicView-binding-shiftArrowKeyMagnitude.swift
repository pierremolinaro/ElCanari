//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------
//   EBGraphicView
//----------------------------------------------------------------------------------------------------------------------

extension EBGraphicView {

 //····················································································································

  final func bind_shiftArrowKeyMagnitude (_ model : EBReadOnlyProperty_Int, file:String, line:Int) {
    self.mShiftArrowKeyMagnitudeController = EBReadOnlyPropertyController (
      observedObjects: [model],
      callBack: { [weak self] in self?.updateShiftArrowKeyMagnitude (from: model) }
    )
  }

 //····················································································································

  final func unbind_shiftArrowKeyMagnitude () {
    self.mShiftArrowKeyMagnitudeController?.unregister ()
    self.mShiftArrowKeyMagnitudeController = nil
  }

  //····················································································································

  final private func updateShiftArrowKeyMagnitude (from model : EBReadOnlyProperty_Int) {
    switch model.selection {
    case .empty :
      break
    case .single (let v) :
      self.set (shiftArrowKeyMagnitude: v)
    case .multiple :
      break
    }
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
