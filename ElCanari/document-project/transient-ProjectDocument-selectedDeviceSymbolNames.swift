//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_ProjectDocument_selectedDeviceSymbolNames (
       _ self_mProjectDeviceController_selectedArray_all_symbolAndTypesNames : [DeviceInProject_symbolAndTypesNames]
) -> TwoStringArray {
//--- START OF USER ZONE 2
        var result = [TwoStrings] ()
        if self_mProjectDeviceController_selectedArray_all_symbolAndTypesNames.count == 1 {
          if let a = self_mProjectDeviceController_selectedArray_all_symbolAndTypesNames [0].symbolAndTypesNames {
            for symbolDescriptor in a {
              result.append (TwoStrings (symbolDescriptor.symbolInstanceName, symbolDescriptor.symbolTypeName))
            }
          }
        }
        return result
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
