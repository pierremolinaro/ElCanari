//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_ProjectRoot_connexionErrorString (
       _ self_mSheets_connexionErrors : [SheetInProject_connexionErrors]
) -> String {
//--- START OF USER ZONE 2
        var connexionErrors = 0
        for sheet in self_mSheets_connexionErrors {
          if let n = sheet.connexionErrors {
            connexionErrors += n
          }
        }
        if connexionErrors == 0 {
          return ""
//        }else if connexionErrors == 1 {
//          return "1"
        }else{
          return "\(connexionErrors)"
        }

//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
