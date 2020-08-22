//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//----------------------------------------------------------------------------------------------------------------------

func transient_BoardModel_frontPadArray (
       _ self_frontPads_x : [BoardModelPad_x],
       _ self_frontPads_y : [BoardModelPad_y],
       _ self_frontPads_width : [BoardModelPad_width],
       _ self_frontPads_height : [BoardModelPad_height],
       _ self_frontPads_shape : [BoardModelPad_shape],
       _ self_frontPads_rotation : [BoardModelPad_rotation]
) -> MergerPadArray {
//--- START OF USER ZONE 2
  var padArray = [MergerPad] ()
  var idx = 0
  while idx < self_frontPads_x.count {
    let x = self_frontPads_x [idx].x
    let y = self_frontPads_y [idx].y
    let width = self_frontPads_width [idx].width
    let height = self_frontPads_height [idx].height
    let shape = self_frontPads_shape [idx].shape
    let rotation = self_frontPads_rotation [idx].rotation
    padArray.append (MergerPad (x:x, y:y, width:width, height:height, shape:shape, rotation:rotation))
    idx += 1
  }
  return MergerPadArray (padArray)
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
