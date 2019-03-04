//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

@objc(EBDoubleObserverField) class EBDoubleObserverField : NSTextField, EBUserClassNameProtocol, NSTextFieldDelegate {

  //····················································································································

  required init? (coder: NSCoder) {
    super.init (coder:coder)
    self.isEditable = false
    noteObjectAllocation (self)
  }

  //····················································································································

  override init (frame:NSRect) {
    super.init (frame:frame)
    self.isEditable = false
    noteObjectAllocation (self)
  }
  
  //····················································································································

  deinit {
    noteObjectDeallocation (self)
  }

  //····················································································································
  //  $valueObserver binding
  //····················································································································

  private var mValueController : Controller_EBDoubleObserverField_valueObserver?
  private var mSendContinously : Bool = false

  func bind_valueObserver (_ object:EBReadOnlyProperty_Double, file:String, line:Int, autoFormatter:Bool) {
    mValueController = Controller_EBDoubleObserverField_valueObserver (
      object:object,
      outlet:self,
      file:file,
      line:line,
      autoFormatter: autoFormatter
    )
  }

  func unbind_valueObserver () {
    mValueController?.unregister ()
    mValueController = nil
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   Controller_EBDoubleObserverField_valueObserver
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

@objc(Controller_EBDoubleObserverField_valueObserver) final class Controller_EBDoubleObserverField_valueObserver : EBSimpleController {

  private let mObject : EBReadOnlyProperty_Double
  private let mOutlet : EBDoubleObserverField

  //····················································································································

  init (object : EBReadOnlyProperty_Double,
        outlet : EBDoubleObserverField,
        file : String,
        line : Int,
        autoFormatter:Bool) {
    mObject = object
    mOutlet = outlet
    super.init (observedObjects:[object])
    if autoFormatter {
      let formatter = NumberFormatter ()
      mOutlet.formatter = formatter
    }else if mOutlet.formatter == nil {
      presentErrorWindow (file: file, line: line, errorMessage: "the outlet has no formatter")
    }else if !(mOutlet.formatter is NumberFormatter) {
      presentErrorWindow (file: file, line: line, errorMessage: "the formatter should be an NSNumberFormatter")
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
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
