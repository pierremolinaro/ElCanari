//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_ProjectDocument_selectedDeviceSymbols (
       _ self_projectDeviceController_selectedArray_all_deviceSymbolDictionary : [DeviceInProject_deviceSymbolDictionary]
) -> DeviceSymbolDictionary {
//--- START OF USER ZONE 2
      if self_projectDeviceController_selectedArray_all_deviceSymbolDictionary.count == 1,
      let deviceSymbolDictionary = self_projectDeviceController_selectedArray_all_deviceSymbolDictionary [0].deviceSymbolDictionary {
        return deviceSymbolDictionary
      }else{
        return DeviceSymbolDictionary ()
      }
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
