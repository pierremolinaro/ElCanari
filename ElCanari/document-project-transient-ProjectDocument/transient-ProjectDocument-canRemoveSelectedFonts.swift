//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_ProjectDocument_canRemoveSelectedFonts (
       _ self_projectFontController_selectedArray_all_canRemoveFont : [FontInProject_canRemoveFont]
) -> Bool {
//--- START OF USER ZONE 2
   for font in self_projectFontController_selectedArray_all_canRemoveFont {
     let canRemoveFont = font.canRemoveFont ?? false
     if !canRemoveFont {
       return false
     }
   }
   return true
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
