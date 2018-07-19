//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_BoardModel_boardLimitsBezierPaths (
       _ self_modelWidth : Int,                   
       _ self_modelHeight : Int,                  
       _ self_modelLimitWidth : Int
) -> BezierPathArray {
//--- START OF USER ZONE 2
  let modelWidth = canariUnitToCocoa (self_modelWidth)
  let modelHeight = canariUnitToCocoa (self_modelHeight)
  let limitWidth = canariUnitToCocoa (self_modelLimitWidth)
  let left  = limitWidth / 2.0
  let right = modelWidth - limitWidth / 2.0
  let bottom  = limitWidth / 2.0
  let top     = modelHeight - limitWidth / 2.0
  let bp = NSBezierPath ()
  bp.move (to : CGPoint (x:left, y:bottom))
  bp.line (to : CGPoint (x:left, y:top))
  bp.line (to : CGPoint (x:right, y:top))
  bp.line (to : CGPoint (x:right, y:bottom))
  bp.close ()
  bp.lineWidth = limitWidth
  bp.lineCapStyle = .roundLineCapStyle
  var array = BezierPathArray ()
  array.append (bp)
  return array
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
