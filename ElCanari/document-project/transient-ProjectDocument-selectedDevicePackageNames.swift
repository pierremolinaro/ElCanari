//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_ProjectDocument_selectedDevicePackageNames (
       _ self_mProjectDeviceController_selectedArray_all_packageNames : [DeviceInProject_packageNames]
) -> StringArray {
//--- START OF USER ZONE 2
        var result = [String] ()
        if self_mProjectDeviceController_selectedArray_all_packageNames.count == 1 {
          if let a = self_mProjectDeviceController_selectedArray_all_packageNames [0].packageNames {
            result = a
          }
        }
        return result
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
