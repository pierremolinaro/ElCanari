//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_ProjectRoot_connexionWarningString (
       _ self_mSheets_connexionWarnings : [SheetInProject_connexionWarnings]
) -> String {
//--- START OF USER ZONE 2
        var connexionWarnings = 0
        for sheet in self_mSheets_connexionWarnings {
          if let n = sheet.connexionWarnings {
            connexionWarnings += n
          }
        }
        if connexionWarnings == 0 {
          return ""
//        }else if connexionWarnings == 1 {
//          return "1"
        }else{
          return "\(connexionWarnings)"
        }
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
