//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func compute_BoardModelEntity_backLegendTextsLayerDisplay (
       _ prefs_mergerColorBackLegendTexts : NSColor,       
       _ prefs_mergerModelViewDisplayBackLegendTexts : Bool,
       _ self_backLegendTextsSegments : MergerSegmentArray
) -> CALayer {
//--- START OF USER ZONE 2
  return self_backLegendTextsSegments.buildLayer (color:prefs_mergerColorBackLegendTexts, display:prefs_mergerModelViewDisplayBackLegendTexts)
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————