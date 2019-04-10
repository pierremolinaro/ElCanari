//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

@objc(EBSwitch) class EBSwitch : NSButton, EBUserClassNameProtocol {

  //···················································································································· 

  required init? (coder : NSCoder) {
    super.init (coder: coder)
    noteObjectAllocation (self)
    self.setButtonType (.switch)
  }

  //···················································································································· 

  override init (frame : NSRect) {
    super.init (frame: frame)
    noteObjectAllocation (self)
    self.setButtonType (.switch)
  }
  
  //···················································································································· 

  deinit {
    noteObjectDeallocation (self)
  }
  
  //···················································································································· 

  override func sendAction (_ action : Selector?, to : Any?) -> Bool {
    self.mValueController?.updateModel ()
    return super.sendAction (action, to:to)
  }

  //···················································································································· 
  //  value binding
  //····················································································································

  fileprivate func updateValue (_ object : EBReadOnlyProperty_Bool) {
    switch object.prop {
    case .empty :
      self.state = NSControl.StateValue.off
      self.enableFromValueBinding (false)
    case .multiple :
      self.state = NSControl.StateValue.mixed
      self.enableFromValueBinding (false)
    case .single (let v) :
      self.state = v ? NSControl.StateValue.on : NSControl.StateValue.off
      self.enableFromValueBinding (true)
    }
  }

  //····················································································································

  fileprivate var mValueController : Controller_EBSwitch_value? = nil

  //···················································································································· 

  func bind_value (_ object : EBReadWriteProperty_Bool, file : String, line : Int) {
    self.mValueController = Controller_EBSwitch_value (object: object, outlet: self)
  }

  //···················································································································· 

  func unbind_value () {
    self.mValueController?.unregister ()
    self.mValueController = nil
  }

  //···················································································································· 
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   Controller Controller_EBSwitch_value
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class Controller_EBSwitch_value : EBSimpleController {

  private let mOutlet : EBSwitch
  private let mObject : EBReadWriteProperty_Bool

  //···················································································································· 

  init (object : EBReadWriteProperty_Bool, outlet : EBSwitch) {
    mObject = object
    mOutlet = outlet
    super.init (observedObjects: [object], callBack: { outlet.updateValue(object) })
  }

  //····················································································································

  func updateModel () {
    self.mObject.setProp (self.mOutlet.state == NSControl.StateValue.on)
  }
}


//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   EBSwitch_TableViewCell
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

@objc(EBSwitch_TableViewCell) class EBSwitch_TableViewCell : EBTableCellView {

  //····················································································································

  @IBOutlet var mCellOutlet : EBSwitch? = nil

  //····················································································································

  func checkOutlet (columnName : String, file : String, line : Int) {
    checkOutletConnection (self.mCellOutlet, "\"\(columnName)\" column view", EBSwitch.self, file, line)
  }

  //····················································································································

  func update () {
    self.mCellOutlet?.mValueController?.mEventCallBack? ()
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
