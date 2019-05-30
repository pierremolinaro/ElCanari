//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_SymbolInstanceInDevice_unconnectedPins (
       _ self_mPinInstances_pinName : [SymbolPinInstanceInDevice_pinName],
       _ self_mPinInstances_isConnected : [SymbolPinInstanceInDevice_isConnected],
       _ self_mInstanceName : String
) -> UnconnectedSymbolPinsInDevice {
//--- START OF USER ZONE 2
        var usp = UnconnectedSymbolPinsInDevice ()
        var idx = 0
        while idx < self_mPinInstances_pinName.count {
          let pin = self_mPinInstances_pinName [idx]
          let possibleConnection = self_mPinInstances_isConnected [idx].isConnected
          if let pinName = pin.pinName, let connected = possibleConnection, !connected {
            usp.append (UnconnectedSymbolPin (symbolInstanceName: self_mInstanceName, pinName: pinName))
          }
          idx += 1
        }
        return usp
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
