//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_ProjectRoot_ercStatusImage (
       _ self_mLastERCCheckingIsSuccess : Bool,
       _ self_mLastERCCheckingSignature : UInt32,
       _ self_signatureForERCChecking : UInt32
) -> NSImage {
//--- START OF USER ZONE 2
        if self_mLastERCCheckingSignature != self_signatureForERCChecking {
          return NSImage (named: unknownStatusImageName)!
        }else if self_mLastERCCheckingIsSuccess {
          return NSImage (named: okStatusImageName)!
        }else{
          return NSImage (named: errorStatusImageName)!
        }
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
