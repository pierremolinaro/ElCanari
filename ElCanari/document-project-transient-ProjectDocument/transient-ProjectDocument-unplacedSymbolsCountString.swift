//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//----------------------------------------------------------------------------------------------------------------------

func transient_ProjectDocument_unplacedSymbolsCountString (
       _ self_unplacedSymbolsCount : Int
) -> String {
//--- START OF USER ZONE 2
        if self_unplacedSymbolsCount == 0 {
          return "No symbol to insert"
        }else if self_unplacedSymbolsCount == 1 {
          return "1 symbol to insert"
        }else{
          return "\(self_unplacedSymbolsCount) symbols to insert"
        }
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
