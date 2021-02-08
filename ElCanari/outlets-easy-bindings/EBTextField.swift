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
    self.target = self
    self.action = #selector (EBTextField.ebAction(_:))
  }

  //····················································································································

  override init (frame : NSRect) {
    super.init (frame: frame)
    self.delegate = self
    noteObjectAllocation (self)
    self.target = self
    self.action = #selector (EBTextField.ebAction(_:))
  }

  //····················································································································

  override func awakeFromNib () {
    self.cell?.allowsUndo = true
    if self.formatter != nil {
      presentErrorWindow (#file, #line, "the EBTextField outlet has a formatter")
    }
  }

  //····················································································································
  //  Call back
  //····················································································································

  var mControlTextDidChangeCallBack : Optional < () -> Void> = nil

  //····················································································································
  //  User information
  //····················································································································

  var mTextFieldUserInfo : Any? = nil // Not used, freely available for user

  //····················································································································
  //  $value binding
  //····················································································································

  fileprivate func updateValue (_ object : EBReadOnlyProperty_String) {
    switch object.selection {
    case .empty :
      self.placeholderString = "No selection"
      self.stringValue = ""
      self.enableFromValueBinding (false)
    case .multiple :
      self.placeholderString = "Multiple Selection"
      self.stringValue = ""
      self.enableFromValueBinding (true)
    case .single (let propertyValue) :
      self.placeholderString = nil
      self.stringValue = propertyValue
      self.enableFromValueBinding (true)
    }
  }

  //····················································································································

  func setSendContinously (_ inFlag : Bool) {
    self.mSendContinously = inFlag
  }

  //····················································································································

  fileprivate var mValueController : EBGenericReadWritePropertyController <String>? = nil
  private var mSendContinously : Bool = false

  //····················································································································

  func bind_value (_ inObject : EBReadWriteProperty_String, sendContinously : Bool) {
    self.mSendContinously = sendContinously
    self.mValueController = EBGenericReadWritePropertyController <String> (
      observedObject: inObject,
      callBack: { [weak self] in self?.updateValue (inObject) }
    )
  }

  //····················································································································

  func unbind_value () {
    self.mValueController?.unregister ()
    self.mValueController = nil
  }

  //····················································································································

  func controlTextDidChange (_ inNotification : Notification) {
    if self.mSendContinously {
      self.ebAction (nil)
    }
  }

  //····················································································································

  @objc func ebAction (_ inUnusedSender : Any?) {
    self.mControlTextDidChangeCallBack? ()
    _ = self.mValueController?.updateModel(withCandidateValue: self.stringValue, windowForSheet: self.window)
  }

  //····················································································································

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
