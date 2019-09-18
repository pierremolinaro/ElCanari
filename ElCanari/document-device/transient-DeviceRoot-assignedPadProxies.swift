//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_DeviceRoot_assignedPadProxies (
       _ self_mPadProxies_mPadName : [PadProxyInDevice_mPadName],
       _ self_mPadProxies_symbolName : [PadProxyInDevice_symbolName],
       _ self_mPadProxies_mPinInstanceName : [PadProxyInDevice_mPinInstanceName],
       _ self_mPadProxies_isConnected : [PadProxyInDevice_isConnected]
) -> AssignedPadProxiesInDevice {
//--- START OF USER ZONE 2
        var array = [AssignedPadProxy] ()
        var idx = 0
        while idx < self_mPadProxies_mPadName.count {
          if let connected = self_mPadProxies_isConnected [idx].isConnected, connected {
            let padProxy = AssignedPadProxy (
              padName: self_mPadProxies_mPadName [idx].mPadName,
              symbolInstanceName: self_mPadProxies_symbolName [idx].symbolName ?? "nil(1)",
              pinName: self_mPadProxies_mPinInstanceName [idx].mPinInstanceName
            )
            array.append (padProxy)
          }
          idx += 1
        }
        return array
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
