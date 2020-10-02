//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------
//   EBStepper
//----------------------------------------------------------------------------------------------------------------------

class EBStepper : NSStepper, EBUserClassNameProtocol {

  //····················································································································

  required init? (coder : NSCoder) {
    super.init (coder:coder)
    noteObjectAllocation (self)
  }

  //····················································································································

  override init (frame : NSRect) {
    super.init (frame: frame)
    noteObjectAllocation (self)
  }
  
  //····················································································································

  deinit {
    noteObjectDeallocation (self)
  }

  //····················································································································

  override func sendAction (_ action : Selector?, to : Any?) -> Bool {
    self.mIntValueController?.updateModel ()
    return super.sendAction (action, to:to)
  }

  //····················································································································
  //  value binding
  //····················································································································

  fileprivate func updateValue (_ object : EBReadOnlyProperty_Int) {
    switch object.selection {
    case .empty :
      self.stringValue = "-"
      self.enableFromValueBinding (false)
    case .multiple :
      self.stringValue = "-"
      self.enableFromValueBinding (false)
    case .single (let propertyValue) :
      self.doubleValue = Double (propertyValue)
      self.enableFromValueBinding (true)
    }
  }

  //····················································································································

  private var mIntValueController : Controller_EBStepper_value?

  func bind_value (_ object:EBReadWriteProperty_Int, file:String, line:Int, sendContinously:Bool) {
    self.mIntValueController = Controller_EBStepper_value (object: object, outlet: self)
    self.isContinuous = sendContinously
  }

  func unbind_value () {
    self.mIntValueController?.unregister ()
    self.mIntValueController = nil
  }

  //····················································································································
}

//----------------------------------------------------------------------------------------------------------------------
//   Controller Controller_EBStepper_value
//----------------------------------------------------------------------------------------------------------------------

final class Controller_EBStepper_value : EBSimpleController {

  private let mOutlet : EBStepper
  private let mObject : EBReadWriteProperty_Int

  //····················································································································

  init (object : EBReadWriteProperty_Int, outlet : EBStepper) {
    mObject = object
    mOutlet = outlet
    super.init (observedObjects: [object], callBack: { outlet.updateValue (object) })
  }

  //····················································································································

  func updateModel () {
    _ = self.mObject.validateAndSetProp (Int (round (self.mOutlet.doubleValue)), windowForSheet: self.mOutlet.window)
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
