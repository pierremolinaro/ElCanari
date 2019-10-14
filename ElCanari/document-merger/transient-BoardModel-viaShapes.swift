//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_BoardModel_viaShapes (
       _ self_vias_x : [BoardModelVia_x],
       _ self_vias_y : [BoardModelVia_y],
       _ self_vias_padDiameter : [BoardModelVia_padDiameter]
) -> MergerViaShapeArray {
//--- START OF USER ZONE 2
  var array = [MergerViaShape] ()
  var idx = 0
  while idx < self_vias_x.count {
    let x = self_vias_x [idx].x
    let y = self_vias_y [idx].y
    let padDiameter  = self_vias_padDiameter [idx].padDiameter
    let via = MergerViaShape (x:x, y:y, padDiameter:padDiameter)
    array.append (via)
    idx += 1
  }
  return MergerViaShapeArray (array)
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
