//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------
//   EBTextField
//----------------------------------------------------------------------------------------------------------------------

class EBTextField : NSTextField, EBUserClassNameProtocol, NSTextFieldDelegate {

  //····················································································································

  required init? (coder : NSCoder) {
    super.init (coder: coder)
    self.delegate = self
    noteObjectAllocation (self)
  }

  //····················································································································

  override init (frame : NSRect) {
    super.init (frame: frame)
    self.delegate = self
    noteObjectAllocation (self)
  }

  //····················································································································
  //  Call back
  //····················································································································

  var mControlTextDidChangeCallBack : Optional < () -> Void> = nil

  //····················································································································
  //  User information
  //····················································································································

  var mUserInfo : Any? = nil // Not used, available for user

  //····················································································································
  //  $value binding
  //····················································································································

  fileprivate func updateValue (_ object : EBReadOnlyProperty_String) {
    switch object.selection {
    case .empty :
      self.stringValue = "-"
      self.enableFromValueBinding (false)
    case .multiple :
      self.stringValue = "multiple"
      self.enableFromValueBinding (true)
    case .single (let propertyValue) :
      self.stringValue = propertyValue
      self.enableFromValueBinding (true)
    }
  }

  //····················································································································

  func setSendContinously (_ inFlag : Bool) {
    self.mSendContinously = inFlag
  }

  //····················································································································

  fileprivate var mValueController : Controller_EBTextField_value? = nil
  private var mSendContinously : Bool = false

  //····················································································································

  func bind_value (_ object : EBReadWriteProperty_String, file : String, line : Int, sendContinously : Bool) {
    self.mSendContinously = sendContinously
    self.mValueController = Controller_EBTextField_value (object:object, outlet:self, file:file, line:line, sendContinously:sendContinously)
  }

  //····················································································································

  func unbind_value () {
    self.mValueController?.unregister ()
    self.mValueController = nil
  }

  //····················································································································

  func controlTextDidChange (_ inNotification : Notification) {
    self.mControlTextDidChangeCallBack? ()
    if self.mSendContinously {
      NSApp.sendAction (self.action!, to: self.target, from: self)
    }
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//   Controller Controller_EBTextField_value
//----------------------------------------------------------------------------------------------------------------------

final class Controller_EBTextField_value : EBSimpleController {

  private let mOutlet : EBTextField
  private let mObject : EBReadWriteProperty_String

  //····················································································································

  init (object : EBReadWriteProperty_String, outlet : EBTextField, file : String, line : Int, sendContinously : Bool) {
    mObject = object
    mOutlet = outlet
    super.init (observedObjects: [object], callBack : { outlet.updateValue (object) } )
    self.mOutlet.target = self
    self.mOutlet.action = #selector(Controller_EBTextField_value.action(_:))
    if self.mOutlet.formatter != nil {
      presentErrorWindow (file, line, "the EBTextField outlet has a formatter")
    }
  }

  //····················································································································

  override func unregister () {
    super.unregister ()
    self.mOutlet.target = nil
    self.mOutlet.action = nil
    self.mOutlet.ebCleanUp ()
  }

  //····················································································································

  @objc func action (_ sender : EBTextField) {
    _ = self.mObject.validateAndSetProp (self.mOutlet.stringValue, windowForSheet: sender.window)
  }
}

//----------------------------------------------------------------------------------------------------------------------
//   EBTextField_TableViewCell
//----------------------------------------------------------------------------------------------------------------------

@objc(EBTextField_TableViewCell) class EBTextField_TableViewCell : EBTableCellView {

  //····················································································································

  @IBOutlet var mCellOutlet : EBTextField? = nil

  //····················································································································

  func checkOutlet (_ columnName : String, file:String, line:Int) {
    checkOutletConnection (self.mCellOutlet, "\"\(columnName)\" column view", EBTextField.self, file, line)
  }

  //····················································································································

  func update () {
    self.mCellOutlet?.mValueController?.mEventCallBack? ()
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
