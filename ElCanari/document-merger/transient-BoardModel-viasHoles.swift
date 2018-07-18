//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func compute_BoardModel_viasHoles (
       _ self_vias_x : [BoardModelVia_x],
       _ self_vias_y : [BoardModelVia_y],
       _ self_vias_holeDiameter : [BoardModelVia_holeDiameter]
) -> MergerHoleArray {
//--- START OF USER ZONE 2
  var holeArray = [MergerHole] ()
  var idx = 0
  while idx < self_vias_x.count {
    let holeDiameter = self_vias_holeDiameter [idx].holeDiameter
    let x = self_vias_x [idx].x
    let y = self_vias_y [idx].y
    holeArray.append (MergerHole (x:x, y:y, holeDiameter:holeDiameter))
    idx += 1
  }
  return MergerHoleArray (holeArray)
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————