//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------

protocol HiddenEBProtocol : class {
  var isHidden : Bool { get set }
}

//----------------------------------------------------------------------------------------------------------------------

extension NSView : HiddenEBProtocol {
}

//----------------------------------------------------------------------------------------------------------------------
//   MultipleBindingController_hidden
//----------------------------------------------------------------------------------------------------------------------

final class MultipleBindingController_hidden : EBOutletEvent {

  private let mGetPropertyValueCallBack : () -> EBSelection <Bool>
  private let mOutlet : HiddenEBProtocol?

  //····················································································································

  init (computeFunction inGetPropertyValueCallBack : @escaping () -> EBSelection <Bool>,
        outlet inOutlet : HiddenEBProtocol?) {
    mGetPropertyValueCallBack = inGetPropertyValueCallBack
    mOutlet = inOutlet
    super.init ()
    self.mEventCallBack = { [weak self] in self?.updateOutlet () }
  }

  //····················································································································

   private func updateOutlet () {
    let model = self.mGetPropertyValueCallBack ()
    switch model {
    case .single (let b) :
      self.mOutlet?.isHidden = b
    default :
      self.mOutlet?.isHidden = false
    }
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//   MultipleBindingController_enabled
//----------------------------------------------------------------------------------------------------------------------

protocol EnabledMultipleBindingProtocol {
  func enableFromEnableBinding (_ inEnable : Bool)
}

//----------------------------------------------------------------------------------------------------------------------

final class MultipleBindingController_enabled : EBOutletEvent {

  private let mGetPropertyValueCallBack : () -> EBSelection <Bool>
  private let mOutlet : EnabledMultipleBindingProtocol?

  //····················································································································

  init (computeFunction inGetPropertyValueCallBack : @escaping () -> EBSelection <Bool>,
        outlet inOutlet : EnabledMultipleBindingProtocol?) {
    mGetPropertyValueCallBack = inGetPropertyValueCallBack
    mOutlet = inOutlet
    super.init ()
    self.mEventCallBack = { [weak self] in self?.updateOutlet () }
  }

  //····················································································································

  private func updateOutlet () {
    let model = self.mGetPropertyValueCallBack ()
    switch model {
    case .single (let b) :
      self.mOutlet?.enableFromEnableBinding (b)
    default :
      self.mOutlet?.enableFromEnableBinding (false)
    }
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
