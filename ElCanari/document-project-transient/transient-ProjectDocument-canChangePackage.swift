//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_ProjectDocument_canChangePackage (
       _ self_componentController_selectedArray_all_availablePackages : [ComponentInProject_availablePackages]
) -> Bool {
//--- START OF USER ZONE 2
        var result = false
         if self_componentController_selectedArray_all_availablePackages.count > 0 {
           var intersectionOfPackageSet = Set (self_componentController_selectedArray_all_availablePackages [0].availablePackages!)
           for component in self_componentController_selectedArray_all_availablePackages {
             if let availablePackages = component.availablePackages {
               intersectionOfPackageSet.formIntersection (availablePackages)
             }
           }
           result = intersectionOfPackageSet.count > 0
         }
         return result
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
