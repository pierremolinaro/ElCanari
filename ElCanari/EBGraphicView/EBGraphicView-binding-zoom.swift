//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   EBGraphicView
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

extension EBGraphicView {

  //····················································································································

  final fileprivate func updateOutlet (_ zoom : EBReadOnlyProperty_Int) {
    switch zoom.selection {
    case .empty, .multiple :
      self.mZoomPropertyCache = 0
    case .single (let v) :
      self.mZoomPropertyCache = v
    }
    self.applyZoom ()
  }

  //····················································································································

  final func bind_zoom (_ inObject : EBReadWriteProperty_Int) {
    self.mZoomController = EBGenericReadWritePropertyController <Int> (
      observedObject: inObject,
      callBack: { [weak self] in self?.updateOutlet (inObject) }
    )
  }

  //····················································································································

  final func unbind_zoom () {
    self.mZoomController?.unregister ()
    self.mZoomController = nil
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
