//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_DevicePackageInProject_packagePadDictionary (
       _ self_mMasterPads_descriptor : [DeviceMasterPadInProject_descriptor]
) -> PackageMasterPadDictionary {
//--- START OF USER ZONE 2
        var result = PackageMasterPadDictionary ()
        for masterPad in self_mMasterPads_descriptor {
          let descriptor = masterPad.descriptor!
          result [descriptor.name] = descriptor
        }
        return result
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
