//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func compute_MergerBoardInstanceEntity_frontTracksDisplay (
       _ self_x : Int,                                     
       _ self_y : Int,                                     
       _ prefs_mergerColorFrontTracks : NSColor,           
       _ prefs_mergerBoardViewDisplayFrontTracks : Bool,   
       _ self_myModel_frontTrackSegments : MergerSegmentArray?
) -> CALayer {
//--- START OF USER ZONE 2
  return self_myModel_frontTrackSegments!.buildLayer (
    dx:self_x,
    dy:self_y,
    color:prefs_mergerColorFrontTracks,
    display:prefs_mergerBoardViewDisplayFrontTracks
  )
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
