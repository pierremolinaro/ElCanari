//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_ProjectDocument_selectedDeviceSymbolNames (
       _ self_mProjectDeviceController_selectedArray_all_symbolNames : [DeviceInProject_symbolNames]
) -> TwoStringArray {
//--- START OF USER ZONE 2
        var result = [TwoStrings] ()
        if self_mProjectDeviceController_selectedArray_all_symbolNames.count == 1 {
          if let a = self_mProjectDeviceController_selectedArray_all_symbolNames [0].symbolNames {
            result = a
          }
        }
        return result
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————