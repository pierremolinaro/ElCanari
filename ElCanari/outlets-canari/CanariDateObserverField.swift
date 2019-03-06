//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class CanariDateObserverField : NSTextField, EBUserClassNameProtocol, NSTextFieldDelegate {

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

  private var mValueController : Controller_CanariDateObserverField_dateObserver?

  //····················································································································

  func bind_dateObserver (_ object:EBReadOnlyProperty_Date, file:String, line:Int) {
    mValueController = Controller_CanariDateObserverField_dateObserver (object:object, outlet:self, file:file, line:line)
  }

  //····················································································································

  func unbind_dateObserver () {
    mValueController?.unregister ()
    mValueController = nil
  }

  //····················································································································
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   Controller Controller_CanariDateObserverField_dateObserver
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class Controller_CanariDateObserverField_dateObserver : EBSimpleController {

  private var mOutlet : CanariDateObserverField
  private var mObject : EBReadOnlyProperty_Date

  //····················································································································

  init (object:EBReadOnlyProperty_Date, outlet : CanariDateObserverField, file : String, line : Int) {
    mObject = object
    mOutlet = outlet
    super.init (observedObjects:[object])
    self.mEventCallBack = { [weak self] in self?.updateOutlet () }
  }

  //····················································································································

  private func updateOutlet () {
    switch self.mObject.prop {
    case .empty :
      self.mOutlet.enableFromValueBinding (false)
      self.mOutlet.stringValue = "—"
    case .single (let v):
      self.mOutlet.enableFromValueBinding (true)
      self.mOutlet.objectValue = v
    case .multiple :
      self.mOutlet.enableFromValueBinding (false)
      self.mOutlet.stringValue = "—"
    }
  }

  //····················································································································
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
