//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

@objc(EBColorWell) class EBColorWell : NSColorWell, EBUserClassNameProtocol {

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
  //  color binding
  //····················································································································

  private var mValueController : Controller_EBColorWell_color?
  var mSendContinously = false

  func bind_color (_ object:EBReadWriteProperty_NSColor, file:String, line:Int, sendContinously:Bool) {
    mSendContinously = sendContinously
    mValueController = Controller_EBColorWell_color (object:object, outlet:self, file:file, line:line, sendContinously:sendContinously)
  }

  func unbind_color () {
    mValueController?.unregister ()
    mValueController = nil
  }

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   Controller_EBColorWell_color
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

@objc(Controller_EBColorWell_color) final class Controller_EBColorWell_color : EBSimpleController {

  private let mObject : EBReadWriteProperty_NSColor
  private let mOutlet : EBColorWell
  private let mSendContinously : Bool

  //····················································································································

  init (object : EBReadWriteProperty_NSColor, outlet : EBColorWell, file : String, line : Int, sendContinously : Bool) {
    mObject = object
    mOutlet = outlet
    mSendContinously = sendContinously
    super.init (objects:[object], outlet:outlet)
    mOutlet.target = self
    mOutlet.action = #selector(Controller_EBColorWell_color.action(_:))
    mOutlet.isContinuous = true
    mObject.addEBObserver (self)
  }

  //····················································································································
  
  func unregister () {
    mOutlet.target = nil
    mOutlet.action = nil
    mObject.removeEBObserver (self)
    mOutlet.removeFromEnabledFromValueDictionary ()
  }

  //····················································································································

  override func sendUpdateEvent () {
    switch mObject.prop {
    case .noSelection :
      mOutlet.enableFromValue (false)
      mOutlet.stringValue = "—"
    case .singleSelection (let v) :
      mOutlet.enableFromValue (true)
      mOutlet.color = v
    case .multipleSelection :
      mOutlet.enableFromValue (false)
      mOutlet.stringValue = "—"
    }
    mOutlet.updateEnabledState()
  }

  //····················································································································

  func action (_ sender : EBColorWell) {
    _ = mObject.validateAndSetProp (mOutlet.color, windowForSheet:sender.window)
  }

  //····················································································································
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
