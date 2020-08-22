//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//----------------------------------------------------------------------------------------------------------------------

func transient_ProjectRoot_schematicStatusImage (
       _ self_unplacedSymbols : StringTagArray,  
       _ self_netWarningCount : Int,             
       _ self_mSheets_connexionWarnings : [SheetInProject_connexionWarnings],
       _ self_mSheets_connexionErrors : [SheetInProject_connexionErrors]
) -> NSImage {
//--- START OF USER ZONE 2
        for sheet in self_mSheets_connexionErrors {
          if let n = sheet.connexionErrors, n > 0 {
            return NSImage (named: errorStatusImageName)!
          }
        }
        if (self_unplacedSymbols.count > 0) || (self_netWarningCount > 0) {
          return NSImage (named: warningStatusImageName)!
        }
        for sheet in self_mSheets_connexionWarnings {
          if let n = sheet.connexionWarnings, n > 0 {
            return NSImage (named: warningStatusImageName)!
          }
        }
        return NSImage (named: okStatusImageName)!
//--- END OF USER ZONE 2
}

//----------------------------------------------------------------------------------------------------------------------
