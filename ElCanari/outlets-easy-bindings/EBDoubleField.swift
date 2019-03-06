//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

@objc(EBDoubleField) class EBDoubleField : NSTextField, EBUserClassNameProtocol, NSTextFieldDelegate {

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

  func controlTextDidChange (_ notification : Notification) {
    if mSendContinously {
      if let inputString = currentEditor()?.string {
        // NSLog ("inputString %@", inputString)
        let numberFormatter = self.formatter as! NumberFormatter
        let number = numberFormatter.number (from: inputString)
        if number == nil {
          _ = control (
            self,
            didFailToFormatString: inputString,
            errorDescription: String (format:"The value “%@” is invalid.", inputString)
          )
        }else if let unwAction = self.action {
          NSApp.sendAction (unwAction, to: self.target, from: self)
        }
      }
    }
  }

  //····················································································································
  //    NSTextFieldDelegate delegate function
  //····················································································································
  
  func control (_ control: NSControl,
                didFailToFormatString string: String,
                errorDescription error: String?) -> Bool {
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

  private var mValueController : Controller_EBDoubleField_value?
  private var mSendContinously : Bool = false

  func bind_value (_ object:EBReadWriteProperty_Double, file:String, line:Int, sendContinously:Bool, autoFormatter:Bool) {
    mSendContinously = sendContinously
    mValueController = Controller_EBDoubleField_value (
      object:object,
      outlet:self,
      file:file,
      line:line,
      sendContinously:sendContinously,
      autoFormatter:autoFormatter
    )
  }

  func unbind_value () {
    mValueController?.unregister ()
    mValueController = nil
  }

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   Controller_EBDoubleField_value
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

@objc(Controller_EBDoubleField_value) final class Controller_EBDoubleField_value : EBSimpleController {

  private let mObject : EBReadWriteProperty_Double
  private let mOutlet : EBDoubleField

  //····················································································································

  init (object : EBReadWriteProperty_Double,
        outlet : EBDoubleField,
        file : String,
        line : Int,
        sendContinously : Bool,
        autoFormatter : Bool) {
    mObject = object
    mOutlet = outlet
    super.init (observedObjects:[object])
    mOutlet.target = self
    mOutlet.action = #selector(Controller_EBDoubleField_value.action(_:))
    if autoFormatter {
      let formatter = NumberFormatter ()
      mOutlet.formatter = formatter
    }else if mOutlet.formatter == nil {
      presentErrorWindow (file: file, line:line, errorMessage:"the outlet has no formatter")
    }else if !(mOutlet.formatter is NumberFormatter) {
      presentErrorWindow (file: file, line:line, errorMessage:"the formatter should be an NSNumberFormatter")
    }
    self.mEventCallBack = { [weak self] in self?.updateOutlet () }
  }

  //····················································································································
  
  override func unregister () {
    super.unregister ()
    mOutlet.target = nil
    mOutlet.action = nil
  }

  //····················································································································

  private func updateOutlet () {
    switch mObject.prop {
    case .empty :
      mOutlet.enableFromValueBinding (false)
      mOutlet.stringValue = "—"
    case .single (let v) :
      mOutlet.enableFromValueBinding (true)
      mOutlet.doubleValue = v
    case .multiple :
      mOutlet.enableFromValueBinding (false)
      mOutlet.stringValue = "—"
    }
  }

  //····················································································································

  @objc func action (_ sender : EBDoubleField) {
    _ = mObject.validateAndSetProp (mOutlet.doubleValue, windowForSheet:sender.window)
  }

  //····················································································································
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
