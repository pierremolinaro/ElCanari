//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func compute_MergerRoot_boardLimitsLayerDisplay (
       _ self_boardWidth : Int,                  
       _ self_boardHeight : Int,                 
       _ self_boardLimitWidth : Int,             
       _ prefs_mergerColorBoardLimits : NSColor, 
       _ prefs_mergerBoardViewDisplayBoardLimits : Bool
) -> CALayer {
//--- START OF USER ZONE 2
  let result = CAShapeLayer ()
  if prefs_mergerBoardViewDisplayBoardLimits && (self_boardWidth > self_boardLimitWidth) && (self_boardHeight > self_boardLimitWidth) {
    let boardWith = canariUnitToCocoa (self_boardWidth)
    let boardHeight = canariUnitToCocoa (self_boardHeight)
    let lineWidth = canariUnitToCocoa (self_boardLimitWidth)
    let path = CGMutablePath ()
    path.move    (to:CGPoint (x:lineWidth / 2.0,             y:lineWidth / 2.0))
    path.addLine (to:CGPoint (x:lineWidth / 2.0,             y:boardHeight - lineWidth / 2.0))
    path.addLine (to:CGPoint (x:boardWith - lineWidth / 2.0, y:boardHeight - lineWidth / 2.0))
    path.addLine (to:CGPoint (x:boardWith - lineWidth / 2.0, y:lineWidth / 2.0))
    path.addLine (to:CGPoint (x:lineWidth / 2.0,             y:lineWidth / 2.0))
    let shape = CAShapeLayer ()
    shape.path = path
    shape.position = CGPoint (x:0.0, y:0.0)
    shape.strokeColor = prefs_mergerColorBoardLimits.cgColor
    shape.fillColor = nil // NSColor.yellow.cgColor
    shape.lineWidth = lineWidth
    shape.lineCap = kCALineCapSquare
    shape.lineJoin = kCALineJoinMiter
    result.sublayers = [shape]
  }
  return result
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————