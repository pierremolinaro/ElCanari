//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   EBTextView
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

@objc(EBTextView) class EBTextView : NSTextView, EBUserClassNameProtocol {

  //····················································································································

  required init? (coder: NSCoder) {
    super.init (coder:coder)
    noteObjectAllocation (self)
  }

  //····················································································································

  deinit {
    noteObjectDeallocation (self)
  }

  //····················································································································
  //  value binding
  //····················································································································

  private var mValueController : Controller_EBTextView_value?

  func bind_value (_ object:EBReadWriteProperty_String, file:String, line:Int) {
    mValueController = Controller_EBTextView_value (object:object, outlet:self, file:file, line:line)
  }

  //····················································································································

  func unbind_value () {
    mValueController?.unregister ()
    mValueController = nil
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   Controller Controller_EBTextView_value
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

@objc(Controller_EBTextView_value) final class Controller_EBTextView_value : EBSimpleController, NSTextViewDelegate {

  private let mOutlet: EBTextView
  private let mObject : EBReadWriteProperty_String

  //····················································································································

  init (object:EBReadWriteProperty_String, outlet : EBTextView, file : String, line : Int) {
    mObject = object
    mOutlet = outlet
    super.init (observedObjects:[object])
    outlet.delegate = self
    self.mEventCallBack = { [weak self] in self?.updateOutlet () }
  }

  //····················································································································
  
  override func unregister () {
    super.unregister ()
    mOutlet.delegate = nil
  }

  //····················································································································

  func textDidChange (_ notification: Notification) {
    _ = mObject.validateAndSetProp (mOutlet.string, windowForSheet:mOutlet.window)
  }

  //····················································································································

  private func updateOutlet () {
    switch mObject.prop {
    case .empty, .multiple :
      mOutlet.string = ""
      mOutlet.isEditable = false
    case .single (let propertyValue) :
      mOutlet.string = propertyValue
      mOutlet.isEditable = true
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
