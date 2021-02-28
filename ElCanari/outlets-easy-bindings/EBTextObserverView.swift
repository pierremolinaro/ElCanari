//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------
//   EBTextObserverView
//----------------------------------------------------------------------------------------------------------------------

class EBTextObserverView : NSTextView, EBUserClassNameProtocol {

  //····················································································································

  required init? (coder : NSCoder) {
    super.init (coder: coder)
    noteObjectAllocation (self)
    self.isEditable = false
  }

  //····················································································································

  override init (frame : NSRect) {
    super.init (frame: frame)
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
    switch object.selection {
    case .empty, .multiple :
      self.string = ""
    case .single (let propertyValue) :
      self.string = propertyValue
    }
  }

  //····················································································································

  private var mValueController : EBReadOnlyPropertyController? = nil

  final func bind_valueObserver (_ object : EBReadOnlyProperty_String) {
    self.mValueController = EBReadOnlyPropertyController (
      observedObjects: [object],
      callBack: { self.updateTextValue (object) }
    )
  }

  //····················································································································

  final func unbind_valueObserver () {
    self.mValueController?.unregister ()
    self.mValueController = nil
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
