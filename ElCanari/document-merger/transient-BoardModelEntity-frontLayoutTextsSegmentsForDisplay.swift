//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func compute_BoardModelEntity_frontLayoutTextsSegmentsForDisplay (
       _ prefs_mergerDisplayFrontLayoutTexts : Bool,              
       _ self_frontLayoutTextsSegments : MergerSegmentArray
) -> MergerSegmentArray {
//--- START OF USER ZONE 2
  return prefs_mergerDisplayFrontLayoutTexts ? self_frontLayoutTextsSegments : MergerSegmentArray ([])
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
