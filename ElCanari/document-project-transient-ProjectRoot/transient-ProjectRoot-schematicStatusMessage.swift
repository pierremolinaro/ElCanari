//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_ProjectRoot_schematicStatusMessage (
       _ self_unplacedSymbols : StringTagArray,    
       _ self_netWarningCount : Int,               
       _ self_mSheets_connexionWarnings : [SheetInProject_connexionWarnings],
       _ self_mSheets_connexionErrors : [SheetInProject_connexionErrors]
) -> String {
//--- START OF USER ZONE 2
        var array = [String] ()
        var errorCount = 0
        for sheet in self_mSheets_connexionErrors {
          if let n = sheet.connexionErrors {
            errorCount += n
          }
        }
        if errorCount == 1 {
          array.append ("1 connection error (see \"Schematic\" page)")
        }else if errorCount > 1 {
          array.append ("\(errorCount) connection errors (see \"Schematic\" page)")
        }
        if self_netWarningCount == 1 {
          array.append ("1 net warning (see \"Net List\" page)")
        }else if self_netWarningCount > 1 {
          array.append ("\(self_netWarningCount) net warnings (see \"Net List\" page)")
        }
        var connectionWarningCount = 0
        for sheet in self_mSheets_connexionWarnings {
          if let n = sheet.connexionWarnings {
            connectionWarningCount += n
          }
        }
        if connectionWarningCount == 1 {
          array.append ("1 connection warning (see \"Schematic\" page)")
        }else if connectionWarningCount > 1 {
          array.append ("\(connectionWarningCount) connection warnings (see \"Schematic\" page)")
        }
        if self_unplacedSymbols.count == 1 {
          array.append ("1 unplaced symbol (see \"Schematic\" page)")
        }else if self_unplacedSymbols.count > 1 {
          array.append ("\(self_unplacedSymbols.count) unplaced symbols (see \"Schematic\" page)")
        }
        if array.count == 0 {
          return "Ok."
        }else{
          return array.joined (separator: "\n")
        }
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
