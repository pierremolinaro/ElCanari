//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

@objc(EBTextObserverField) class EBTextObserverField : NSTextField, EBUserClassNameProtocol, NSTextFieldDelegate {

  //····················································································································

  required init? (coder: NSCoder) {
    super.init (coder:coder)
    self.delegate = self
    self.isEditable = false
    self.drawsBackground = false
    self.isBordered = false
    noteObjectAllocation (self)
  }

  //····················································································································

  override init (frame:NSRect) {
    super.init (frame:frame)
    self.delegate = self
    self.isEditable = false
    self.drawsBackground = false
    self.isBordered = false
    noteObjectAllocation (self)
  }
  
  //····················································································································

  deinit {
    noteObjectDeallocation (self)
  }

  //····················································································································
  //  valueObserver binding
  //····················································································································

  private var mValueController : Controller_EBTextObserverField_value?

  //····················································································································

  func bind_valueObserver (_ object:EBReadOnlyProperty_String, file:String, line:Int) {
    mValueController = Controller_EBTextObserverField_value (object:object, outlet:self, file:file, line:line)
  }

  //····················································································································

  func unbind_valueObserver () {
    mValueController?.unregister ()
    mValueController = nil
  }

  //····················································································································
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   Controller Controller_EBTextObserverField_value
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

@objc(Controller_EBTextObserverField_value)
final class Controller_EBTextObserverField_value : EBSimpleController {

  private var mOutlet : EBTextObserverField
  private var mObject : EBReadOnlyProperty_String

  //····················································································································

  init (object:EBReadOnlyProperty_String, outlet : EBTextObserverField, file : String, line : Int) {
    mObject = object
    mOutlet = outlet
    super.init (observedObjects:[object])
    if mOutlet.formatter != nil {
      presentErrorWindow (file: file, line:line, errorMessage:"the EBTextObserverField outlet has a formatter")
    }
    self.eventCallBack = { [weak self] in self?.updateOutlet () }
  }

  //····················································································································

  private func updateOutlet () {
    switch mObject.prop {
    case .empty :
      mOutlet.enableFromValueBinding (false)
      mOutlet.stringValue = "—"
    case .single (let v):
      mOutlet.enableFromValueBinding (true)
      mOutlet.stringValue = v
    case .multiple :
      mOutlet.enableFromValueBinding (false)
      mOutlet.stringValue = "—"
    }
  }

  //····················································································································
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   EBTextObserverField_TableViewCell
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

@objc(EBTextObserverField_TableViewCell) class EBTextObserverField_TableViewCell : EBTableCellView {
  @IBOutlet var mCellOutlet : EBTextObserverField?

  //····················································································································

  func checkOutlet (_ columnName : String, file:String, line:Int) {
    if let cellOutlet : NSObject = mCellOutlet {
      if !(cellOutlet is EBTextObserverField) {
        presentErrorWindow (file: file,
          line: line,
          errorMessage:"\"\(columnName)\" column view is not an instance of EBTextObserverField"
        )
      }
    }else{
      presentErrorWindow (file: file,
        line: line,
        errorMessage:"\"\(columnName)\" column view mCellOutlet is nil (should be an instance of EBTextObserverField)"
      )
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
