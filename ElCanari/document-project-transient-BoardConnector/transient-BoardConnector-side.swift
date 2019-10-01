//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_BoardConnector_side (
       _ self_mComponent_componentPadDictionary : ComponentPadDescriptorDictionary?,
       _ self_mComponentPadName : String,
       _ self_mPadIndex : Int,      
       _ self_mTracksP1_mSide : [BoardTrack_mSide],
       _ self_mTracksP2_mSide : [BoardTrack_mSide]
) -> ConnectorSide {
//--- START OF USER ZONE 2
        var frontSide = false
        var backSide = false
        for track in self_mTracksP1_mSide {
          switch track.mSide {
          case .back  : backSide  = true
          case .front : frontSide = true
          }
        }
        for track in self_mTracksP2_mSide {
          switch track.mSide {
          case .back  : backSide  = true
          case .front : frontSide = true
          }
        }
        if let descriptor = self_mComponent_componentPadDictionary? [self_mComponentPadName] {
          switch descriptor.pads [self_mPadIndex].side {
          case .back  : backSide  = true
          case .front : frontSide = true
          case .both  : backSide  = true ; frontSide = true
          }
        }
        if backSide && frontSide {
          return  .both
        }else if backSide {
          return .back
        }else if frontSide {
          return .front
        }else{
          return  .both
        }
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
