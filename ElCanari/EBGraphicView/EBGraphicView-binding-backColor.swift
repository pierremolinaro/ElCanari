//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------
//   EBGraphicView
//----------------------------------------------------------------------------------------------------------------------

extension EBGraphicView {

  //····················································································································

  final func bind_backColor (_ model : EBReadOnlyProperty_NSColor, file:String, line:Int) {
    self.mBackColorController = EBSimpleController (
      observedObjects: [model],
      callBack: { [weak self] in self?.updateBackColor (from: model) }
    )
  }

  //····················································································································

  final func unbind_backColor () {
    mBackColorController?.unregister ()
    mBackColorController = nil
  }

  //····················································································································

  final private func updateBackColor (from model : EBReadOnlyProperty_NSColor) {
    switch model.selection {
    case .empty :
      break
    case .single (let v) :
      self.mBackColor = v
    case .multiple :
      break
    }
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
