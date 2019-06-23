//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_PackageInDevice_selectionDisplay (
       _ self_mStrokeBezierPath : NSBezierPath,  
       _ prefs_packageDrawingWidthMultipliedByTen : Int,
       _ self_frontSidePadFilledBezierPathArray : BezierPathArray,
       _ self_backSidePadFilledBezierPathArray : BezierPathArray,
       _ self_mName : String,                    
       _ self_mX : Int,                          
       _ self_mY : Int
) -> EBShape {
//--- START OF USER ZONE 2
      let nameTextAttributes : [NSAttributedString.Key : Any] = [
        NSAttributedString.Key.font : NSFont.systemFont (ofSize: 4.0)
      ]
      let shape = EBShape ()
    //--- Compute display rect
      var r = NSRect.null
      if !self_mStrokeBezierPath.isEmpty {
        r = r.union (self_mStrokeBezierPath.bounds)
      }
      r = r.union (self_frontSidePadFilledBezierPathArray.bounds)
      r = r.union (self_backSidePadFilledBezierPathArray.bounds)
    //--- Frame
      let frameRadius : CGFloat = 3.0
      let enlarge = -frameRadius - CGFloat (prefs_packageDrawingWidthMultipliedByTen) / 20.0
      r = r.insetBy (dx: enlarge, dy: enlarge)
      let s = self_mName.size (withAttributes: nameTextAttributes)
      r.size.height += s.height
      let e = (r.size.width - s.width) / 2.0 - frameRadius
      if e < 0.0 {
        r = r.insetBy (dx: e, dy: 0.0)
      }
      var bp = EBBezierPath (roundedRect: r, xRadius: frameRadius, yRadius: frameRadius)
      bp.lineWidth = 0.5
      shape.append (EBStrokeBezierPathShape ([bp], NSColor.cyan))
    //---
      var transform = AffineTransform ()
      transform.translate (x: canariUnitToCocoa (self_mX), y: canariUnitToCocoa (self_mY))
      return shape.transformed (by: transform)
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
