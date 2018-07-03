//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func compute_BoardModelEntity_holeLayer (
       _ self_holes : MergerHoleArray
) -> CALayer {
//--- START OF USER ZONE 2
  var components = [CAShapeLayer] ()
  for hole in self_holes.holeArray {
    let x = canariUnitToCocoa (hole.x)
    let y = canariUnitToCocoa (hole.y)
    let diameter = canariUnitToCocoa (hole.holeDiameter)
    let r = CGRect (x: x - diameter / 2.0 , y: y - diameter / 2.0, width: diameter, height: diameter)
    let shape = CAShapeLayer ()
    shape.path = CGPath (ellipseIn: r, transform: nil)
    shape.fillColor = NSColor.white.cgColor
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
