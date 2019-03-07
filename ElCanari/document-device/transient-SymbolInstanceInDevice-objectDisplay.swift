//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_SymbolInstanceInDevice_objectDisplay (
       _ self_mType_mStrokeBezierPath : NSBezierPath?,
       _ self_mType_mFilledBezierPath : NSBezierPath?,
       _ self_mType_mTypeName : String?,             
       _ self_mInstanceName : String,                
       _ self_mX : Int,                              
       _ self_mY : Int,                              
       _ prefs_symbolDrawingWidthMultipliedByTen : Int,
       _ prefs_symbolColor : NSColor
) -> EBShape {
//--- START OF USER ZONE 2
       let shape = EBShape ()
       if let strokeBezierPath = self_mType_mStrokeBezierPath,
          let filledBezierPath = self_mType_mFilledBezierPath,
          let typeName = self_mType_mTypeName {
      //--- Compute display rect
        var r = NSRect.null
        if !strokeBezierPath.isEmpty {
          r = r.union (strokeBezierPath.bounds)
        }
        if !filledBezierPath.isEmpty {
          r = r.union (filledBezierPath.bounds)
        }
      //--- qualified name
        let qualifiedName = typeName + ":" + self_mInstanceName
      //--- Frame
         let nameTextAttributes : [NSAttributedString.Key : Any] = [
          NSAttributedString.Key.font : NSFont.systemFont (ofSize: 4.0)
        ]
        let frameRadius : CGFloat = 3.0
        let enlarge = -frameRadius - CGFloat (prefs_symbolDrawingWidthMultipliedByTen) / 20.0
        r = r.insetBy (dx: enlarge, dy: enlarge)
        let nameOrigin = NSPoint (x: r.midX, y: r.maxY)
        let s = qualifiedName.size (withAttributes: nameTextAttributes)
        r.size.height += s.height
        let e = (r.size.width - s.width) / 2.0 - frameRadius
        if e < 0.0 {
          r = r.insetBy (dx: e, dy: 0.0)
        }
        let bp = NSBezierPath (roundedRect: r, xRadius: frameRadius, yRadius: frameRadius)
        shape.append (EBFilledBezierPathShape ([bp], NSColor.lightGray.blended (withFraction: 0.75, of: .white)!))
        bp.move (to: NSPoint (x: r.minX, y: nameOrigin.y))
        bp.line (to: NSPoint (x: r.maxX, y: nameOrigin.y))
        bp.lineWidth = 0.5
        shape.append (EBStrokeBezierPathShape ([bp], NSColor.lightGray))
      //--- Name
        let nameShape = EBTextShape (qualifiedName, nameOrigin, nameTextAttributes, .center, .above)
        shape.append (nameShape)
      //--- Stroke Bezier path
         strokeBezierPath.lineWidth = CGFloat (prefs_symbolDrawingWidthMultipliedByTen) / 10.0
         strokeBezierPath.lineCapStyle = .round
         shape.append (EBStrokeBezierPathShape ([strokeBezierPath], prefs_symbolColor))
      //--- Filled Bezier path
         shape.append (EBFilledBezierPathShape ([filledBezierPath], prefs_symbolColor))
       }
     //---
       let at = NSAffineTransform ()
       at.translateX (by: canariUnitToCocoa (self_mX), yBy: canariUnitToCocoa (self_mY))
       return shape.transformedBy (at)
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
