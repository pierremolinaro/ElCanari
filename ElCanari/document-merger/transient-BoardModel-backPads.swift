//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func compute_BoardModel_backPads (
       _ self_pads_x : [BoardModelPad_x],
       _ self_pads_y : [BoardModelPad_y],
       _ self_pads_width : [BoardModelPad_width],
       _ self_pads_height : [BoardModelPad_height],
       _ self_pads_holeDiameter : [BoardModelPad_holeDiameter],
       _ self_pads_shape : [BoardModelPad_shape],
       _ self_pads_side : [BoardModelPad_side],
       _ self_pads_rotation : [BoardModelPad_rotation]
) -> MergerPadArray {
//--- START OF USER ZONE 2
  var padArray = [MergerPad] ()
  var idx = 0
  while idx < self_pads_x.count {
    let side = self_pads_side [idx].side
    if (side == .traversing) || (side == .back) {
      let x = self_pads_x [idx].x
      let y = self_pads_y [idx].y
      let width = self_pads_width [idx].width
      let height = self_pads_height [idx].height
      let holeDiameter = self_pads_holeDiameter [idx].holeDiameter
      let shape = self_pads_shape [idx].shape
      let rotation = self_pads_rotation [idx].rotation
      padArray.append (MergerPad (x:x, y:y, width:width, height:height, holeDiameter:holeDiameter, shape:shape, rotation:rotation))
    }
    idx += 1
  }
  return MergerPadArray (padArray)
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————