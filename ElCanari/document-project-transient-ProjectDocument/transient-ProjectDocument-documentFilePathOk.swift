//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//----------------------------------------------------------------------------------------------------------------------

func transient_ProjectDocument_documentFilePathOk (
       _ self_documentFilePath : String
) -> Bool {
//--- START OF USER ZONE 2
        var ok = self_documentFilePath != ""
        if ok {
          let baseName = self_documentFilePath.lastPathComponent.deletingPathExtension
          for char in baseName.unicodeScalars {
            ok = (char >= "A") && (char <= "Z")
            if !ok {
              ok = (char >= "a") && (char <= "z")
            }
            if !ok {
              ok = (char >= "0") && (char <= "9")
            }
            if !ok {
              ok = (char == "-") || (char == "_")
            }
            if !ok {
              break
            }
          }
        }
        return ok
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
