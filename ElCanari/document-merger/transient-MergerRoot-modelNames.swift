//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_MergerRoot_modelNames (
       _ self_boardModels_name : [BoardModel_name]
) -> StringTagArray {
//--- START OF USER ZONE 2
  var array = StringTagArray ()
  var idx = 0
  while idx < self_boardModels_name.count {
    array.append (StringTag (self_boardModels_name [idx].name, 0))
    idx += 1
  }
  return array
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
