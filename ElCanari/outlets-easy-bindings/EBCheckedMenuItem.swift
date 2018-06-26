//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

@objc(EBCheckedMenuItem) class EBCheckedMenuItem : NSMenuItem, EBUserClassNameProtocol {

  //····················································································································

  required init (coder: NSCoder) {
    super.init (coder:coder)
    noteObjectAllocation (self)
  }

  //····················································································································

  deinit {
    noteObjectDeallocation (self)
  }

  //····················································································································
  //    Is Checked binding
  //····················································································································

  private var mCheckedController : Controller_EBCheckedMenuItem_check?

  func bind_checked (_ checked:EBReadWriteProperty_Bool, file:String, line:Int) {
    mCheckedController = Controller_EBCheckedMenuItem_check (checked:checked, outlet:self, file:file, line:line)
  }

  func unbind_checked () {
    mCheckedController?.unregister ()
    mCheckedController = nil
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   Controller_EBCheckedMenuItem_check
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class Controller_EBCheckedMenuItem_check : EBSimpleController {

  private let mIsChecked : EBReadWriteProperty_Bool
  private let mOutlet : EBCheckedMenuItem

  //····················································································································

  init (checked : EBReadWriteProperty_Bool, outlet : EBCheckedMenuItem, file : String, line : Int) {
    mIsChecked = checked
    mOutlet = outlet
    super.init (objects:[checked], outlet:outlet)
    mIsChecked.addEBObserver (self)
    mOutlet.target = self
    mOutlet.action = #selector (Controller_EBCheckedMenuItem_check.menuItemAction(_:))
  }

  //····················································································································
  
  func unregister () {
    mIsChecked.removeEBObserver (self)
    mOutlet.target = nil
    mOutlet.action = nil
  }

  //····················································································································

  override func sendUpdateEvent () {
    switch mIsChecked.prop {
    case .noSelection :
      mOutlet.state = 0
    case .singleSelection (let v) :
      mOutlet.state = v ? 1 : 0
    case .multipleSelection :
      mOutlet.state = 0
    }
  }

  //····················································································································

  func menuItemAction (_ sender : AnyObject?) {
   mOutlet.state = (mOutlet.state == 0) ? 1 : 0
    _ = mIsChecked.validateAndSetProp (mOutlet.state == 1, windowForSheet:nil)
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
