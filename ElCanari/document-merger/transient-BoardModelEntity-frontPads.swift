//--- START OF USER ZONE 1


//--- END OF USER ZONE 1
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func compute_BoardModelEntity_frontPads (_ inArg0 : [BoardModelPadEntity_x],
                                         _ inArg1 : [BoardModelPadEntity_y],
                                         _ inArg2 : [BoardModelPadEntity_width],
                                         _ inArg3 : [BoardModelPadEntity_height],
                                         _ inArg4 : [BoardModelPadEntity_holeDiameter],
                                         _ inArg5 : [BoardModelPadEntity_shape],
                                         _ inArg6 : [BoardModelPadEntity_side],
                                         _ inArg7 : [BoardModelPadEntity_rotation]) -> MergerPadArray {
//--- START OF USER ZONE 2
  var padArray = [MergerPad] ()
  var idx = 0
  while idx < inArg0.count {
    let side = inArg6 [idx].side
    if (side == .traversing) || (side == .front) {
      let x = inArg0 [idx].x
      let y = inArg1 [idx].y
      let width = inArg2 [idx].width
      let height = inArg3 [idx].height
      let holeDiameter = inArg4 [idx].holeDiameter
      let shape = inArg5 [idx].shape
      let rotation = inArg7 [idx].rotation
      padArray.append (MergerPad (x:x, y:y, width:width, height:height, holeDiameter:holeDiameter, shape:shape, rotation:rotation))
    }
    idx += 1
  }
  return MergerPadArray (padArray)
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
