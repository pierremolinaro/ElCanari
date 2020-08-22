//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//----------------------------------------------------------------------------------------------------------------------

func transient_PackageRoot_padNumberDisplay (
       _ prefs_showPadNumber : Bool,         
       _ self_packagePads_padNumberDisplay : [PackagePad_padNumberDisplay],
       _ self_packageSlavePads_padNumberDisplay : [PackageSlavePad_padNumberDisplay]
) -> EBShape {
//--- START OF USER ZONE 2
   var shape = EBShape ()
   if prefs_showPadNumber {
     for masterPad in self_packagePads_padNumberDisplay {
       if let s = masterPad.padNumberDisplay {
         shape.add (s)
       }
     }
     for slavePad in self_packageSlavePads_padNumberDisplay {
       if let s = slavePad.padNumberDisplay {
         shape.add (s)
       }
     }
   }
   return shape
//--- END OF USER ZONE 2
}

//----------------------------------------------------------------------------------------------------------------------
