//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//----------------------------------------------------------------------------------------------------------------------

func transient_FontRoot_currentCharacterCodePointString (
       _ self_currentCharacterCodePoint : Int
) -> String {
//--- START OF USER ZONE 2
    return "+u" + String (format: "%04X", self_currentCharacterCodePoint)
//--- END OF USER ZONE 2
}

//----------------------------------------------------------------------------------------------------------------------
