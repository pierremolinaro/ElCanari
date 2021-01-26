//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------
//   EBSlider
//----------------------------------------------------------------------------------------------------------------------

class EBSlider : NSSlider, EBUserClassNameProtocol {

  //····················································································································

  required init? (coder : NSCoder) {
    super.init (coder: coder)
    noteObjectAllocation (self)
  }

  //····················································································································

  override init (frame : NSRect) {
    super.init (frame: frame)
    noteObjectAllocation (self)
  }

  //····················································································································

  override func sendAction (_ action : Selector?, to : Any?) -> Bool {
    self.mDoubleValueController?.updateModel ()
    self.mIntValueController?.updateModel ()
    let r = super.sendAction (action, to: to)
    flushOutletEvents ()
    return r
  }

  //····················································································································
  //  doubleValue binding
  //····················································································································

  fileprivate func updateDoubleValue (_ object : EBReadOnlyProperty_Double) {
    switch object.selection {
    case .empty, .multiple :
      self.stringValue = "-"
      self.enableFromValueBinding (false)
    case .single (let propertyValue) :
      self.doubleValue = propertyValue
      self.enableFromValueBinding (true)
    }
  }

  //····················································································································

  private var mDoubleValueController : Controller_EBSlider_doubleValue? = nil

  //····················································································································

  func bind_doubleValue (_ object : EBReadWriteProperty_Double, file : String, line : Int, sendContinously : Bool) {
    self.mDoubleValueController = Controller_EBSlider_doubleValue (object: object, outlet: self)
    self.isContinuous = sendContinously
  }

  //····················································································································

  func unbind_doubleValue () {
    self.mDoubleValueController?.unregister ()
    self.mDoubleValueController = nil
  }

  //····················································································································
  //  intValue binding
  //····················································································································

  fileprivate func updateIntValue (_ object : EBReadOnlyProperty_Int) {
    switch object.selection {
    case .empty, .multiple :
      self.stringValue = "-"
      self.enableFromValueBinding (false)
    case .single (let propertyValue) :
      self.doubleValue = Double (propertyValue)
      self.enableFromValueBinding (true)
    }
  }

  //····················································································································

  private var mIntValueController : Controller_EBSlider_intValue? = nil

  //····················································································································

  func bind_intValue (_ object : EBReadWriteProperty_Int, file : String, line : Int, sendContinously : Bool) {
    self.mIntValueController = Controller_EBSlider_intValue (object:object, outlet:self)
    self.isContinuous = sendContinously
  }

  //····················································································································

  func unbind_intValue () {
    self.mIntValueController?.unregister ()
    self.mIntValueController = nil
  }

  //····················································································································
}

//----------------------------------------------------------------------------------------------------------------------
//   Controller Controller_EBSlider_doubleValue
//----------------------------------------------------------------------------------------------------------------------

final class Controller_EBSlider_doubleValue : EBReadOnlyPropertyController {

  private let mOutlet: EBSlider
  private let mObject : EBReadWriteProperty_Double

  //····················································································································

  init (object : EBReadWriteProperty_Double, outlet : EBSlider) {
    mObject = object
    mOutlet = outlet
    super.init (observedObjects:[object], callBack: { outlet.updateDoubleValue (object) })
  }

  //····················································································································

  func updateModel () {
    _ = self.mObject.validateAndSetProp (self.mOutlet.doubleValue, windowForSheet: self.mOutlet.window)
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//   Controller Controller_EBSlider_intValue
//----------------------------------------------------------------------------------------------------------------------

final class Controller_EBSlider_intValue : EBReadOnlyPropertyController {

  private let mOutlet : EBSlider
  private let mObject : EBReadWriteProperty_Int

  //····················································································································

  init (object : EBReadWriteProperty_Int, outlet : EBSlider) {
    mObject = object
    mOutlet = outlet
    super.init (observedObjects: [object], callBack: { outlet.updateIntValue (object) })
  }

  //····················································································································

  func updateModel () {
    _ = self.mObject.validateAndSetProp (Int (round (self.mOutlet.doubleValue)), windowForSheet: self.mOutlet.window)
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
