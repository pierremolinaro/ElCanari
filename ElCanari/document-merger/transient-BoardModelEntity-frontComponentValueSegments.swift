//--- START OF USER ZONE 1


//--- END OF USER ZONE 1
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func compute_BoardModelEntity_frontComponentValueSegments (_ self_2E_frontComponentValues_0 : [BoardModelFrontComponentValueEntity_x1],
                                                           _ self_2E_frontComponentValues_1 : [BoardModelFrontComponentValueEntity_y1],
                                                           _ self_2E_frontComponentValues_2 : [BoardModelFrontComponentValueEntity_x2],
                                                           _ self_2E_frontComponentValues_3 : [BoardModelFrontComponentValueEntity_y2],
                                                           _ self_2E_frontComponentValues_4 : [BoardModelFrontComponentValueEntity_width]) -> MergerSegmentArray {
//--- START OF USER ZONE 2
  var segmentArray = [MergerSegment] ()
  var idx = 0
  while idx < self_2E_frontComponentValues_0.count {
    let x1 = self_2E_frontComponentValues_0 [idx].x1.propval
    let y1 = self_2E_frontComponentValues_1 [idx].y1.propval
    let x2 = self_2E_frontComponentValues_2 [idx].x2.propval
    let y2 = self_2E_frontComponentValues_3 [idx].y2.propval
    let width = self_2E_frontComponentValues_4 [idx].width.propval
    segmentArray.append (MergerSegment (x1:x1, y1:y1, x2:x2, y2:y2, width:width))
    idx += 1
  }
  return MergerSegmentArray (segmentArray)
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
