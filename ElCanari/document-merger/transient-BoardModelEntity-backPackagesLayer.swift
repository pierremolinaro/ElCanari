//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func compute_BoardModelEntity_backPackagesLayer (
       _ self_backPackagesSegments : MergerSegmentArray
) -> CALayer {
//--- START OF USER ZONE 2
  var components = [CAShapeLayer] ()
  for segment in self_backPackagesSegments.segmentArray {
    let shape = segment.segmentShape (color:NSColor.brown.cgColor)
//    shape.drawsAsynchronously = DRAWS_ASYNCHRONOUSLY
    shape.isOpaque = true
    components.append (shape)
  }
  let result = CALayer ()
  result.sublayers = components
  return result
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
