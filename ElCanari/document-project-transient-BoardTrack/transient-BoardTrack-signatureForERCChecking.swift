//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//----------------------------------------------------------------------------------------------------------------------

func transient_BoardTrack_signatureForERCChecking (
       _ self_mSide : TrackSide,                   
       _ self_actualTrackWidth : Int
) -> UInt32 {
//--- START OF USER ZONE 2
        var crc : UInt32 = 0
        crc.accumulateUInt32 (self_mSide.ebHashValue ())
        crc.accumulateUInt32 (self_actualTrackWidth.ebHashValue ())
        return crc
//--- END OF USER ZONE 2
}

//----------------------------------------------------------------------------------------------------------------------
