//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//----------------------------------------------------------------------------------------------------------------------

func transient_ProjectRoot_placedComponentNameArray (
       _ self_mComponents_componentName : [ComponentInProject_componentName],
       _ self_mComponents_componentIsPlacedInBoard : [ComponentInProject_componentIsPlacedInBoard]
) -> StringArray {
//--- START OF USER ZONE 2
        var result = StringArray ()
        var idx = 0
        while idx < self_mComponents_componentName.count {
          if self_mComponents_componentIsPlacedInBoard [idx].componentIsPlacedInBoard! {
            result.append (self_mComponents_componentName [idx].componentName!)
          }
          idx += 1
        }
        return result

//--- END OF USER ZONE 2
}

//----------------------------------------------------------------------------------------------------------------------
