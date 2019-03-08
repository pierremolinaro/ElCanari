//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_SymbolInstanceInDevice_selectionDisplay (
       _ self_mType_mStrokeBezierPath : NSBezierPath?,  
       _ self_mType_mFilledBezierPath : NSBezierPath?,  
       _ self_qualifiedName : String,                   
       _ prefs_symbolDrawingWidthMultipliedByTen : Int, 
       _ self_mX : Int,                                 
       _ self_mY : Int
) -> EBShape {
//--- START OF USER ZONE 2
       let shape = EBShape ()
       if let strokeBezierPath = self_mType_mStrokeBezierPath,
          let filledBezierPath = self_mType_mFilledBezierPath {
      //--- Compute display rect
        var r = NSRect.null
        if !strokeBezierPath.isEmpty {
          r = r.union (strokeBezierPath.bounds)
        }
        if !filledBezierPath.isEmpty {
          r = r.union (filledBezierPath.bounds)
        }
      //--- Frame
         let nameTextAttributes : [NSAttributedString.Key : Any] = [
          NSAttributedString.Key.font : NSFont.systemFont (ofSize: 4.0)
        ]
        let frameRadius : CGFloat = 3.0
        let enlarge = -frameRadius - CGFloat (prefs_symbolDrawingWidthMultipliedByTen) / 20.0
        r = r.insetBy (dx: enlarge, dy: enlarge)
        let nameOrigin = NSPoint (x: r.midX, y: r.maxY)
        let s = self_qualifiedName.size (withAttributes: nameTextAttributes)
        r.size.height += s.height
        let e = (r.size.width - s.width) / 2.0 - frameRadius
        if e < 0.0 {
          r = r.insetBy (dx: e, dy: 0.0)
        }
        let bp = NSBezierPath (roundedRect: r, xRadius: frameRadius, yRadius: frameRadius)
        bp.move (to: NSPoint (x: r.minX, y: nameOrigin.y))
        bp.line (to: NSPoint (x: r.maxX, y: nameOrigin.y))
        bp.lineWidth = 0.5
        shape.append (EBStrokeBezierPathShape ([bp], NSColor.cyan))
       }
     //---
       let at = NSAffineTransform ()
       at.translateX (by: canariUnitToCocoa (self_mX), yBy: canariUnitToCocoa (self_mY))
       return shape.transformedBy (at)
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
