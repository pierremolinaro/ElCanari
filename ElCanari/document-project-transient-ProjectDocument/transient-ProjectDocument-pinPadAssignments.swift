//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//----------------------------------------------------------------------------------------------------------------------

func transient_ProjectDocument_pinPadAssignments (
       _ self_projectDeviceController_selectedArray_all_pinPadAssignments : [DeviceInProject_pinPadAssignments]
) -> ThreeStringArray {
//--- START OF USER ZONE 2
        if self_projectDeviceController_selectedArray_all_pinPadAssignments.count == 1 {
          return self_projectDeviceController_selectedArray_all_pinPadAssignments [0].pinPadAssignments ?? []
        }else{
          return []
        }
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
