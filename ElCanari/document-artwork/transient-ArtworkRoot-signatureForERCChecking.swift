//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_ArtworkRoot_signatureForERCChecking (
       _ self_minPPTPTTTW : Int,                    
       _ self_minValueForOARinEBUnit : Int,         
       _ self_minValueForBoardLimitWidth : Int,     
       _ self_minValueForPHDinEBUnit : Int
) -> UInt32 {
//--- START OF USER ZONE 2
        var crc : UInt32 = 0
        crc.accumulateUInt32 (self_minPPTPTTTW.ebHashValue ())
        crc.accumulateUInt32 (self_minValueForOARinEBUnit.ebHashValue ())
        crc.accumulateUInt32 (self_minValueForBoardLimitWidth.ebHashValue ())
        crc.accumulateUInt32 (self_minValueForPHDinEBUnit.ebHashValue ())
        return crc
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
