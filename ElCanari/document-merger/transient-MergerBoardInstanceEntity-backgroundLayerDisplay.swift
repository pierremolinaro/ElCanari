//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func compute_MergerBoardInstanceEntity_backgroundLayerDisplay (
       _ prefs_mergerColorBackground : NSColor,                
       _ self_instanceRect : CanariBoardRect
) -> CALayer {
//--- START OF USER ZONE 2
  let result = CAShapeLayer ()
  let x = canariUnitToCocoa (self_instanceRect.x)
  let y = canariUnitToCocoa (self_instanceRect.y)
  let width = canariUnitToCocoa (self_instanceRect.width)
  let height = canariUnitToCocoa (self_instanceRect.height)
  let r = CGRect (x:x, y:y, width:width, height:height)
  result.path = CGPath (rect: r, transform: nil)
  result.fillColor = prefs_mergerColorBackground.cgColor
  result.isOpaque = true
  return result
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
