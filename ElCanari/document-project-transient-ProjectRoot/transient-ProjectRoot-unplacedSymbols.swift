//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//----------------------------------------------------------------------------------------------------------------------

func transient_ProjectRoot_unplacedSymbols (
       _ self_mComponents_unplacedSymbols : [ComponentInProject_unplacedSymbols]
) -> StringTagArray {
//--- START OF USER ZONE 2
        var result = StringTagArray ()
        for component in self_mComponents_unplacedSymbols {
          if let us = component.unplacedSymbols {
            result += us
          }
        }
        return result
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
