//--- START OF USER ZONE 1


//--- END OF USER ZONE 1
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func compute_BoardModelEntity_holes (_ self_2E_padsHoles_0 : MergerHoleArray,
                                     _ self_2E_viasHoles_1 : MergerHoleArray) -> MergerHoleArray {
//--- START OF USER ZONE 2
  return MergerHoleArray (self_2E_padsHoles_0.holeArray + self_2E_viasHoles_1.holeArray)
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
