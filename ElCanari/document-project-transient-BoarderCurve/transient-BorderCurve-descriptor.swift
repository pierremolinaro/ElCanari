//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//----------------------------------------------------------------------------------------------------------------------

func transient_BorderCurve_descriptor (
       _ self_mX : Int,                
       _ self_mY : Int,                
       _ self_mNext_mX : Int?,         
       _ self_mNext_mY : Int?,         
       _ self_mCPX1 : Int,             
       _ self_mCPY1 : Int,             
       _ self_mCPX2 : Int,             
       _ self_mCPY2 : Int,             
       _ self_mShape : BorderCurveShape
) -> BorderCurveDescriptor {
//--- START OF USER ZONE 2
    return BorderCurveDescriptor (
      p1: CanariPoint (x: self_mX, y: self_mY),
      p2: CanariPoint (x: self_mNext_mX!, y: self_mNext_mY!),
      cp1: CanariPoint (x: self_mCPX1, y: self_mCPY1),
      cp2: CanariPoint (x: self_mCPX2, y: self_mCPY2),
      shape: self_mShape
    )
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
