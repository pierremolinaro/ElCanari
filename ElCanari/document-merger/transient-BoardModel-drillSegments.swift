//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_BoardModel_drillSegments (
       _ self_drills_x1 : [CanariSegment_x1],
       _ self_drills_y1 : [CanariSegment_y1],
       _ self_drills_x2 : [CanariSegment_x2],
       _ self_drills_y2 : [CanariSegment_y2],
       _ self_drills_width : [CanariSegment_width]
) -> MergerSegmentArray {
//--- START OF USER ZONE 2
  var holeArray = [MergerSegment] ()
  var idx = 0
  while idx < self_drills_x1.count {
    let holeDiameter = self_drills_width [idx].width
    let x1 = self_drills_x1 [idx].x1
    let y1 = self_drills_y1 [idx].y1
    let x2 = self_drills_x2 [idx].x2
    let y2 = self_drills_y2 [idx].y2
    holeArray.append (MergerSegment (x1:x1, y1:y1, x2:x2, y2:y2, width:holeDiameter))
    idx += 1
  }
  return MergerSegmentArray (holeArray)
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————