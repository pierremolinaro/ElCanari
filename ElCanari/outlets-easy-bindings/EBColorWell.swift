//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

@objc(EBColorWell) class EBColorWell : NSColorWell, EBUserClassNameProtocol {

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
  //  color binding
  //····················································································································

  fileprivate func updateColor (_ object : EBReadOnlyProperty_NSColor) {
    switch object.prop {
    case .empty :
      self.enableFromValueBinding (false)
      self.stringValue = "—"
    case .single (let v) :
      self.enableFromValueBinding (true)
      self.color = v
    case .multiple :
      self.enableFromValueBinding (false)
      self.stringValue = "—"
    }
  }

  //····················································································································

  private var mValueController : Controller_EBColorWell_color? = nil
  var mSendContinously = false

  func bind_color (_ object : EBReadWriteProperty_NSColor, file : String, line : Int, sendContinously : Bool) {
    self.mSendContinously = sendContinously
    self.mValueController = Controller_EBColorWell_color (object:object, outlet:self)
  }

  func unbind_color () {
    self.mValueController?.unregister ()
    self.mValueController = nil
  }

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   Controller_EBColorWell_color
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class Controller_EBColorWell_color : EBSimpleController {

  private let mObject : EBReadWriteProperty_NSColor
  private let mOutlet : EBColorWell

  //····················································································································

  init (object : EBReadWriteProperty_NSColor, outlet : EBColorWell) {
    mObject = object
    mOutlet = outlet
    super.init (observedObjects:[object], callBack: { outlet.updateColor (object) } )
    self.mOutlet.target = self
    self.mOutlet.action = #selector(Controller_EBColorWell_color.action(_:))
  }

  //····················································································································
  
  override func unregister () {
    super.unregister ()
    self.mOutlet.target = nil
    self.mOutlet.action = nil
  }

  //····················································································································

  @objc func action (_ sender : EBColorWell) {
    _ = self.mObject.validateAndSetProp (self.mOutlet.color, windowForSheet: sender.window)
  }

  //····················································································································
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
