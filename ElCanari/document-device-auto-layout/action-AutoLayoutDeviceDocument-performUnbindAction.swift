//--- START OF USER ZONE 1


//--- END OF USER ZONE 1
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

extension AutoLayoutDeviceDocument {
  @objc func performUnbindAction (_ sender : NSObject?) {
//--- START OF USER ZONE 2
    if let selectedPadProxy = self.mAssignedPadProxyTableView?.selectedPadProxy {
      for padProxy in self.rootObject.mPadProxies {
        if padProxy.mPadName == selectedPadProxy.padName {
          padProxy.mPinInstance = nil
          padProxy.mIsNC = false
          padProxy.mPinInstanceName = ""
        }
      }
    }
//--- END OF USER ZONE 2
  }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
