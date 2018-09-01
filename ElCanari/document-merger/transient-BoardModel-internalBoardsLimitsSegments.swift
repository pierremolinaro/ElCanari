//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_BoardModel_internalBoardsLimitsSegments (
       _ self_internalBoardsLimits_x1 : [CanariSegment_x1],
       _ self_internalBoardsLimits_y1 : [CanariSegment_y1],
       _ self_internalBoardsLimits_x2 : [CanariSegment_x2],
       _ self_internalBoardsLimits_y2 : [CanariSegment_y2],
       _ self_internalBoardsLimits_width : [CanariSegment_width]
) -> MergerSegmentArray {
//--- START OF USER ZONE 2
  var segmentArray = [MergerSegment] ()
  var idx = 0
  while idx < self_internalBoardsLimits_x1.count {
    let x1 = self_internalBoardsLimits_x1 [idx].x1
    let y1 = self_internalBoardsLimits_y1 [idx].y1
    let x2 = self_internalBoardsLimits_x2 [idx].x2
    let y2 = self_internalBoardsLimits_y2 [idx].y2
    let width = self_internalBoardsLimits_width [idx].width
    segmentArray.append (MergerSegment (x1:x1, y1:y1, x2:x2, y2:y2, width:width))
    idx += 1
  }
  return MergerSegmentArray (segmentArray)
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————