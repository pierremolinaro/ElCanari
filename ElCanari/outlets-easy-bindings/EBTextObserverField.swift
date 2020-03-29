//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class EBTextObserverField : NSTextField, EBUserClassNameProtocol, NSTextFieldDelegate {

  //····················································································································

  required init? (coder : NSCoder) {
    super.init (coder: coder)
    self.delegate = self
    self.isEditable = false
    noteObjectAllocation (self)
  }

  //····················································································································

  override init (frame : NSRect) {
    super.init (frame: frame)
    self.delegate = self
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

  fileprivate func updateValue (_ object : EBReadOnlyProperty_String) {
    switch object.prop {
    case .empty :
      self.enableFromValueBinding (false)
      self.stringValue = "—"
      self.toolTip = nil
    case .single (let v):
      self.enableFromValueBinding (true)
      self.stringValue = v
      self.toolTip = v
    case .multiple :
      self.enableFromValueBinding (false)
      self.stringValue = "—"
      self.toolTip = nil
    }
  }

  //····················································································································

  fileprivate var mValueController : EBSimpleController? = nil

  //····················································································································

  func bind_valueObserver (_ object : EBReadOnlyProperty_String, file : String, line : Int) {
    if self.formatter != nil {
      presentErrorWindow (file, line, "the EBTextObserverField outlet has a formatter")
    }
    self.mValueController = EBSimpleController (observedObjects: [object], callBack: { self.updateValue (object) } )
  }

  //····················································································································

  func unbind_valueObserver () {
    self.mValueController?.unregister ()
    self.mValueController = nil
    self.ebCleanUp ()
  }

  //····················································································································
  //  $backColor binding
  //····················································································································

  fileprivate func updateBackColor (_ object : EBReadOnlyProperty_NSColor) {
    switch object.prop {
    case .empty, .multiple :
      self.backgroundColor = .white
    case .single (let v):
      self.backgroundColor = v
    }
  }

  //····················································································································

  fileprivate var mBackColorController : EBSimpleController? = nil

  //····················································································································

  func bind_backColor (_ object : EBReadOnlyProperty_NSColor, file : String, line : Int) {
    self.mBackColorController = EBSimpleController (observedObjects: [object], callBack: { [weak self] in self?.updateBackColor (object) } )
  }

  //····················································································································

  func unbind_backColor () {
    self.mBackColorController?.unregister ()
    self.mBackColorController = nil
    self.ebCleanUp ()
  }

  //····················································································································
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   EBTextObserverField_TableViewCell
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

@objc(EBTextObserverField_TableViewCell) class EBTextObserverField_TableViewCell : EBTableCellView {

  //····················································································································

  @IBOutlet var mCellOutlet : EBTextObserverField? = nil

  //····················································································································

  func checkOutlet (_ columnName : String, file:String, line:Int) {
    checkOutletConnection (self.mCellOutlet, "\"\(columnName)\" column view", EBTextObserverField.self, file, line)
  }

  //····················································································································

  func update () {
    self.mCellOutlet?.mValueController?.mEventCallBack? ()
    self.mCellOutlet?.mBackColorController?.mEventCallBack? ()
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
