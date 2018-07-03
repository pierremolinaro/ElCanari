//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func compute_BoardModelEntity_boardLimitsLayer (
       _ self_boardLimits : MergerBoardLimits
) -> CALayer {
//--- START OF USER ZONE 2
  let shape = CAShapeLayer ()
  if self_boardLimits.lineWidth > 0 {
    let boardWith = canariUnitToCocoa (self_boardLimits.boardWidth)
    let boardHeight = canariUnitToCocoa (self_boardLimits.boardHeight)
    let lineWidth = canariUnitToCocoa (self_boardLimits.lineWidth)
    let path = CGMutablePath ()
    path.move    (to:CGPoint (x:lineWidth / 2.0,             y:lineWidth / 2.0))
    path.addLine (to:CGPoint (x:lineWidth / 2.0,             y:boardHeight - lineWidth / 2.0))
    path.addLine (to:CGPoint (x:boardWith - lineWidth / 2.0, y:boardHeight - lineWidth / 2.0))
    path.addLine (to:CGPoint (x:boardWith - lineWidth / 2.0, y:lineWidth / 2.0))
    path.addLine (to:CGPoint (x:lineWidth / 2.0,             y:lineWidth / 2.0))
    shape.path = path
//    shape.position = CGPoint (x:0.0, y:0.0)
    shape.strokeColor = NSColor.brown.cgColor
    shape.fillColor = nil
    shape.lineWidth = lineWidth
    shape.lineCap = kCALineCapSquare
    shape.lineJoin = kCALineJoinMiter
//    shape.drawsAsynchronously = DRAWS_ASYNCHRONOUSLY
    shape.isOpaque = false
  }
  return shape
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
