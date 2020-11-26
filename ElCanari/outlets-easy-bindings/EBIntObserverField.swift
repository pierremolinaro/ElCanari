//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------
//   EBIntObserverField
//----------------------------------------------------------------------------------------------------------------------

class EBIntObserverField : NSTextField, EBUserClassNameProtocol {

  //····················································································································

  required init? (coder : NSCoder) {
    super.init (coder: coder)
    self.isEditable = false
    self.drawsBackground = false
    self.isBordered = false
    noteObjectAllocation (self)
  }

  //····················································································································

  override init (frame : NSRect) {
    super.init (frame: frame)
    self.isEditable = false
    self.drawsBackground = false
    self.isBordered = false
    noteObjectAllocation (self)
  }

  //····················································································································
  //  $valueObserver binding
  //····················································································································

  fileprivate func updateOutlet (_ object : EBReadOnlyProperty_Int) {
    switch object.selection {
    case .empty :
      self.enableFromValueBinding (false)
      self.stringValue = "-"
    case .single (let v) :
      self.enableFromValueBinding (true)
      self.integerValue = v
    case .multiple :
      self.enableFromValueBinding (false)
      self.stringValue = "-"
    }
  }

  //····················································································································

  fileprivate var mValueController : Controller_EBIntObserverField_readOnlyValue? = nil

  //····················································································································

  func bind_valueObserver (_ object : EBReadOnlyProperty_Int, file : String, line : Int, autoFormatter : Bool) {
    self.mValueController = Controller_EBIntObserverField_readOnlyValue (
      object: object,
      outlet: self,
      file: file,
      line: line,
      autoFormatter: autoFormatter
    )
  }

  //····················································································································

  func unbind_valueObserver () {
    self.mValueController?.unregister ()
    self.mValueController = nil
    self.ebCleanUp ()
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//   Controller_EBIntObserverField_readOnlyValue
//----------------------------------------------------------------------------------------------------------------------

final class Controller_EBIntObserverField_readOnlyValue : EBSimpleController {

  private let mObject : EBReadOnlyProperty_Int
  private let mOutlet : EBIntObserverField

  //····················································································································

  init (object : EBReadOnlyProperty_Int, outlet : EBIntObserverField, file : String, line : Int, autoFormatter : Bool) {
    mObject = object
    mOutlet = outlet
    super.init (observedObjects: [object], callBack: { outlet.updateOutlet (object) })
    if autoFormatter {
      self.mOutlet.formatter = NumberFormatter ()
    }else if self.mOutlet.formatter == nil {
      presentErrorWindow (file, line, "the outlet has no formatter")
    }else if !(self.mOutlet.formatter is NumberFormatter) {
      presentErrorWindow (file, line, "the formatter should be an NSNumberFormatter")
    }
  }

  //····················································································································
}

//----------------------------------------------------------------------------------------------------------------------
//   EBIntObserverField_TableViewCell
//----------------------------------------------------------------------------------------------------------------------

@objc(EBIntObserverField_TableViewCell) class EBIntObserverField_TableViewCell : EBTableCellView {

  //····················································································································

  @IBOutlet var mCellOutlet : EBIntObserverField? = nil

  //····················································································································

  func checkOutlet (_ columnName : String, file : String, line : Int) {
    checkOutletConnection (self.mCellOutlet, "\"\(columnName)\" column view", EBIntObserverField.self, file, line)
  }

  //····················································································································

  func update () {
    self.mCellOutlet?.mValueController?.mEventCallBack? ()
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
