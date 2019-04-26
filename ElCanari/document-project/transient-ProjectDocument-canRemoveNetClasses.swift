//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_ProjectDocument_canRemoveNetClasses (
       _ root_mNetClasses_count : Int,              
       _ self_mNetClassController_selectedArray_all_canRemove : [NetClassInProject_canRemove]
) -> Bool {
//--- START OF USER ZONE 2
       var canRemove = root_mNetClasses_count > self_mNetClassController_selectedArray_all_canRemove.count
       for netClass in self_mNetClassController_selectedArray_all_canRemove {
         if !(netClass.canRemove ?? true) {
           canRemove = false
         }
       }
       return canRemove
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
