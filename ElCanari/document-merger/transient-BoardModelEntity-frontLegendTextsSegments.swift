//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func compute_BoardModelEntity_frontLegendTextsSegments (
       _ self_frontLegendTexts_x1 : [CanariSegmentEntity_x1],
       _ self_frontLegendTexts_y1 : [CanariSegmentEntity_y1],
       _ self_frontLegendTexts_x2 : [CanariSegmentEntity_x2],
       _ self_frontLegendTexts_y2 : [CanariSegmentEntity_y2],
       _ self_frontLegendTexts_width : [CanariSegmentEntity_width]
) -> MergerSegmentArray {
//--- START OF USER ZONE 2
  var segmentArray = [MergerSegment] ()
  var idx = 0
  while idx < self_frontLegendTexts_x1.count {
    let x1 = self_frontLegendTexts_x1 [idx].x1
    let y1 = self_frontLegendTexts_y1 [idx].y1
    let x2 = self_frontLegendTexts_x2 [idx].x2
    let y2 = self_frontLegendTexts_y2 [idx].y2
    let width = self_frontLegendTexts_width [idx].width
    segmentArray.append (MergerSegment (x1:x1, y1:y1, x2:x2, y2:y2, width:width))
    idx += 1
  }
  return MergerSegmentArray (segmentArray)
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
