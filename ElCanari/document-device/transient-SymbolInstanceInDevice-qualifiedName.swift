//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_SymbolInstanceInDevice_qualifiedName (
       _ self_mInstanceName : String,                
       _ self_mType_mTypeName : String?
) -> String {
//--- START OF USER ZONE 2
        var qualifiedName = self_mType_mTypeName ?? "?"
        if self_mInstanceName != "" {
          qualifiedName += ":" + self_mInstanceName
        }
        return qualifiedName
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
