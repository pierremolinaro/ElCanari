//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func compute_MergerRootEntity_instancesLayerDisplay (
       _ self_boardInstances_instanceLayerDisplay : [MergerBoardInstanceEntity_instanceLayerDisplay]
) -> CALayer {
//--- START OF USER ZONE 2
  var array = [CALayer] ()
  for instance in self_boardInstances_instanceLayerDisplay {
    switch (instance.instanceLayerDisplay) {
    case .single (let v) :
      array.append (v)
    default :
      break
    }
  }
  let result = CALayer ()
  result.sublayers = array
  return result
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
