//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   EBSlider
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

@objc(EBSlider) class EBSlider : NSSlider, EBUserClassNameProtocol {

  //····················································································································

  required init? (coder: NSCoder) {
    super.init (coder:coder)
    noteObjectAllocation (self)
  }

  //····················································································································

  override init (frame:NSRect) {
    super.init (frame:frame)
    noteObjectAllocation (self)
  }
  
  //····················································································································

  deinit {
    noteObjectDeallocation (self)
  }

  //····················································································································

  override func sendAction (_ action : Selector?, to : Any?) -> Bool {
    mDoubleValueController?.updateModel ()
    mIntValueController?.updateModel ()
    return super.sendAction (action, to:to)
  }

  //····················································································································
  //  doubleValue binding
  //····················································································································

  private var mDoubleValueController : Controller_EBSlider_doubleValue?

  func bind_doubleValue (_ object:EBReadWriteProperty_Double, file:String, line:Int, sendContinously:Bool) {
    mDoubleValueController = Controller_EBSlider_doubleValue (object:object, outlet:self, file:file, line:line)
    self.isContinuous = sendContinously
  }

  func unbind_doubleValue () {
    mDoubleValueController?.unregister ()
    mDoubleValueController = nil
  }

  //····················································································································
  //  intValue binding
  //····················································································································

  private var mIntValueController : Controller_EBSlider_intValue?

  func bind_intValue (_ object:EBReadWriteProperty_Int, file:String, line:Int, sendContinously:Bool) {
    mIntValueController = Controller_EBSlider_intValue (object:object, outlet:self, file:file, line:line)
    self.isContinuous = sendContinously
  }

  func unbind_intValue () {
    mIntValueController?.unregister ()
    mIntValueController = nil
  }

  //····················································································································
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   Controller Controller_EBSlider_doubleValue
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

@objc(Controller_EBSlider_doubleValue)
final class Controller_EBSlider_doubleValue : EBSimpleController {

  private let mOutlet: EBSlider
  private let mObject : EBReadWriteProperty_Double

  //····················································································································

  init (object:EBReadWriteProperty_Double, outlet : EBSlider, file : String, line : Int) {
    mObject = object
    mOutlet = outlet
    super.init (observedObjects:[object], outlet:outlet)
  }

  //····················································································································

  override func sendUpdateEvent () {
    switch mObject.prop {
    case .empty :
      mOutlet.stringValue = "—"
      mOutlet.enableFromValueBinding (false)
    case .multiple :
      mOutlet.stringValue = "—"
      mOutlet.enableFromValueBinding (false)
    case .single (let propertyValue) :
      mOutlet.doubleValue = propertyValue
      mOutlet.enableFromValueBinding (true)
    }
  }

  //····················································································································

  func updateModel () {
    _ = mObject.validateAndSetProp (mOutlet.doubleValue, windowForSheet:mOutlet.window)
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   Controller Controller_EBSlider_intValue
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

@objc(Controller_EBSlider_intValue)
final class Controller_EBSlider_intValue : EBSimpleController {

  private let mOutlet: EBSlider
  private let mObject : EBReadWriteProperty_Int

  //····················································································································

  init (object:EBReadWriteProperty_Int, outlet : EBSlider, file : String, line : Int) {
    mObject = object
    mOutlet = outlet
    super.init (observedObjects:[object], outlet:outlet)
  }

  //····················································································································

  override func sendUpdateEvent () {
    switch mObject.prop {
    case .empty :
      mOutlet.stringValue = "—"
      mOutlet.enableFromValueBinding (false)
    case .multiple :
      mOutlet.stringValue = "—"
      mOutlet.enableFromValueBinding (false)
    case .single (let propertyValue) :
      mOutlet.doubleValue = Double (propertyValue)
      mOutlet.enableFromValueBinding (true)
    }
  }

  //····················································································································

  func updateModel () {
    _ = mObject.validateAndSetProp (Int (round (mOutlet.doubleValue)), windowForSheet:mOutlet.window)
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
