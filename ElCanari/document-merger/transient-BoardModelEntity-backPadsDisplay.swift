//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func compute_BoardModelEntity_backPadsDisplay (
       _ prefs_mergerDisplayBackPads : Bool,   
       _ self_backPads : MergerPadArray
) -> CALayer {
//--- START OF USER ZONE 2
  var components = [CAShapeLayer] ()
  if prefs_mergerDisplayBackPads {
    for pad in self_backPads.padArray {
      let x = canariUnitToCocoa (pad.x)
      let y = canariUnitToCocoa (pad.y)
      let width = canariUnitToCocoa (pad.width)
      let height = canariUnitToCocoa (pad.height)
      let r = CGRect (x: -width / 2.0, y: -height / 2.0, width:width, height:height)
      var transform = CGAffineTransform (translationX:x, y:y).rotated (by:canariRotationToRadians (pad.rotation))
      let path : CGPath
      switch pad.shape {
      case .rectangular :
        path = CGPath (rect:r, transform:&transform)
      case .round :
        if pad.width < pad.height {
          path = CGPath (roundedRect:r, cornerWidth:width / 2.0, cornerHeight:width / 2.0, transform:&transform)
        }else if pad.width > pad.height {
          path = CGPath (roundedRect:r, cornerWidth:height / 2.0, cornerHeight:height / 2.0, transform:&transform)
        }else{
          path = CGPath (ellipseIn:r, transform:&transform)
        }
      }
      let shape = CAShapeLayer ()
      shape.path = path
      shape.position = CGPoint (x:0.0, y:0.0)
      shape.strokeColor = nil
      shape.fillColor = NSColor.orange.cgColor
  //    shape.drawsAsynchronously = DRAWS_ASYNCHRONOUSLY
      shape.isOpaque = true
      components.append (shape)
    }
  }
  let result = CALayer ()
  result.sublayers = components
  return result
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
