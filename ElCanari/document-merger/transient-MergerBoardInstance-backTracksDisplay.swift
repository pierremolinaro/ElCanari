//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_MergerBoardInstance_backTracksDisplay (
       _ self_x : Int,                                
       _ self_y : Int,                                
       _ prefs_mergerColorBackTracks : NSColor,       
       _ prefs_mergerBoardViewDisplayBackTracks : Bool,
       _ self_myModel_backTrackSegments : MergerSegmentArray?
) -> CALayer {
//--- START OF USER ZONE 2
  return self_myModel_backTrackSegments!.buildLayer (
    dx:self_x,
    dy:self_y,
    color:prefs_mergerColorBackTracks,
    display:prefs_mergerBoardViewDisplayBackTracks
  )
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
