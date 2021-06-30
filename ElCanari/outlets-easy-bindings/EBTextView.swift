//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   EBTextView
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class EBTextView : NSTextView, NSTextViewDelegate, EBUserClassNameProtocol {

  //····················································································································

  override init (frame : NSRect) {
    super.init (frame: frame)
    noteObjectAllocation (self)
  }

  //····················································································································

  required init? (coder : NSCoder) {
    super.init (coder: coder)
    noteObjectAllocation (self)
  }

  //····················································································································

  deinit {
    noteObjectDeallocation (self)
  }

  //····················································································································
  //  value binding
  //····················································································································

  fileprivate func updateValue (_ object : EBReadOnlyProperty_String) {
    switch object.selection {
    case .empty, .multiple :
      self.string = ""
      self.isEditable = false
    case .single (let propertyValue) :
      let currentSelectedRangeValues = self.selectedRanges
      self.string = propertyValue
      self.selectedRanges = currentSelectedRangeValues
      self.isEditable = true
    }
  }

  //····················································································································

  private var mValueController : EBReadOnlyPropertyController? = nil
  private var mModel : EBReadWriteProperty_String? = nil

  //····················································································································

  final func bind_value (_ inObject : EBReadWriteProperty_String) {
    self.mModel = inObject
    self.delegate = self
    self.mValueController = EBReadOnlyPropertyController (
      observedObjects: [inObject],
      callBack: { self.updateValue (inObject) }
    )
  }

  //····················································································································

  final func unbind_value () {
    self.mValueController?.unregister ()
    self.mValueController = nil
    self.mModel = nil
  }

  //····················································································································

  func textDidChange (_ notification : Notification) {
    _ = self.mModel?.validateAndSetProp (self.string, windowForSheet: self.window)
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
