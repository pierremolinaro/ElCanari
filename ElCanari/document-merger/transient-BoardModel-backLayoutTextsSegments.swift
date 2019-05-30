//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_BoardModel_backLayoutTextsSegments (
       _ self_backLayoutTexts_x1 : [SegmentEntity_x1],
       _ self_backLayoutTexts_y1 : [SegmentEntity_y1],
       _ self_backLayoutTexts_x2 : [SegmentEntity_x2],
       _ self_backLayoutTexts_y2 : [SegmentEntity_y2],
       _ self_backLayoutTexts_width : [SegmentEntity_width]
) -> MergerSegmentArray {
//--- START OF USER ZONE 2
  var segmentArray = [CanariSegment] ()
  var idx = 0
  while idx < self_backLayoutTexts_x1.count {
    let x1 = self_backLayoutTexts_x1 [idx].x1
    let y1 = self_backLayoutTexts_y1 [idx].y1
    let x2 = self_backLayoutTexts_x2 [idx].x2
    let y2 = self_backLayoutTexts_y2 [idx].y2
    let width = self_backLayoutTexts_width [idx].width
    segmentArray.append (CanariSegment (x1:x1, y1:y1, x2:x2, y2:y2, width:width))
    idx += 1
  }
  return MergerSegmentArray (segmentArray)
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
