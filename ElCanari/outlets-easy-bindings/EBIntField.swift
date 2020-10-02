//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------
// WARNING! In IB, Action should be set to "Send On Enter Only"
//----------------------------------------------------------------------------------------------------------------------

class EBIntField : NSTextField, EBUserClassNameProtocol, NSTextFieldDelegate {

  //····················································································································

  required init? (coder : NSCoder) {
    super.init (coder:coder)
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

  deinit {
    noteObjectDeallocation (self)
  }

  //····················································································································
  //    NSTextFieldDelegate delegate function
  //····················································································································

  func controlTextDidChange (_ inUnusedNotification : Notification) {
    if self.mSendContinously {
      if let inputString = currentEditor()?.string {
        // NSLog ("inputString %@", inputString)
        let numberFormatter = self.formatter as! NumberFormatter
        let number = numberFormatter.number (from: inputString)
        if number == nil {
          _ = control (
            self,
            didFailToFormatString: inputString,
            errorDescription: "The “\(inputString)” value is invalid."
          )
        }else{
          NSApp.sendAction (self.action!, to: self.target, from: self)
        }
      }
    }
  }

  //····················································································································
  //    NSTextFieldDelegate delegate function
  //····················································································································
  
  func control (_ control : NSControl,
                didFailToFormatString string : String,
                errorDescription error : String?) -> Bool {
    let alert = NSAlert ()
    if let window = control.window {
      alert.messageText = error!
      alert.informativeText = "Please provide a valid value."
      alert.addButton (withTitle: "Ok")
      alert.addButton (withTitle: "Discard Change")
      alert.beginSheetModal (
        for: window,
        completionHandler:{ (response : NSApplication.ModalResponse) -> Void in
          if response == NSApplication.ModalResponse.alertSecondButtonReturn { // Discard Change
 //         self.integerValue = self.myIntegerValue.0
          }
        }
      )
    }
    return false
  }

  //····················································································································
  //  value binding
  //····················································································································

  fileprivate func updateValue (_ object : EBReadOnlyProperty_Int) {
    switch object.selection {
    case .empty :
      self.enableFromValueBinding (false)
      self.stringValue = "-"
    case .single (let v) :
      self.enableFromValueBinding (true)
      self.integerValue = v
    case .multiple :
      self.stringValue = "multiple"
      self.enableFromValueBinding (true)
    }
  }

  //····················································································································

  private var mValueController : Controller_EBIntField_value? = nil
  private var mSendContinously : Bool = false

  //····················································································································

  func bind_value (_ object : EBReadWriteProperty_Int,
                   file : String,
                   line : Int,
                   sendContinously : Bool,
                   autoFormatter : Bool) {
    if self.cell?.sendsActionOnEndEditing ?? true {
      presentErrorWindow (file, line, "In IB, \"Action\" should be set to \"Send On Enter Only\"")
    }
    self.cell?.sendsActionOnEndEditing = false
    self.mSendContinously = sendContinously
    self.mValueController = Controller_EBIntField_value (
      object: object,
      outlet: self,
      file: file,
      line: line,
      sendContinously: sendContinously,
      autoFormatter: autoFormatter
    )
  }

  //····················································································································

  func unbind_value () {
    self.mValueController?.unregister ()
    self.mValueController = nil
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//   Controller_EBIntField_value
//----------------------------------------------------------------------------------------------------------------------

final class Controller_EBIntField_value : EBSimpleController {

  private let mObject : EBReadWriteProperty_Int
  private let mOutlet : EBIntField

  //····················································································································

  init (object : EBReadWriteProperty_Int,
        outlet : EBIntField,
        file : String,
        line : Int,
        sendContinously : Bool,
        autoFormatter : Bool) {
    self.mObject = object
    self.mOutlet = outlet
    super.init (observedObjects: [object], callBack: { outlet.updateValue (object) } )
    self.mOutlet.target = self
    self.mOutlet.action = #selector(Controller_EBIntField_value.action(_:))
    if autoFormatter {
      let formatter = NumberFormatter ()
      self.mOutlet.formatter = formatter
    }else if self.mOutlet.formatter == nil {
      presentErrorWindow (file, line, "the outlet has no formatter")
    }else if !(mOutlet.formatter is NumberFormatter) {
      presentErrorWindow (file, line, "the formatter should be an NSNumberFormatter")
    }
  }

  //····················································································································
  
  override func unregister () {
    super.unregister ()
    self.mOutlet.target = nil
    self.mOutlet.action = nil
  }

  //····················································································································

  @objc func action (_ sender : EBIntField) {
    _ = self.mObject.validateAndSetProp (self.mOutlet.integerValue, windowForSheet: sender.window)
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//   EBIntField_TableViewCell
//----------------------------------------------------------------------------------------------------------------------

@objc(EBIntField_TableViewCell) class EBIntField_TableViewCell : EBTableCellView {
  @IBOutlet var mCellOutlet : EBIntField? = nil

  //····················································································································

  func checkOutlet (_ columnName : String, file : String, line : Int) {
    if let cellOutlet : NSObject = self.mCellOutlet {
      if !(cellOutlet is EBIntField) {
        presentErrorWindow (file, line, "\"\(columnName)\" column view is not an instance of EBIntField")
      }
    }else{
      presentErrorWindow (file, line, "\"\(columnName)\" column view mCellOutlet is nil (should be an instance of EBIntField)")
    }
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
