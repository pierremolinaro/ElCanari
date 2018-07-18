//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func compute_BoardModel_padsHoles (
       _ self_pads_x : [BoardModelPad_x],
       _ self_pads_y : [BoardModelPad_y],
       _ self_pads_holeDiameter : [BoardModelPad_holeDiameter]
) -> MergerHoleArray {
//--- START OF USER ZONE 2
  var holeArray = [MergerHole] ()
  var idx = 0
  while idx < self_pads_x.count {
    let holeDiameter = self_pads_holeDiameter [idx].holeDiameter
    if holeDiameter > 0 {
      let x = self_pads_x [idx].x
      let y = self_pads_y [idx].y
      holeArray.append (MergerHole (x:x, y:y, holeDiameter:holeDiameter))
    }
    idx += 1
  }
  return MergerHoleArray (holeArray)
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————