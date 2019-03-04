//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   EBIntObserverField
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

@objc(EBIntObserverField) class EBIntObserverField : NSTextField, EBUserClassNameProtocol {

  //···················································································································*

  required init? (coder: NSCoder) {
    super.init (coder:coder)
    self.isEditable = false
    self.drawsBackground = false
    self.isBordered = false
    noteObjectAllocation (self)
  }

  //···················································································································*

  override init (frame:NSRect) {
    super.init (frame:frame)
    self.isEditable = false
    self.drawsBackground = false
    self.isBordered = false
    noteObjectAllocation (self)
  }
  
  //···················································································································*

  deinit {
    noteObjectDeallocation (String (describing: type(of: self)))
  }

  //···················································································································*
  //  $valueObserver binding                                                                                           *
  //···················································································································*

  private var mValueController : Controller_EBIntObserverField_readOnlyValue?

  //···················································································································*

  func bind_valueObserver (_ object:EBReadOnlyProperty_Int, file:String, line:Int, autoFormatter:Bool) {
    mValueController = Controller_EBIntObserverField_readOnlyValue (
      object:object,
      outlet:self,
      file:file,
      line:line,
      autoFormatter:autoFormatter
    )
  }

  //···················································································································*

  func unbind_valueObserver () {
    mValueController?.unregister ()
    mValueController = nil
  }

  //···················································································································*

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   Controller_EBIntObserverField_readOnlyValue
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

@objc(Controller_EBIntObserverField_readOnlyValue)
final class Controller_EBIntObserverField_readOnlyValue : EBSimpleController {

  private let mObject :EBReadOnlyProperty_Int
  private let mOutlet : EBIntObserverField

  //···················································································································*

  init (object: EBReadOnlyProperty_Int, outlet: EBIntObserverField, file: String, line: Int, autoFormatter: Bool) {
    mObject = object
    mOutlet = outlet
    super.init (observedObjects:[object])
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

  //···················································································································*

  private func updateOutlet () {
    switch mObject.prop {
    case .empty :
      mOutlet.enableFromValueBinding (false)
      mOutlet.stringValue = "—"
    case .single (let v) :
      mOutlet.enableFromValueBinding (true)
      mOutlet.integerValue = v
    case .multiple :
      mOutlet.enableFromValueBinding (false)
      mOutlet.stringValue = "—"
    }
  }

  //···················································································································*
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   EBIntObserverField_TableViewCell
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

@objc(EBIntObserverField_TableViewCell) class EBIntObserverField_TableViewCell : EBTableCellView {
  @IBOutlet var mCellOutlet : EBIntObserverField?

  //····················································································································

  func checkOutlet (_ columnName : String, file:String, line:Int) {
    if let cellOutlet : NSObject = mCellOutlet {
      if !(cellOutlet is EBIntObserverField) {
        presentErrorWindow (file: file,
          line: line,
          errorMessage:"\"\(columnName)\" column view is not an instance of EBIntObserverField"
        )
      }
    }else{
      presentErrorWindow (file: file,
        line: line,
        errorMessage:"\"\(columnName)\" column view mCellOutlet is nil (should be an instance of EBIntObserverField)"
      )
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
