//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   EBTextObserverView
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

@objc(EBTextObserverView) class EBTextObserverView : NSTextView, EBUserClassNameProtocol {

  //····················································································································

  required init? (coder: NSCoder) {
    super.init (coder:coder)
    noteObjectAllocation (self)
    self.isEditable = false
  }

  //····················································································································

  deinit {
    noteObjectDeallocation (self)
  }

  //····················································································································
  //  valueObserver binding
  //····················································································································

  private func updateTextValue (_ object : EBReadOnlyProperty_String) {
    switch object.prop {
    case .empty, .multiple :
      self.string = ""
    case .single (let propertyValue) :
      self.string = propertyValue
    }
  }

  //····················································································································

  private var mValueController : EBSimpleController? = nil

  func bind_valueObserver (_ object : EBReadOnlyProperty_String, file : String, line : Int) {
    self.mValueController = EBSimpleController (
      observedObjects: [object],
      callBack: { [weak self] in self?.updateTextValue (object) }
    )
  }

  //····················································································································

  func unbind_valueObserver () {
    self.mValueController?.unregister ()
    self.mValueController = nil
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
