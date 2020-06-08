//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_SymbolInstanceInDevice_selectionDisplay (
       _ self_mType_mStrokeBezierPath : NSBezierPath?,  
       _ self_mType_mFilledBezierPath : NSBezierPath?,  
       _ self_mType_pinNameShape : EBShape?,            
       _ self_mPinInstances_numberShape : [SymbolPinInstanceInDevice_numberShape],
       _ self_symbolQualifiedName : String,             
       _ prefs_symbolDrawingWidthMultipliedByTen : Int, 
       _ self_mX : Int,                                 
       _ self_mY : Int
) -> EBShape {
//--- START OF USER ZONE 2
       var shape = EBShape ()
       if let strokeBezierPath = self_mType_mStrokeBezierPath,
          let filledBezierPath = self_mType_mFilledBezierPath,
          let pinNameShape = self_mType_pinNameShape {
      //--- Compute display rect
        var r = NSRect.null
        if !strokeBezierPath.isEmpty {
          r = r.union (strokeBezierPath.bounds)
        }
        if !filledBezierPath.isEmpty {
          r = r.union (filledBezierPath.bounds)
        }
      //--- Pin names
        r = r.union (pinNameShape.boundingBox)
      //--- Pin numbers
        for p in self_mPinInstances_numberShape {
          if let s = p.numberShape {
            r = r.union (s.boundingBox)
          }
        }
      //--- Frame
        let VERTICAL_MARGIN : CGFloat = 1.0
     //--- Name shape
        let nameTextAttributes : [NSAttributedString.Key : Any] = [
          NSAttributedString.Key.font : NSFont.systemFont (ofSize: 4.0)
        ]
        let nameShapeSize = EBShape (text: self_symbolQualifiedName, NSPoint (), nameTextAttributes, .center, .above, knobIndex: nil).boundingBox.size
        r = r.insetBy (dx: -VERTICAL_MARGIN, dy: -VERTICAL_MARGIN)
        if nameShapeSize.width > r.size.width {
          r = r.insetBy (dx: (r.size.width - nameShapeSize.width) / 2.0, dy: 0.0)
        }
      //--- Frame
        let horizontalSeparatorY = r.maxY
        r.size.height += nameShapeSize.height + 2.0 * VERTICAL_MARGIN
        let frameRadius : CGFloat = 3.0
        r = r.insetBy (dx: -frameRadius - CGFloat (prefs_symbolDrawingWidthMultipliedByTen) / 20.0, dy: -CGFloat (prefs_symbolDrawingWidthMultipliedByTen) / 20.0)
        var bp = EBBezierPath (roundedRect: r, xRadius: frameRadius, yRadius: frameRadius)
        bp.move (to: NSPoint (x: r.minX, y: horizontalSeparatorY))
        bp.line (to: NSPoint (x: r.maxX, y: horizontalSeparatorY))
        bp.lineWidth = 0.5
        shape.add (stroke: [bp], .cyan)
       }
     //---
       var at = AffineTransform ()
       at.translate (x: canariUnitToCocoa (self_mX), y: canariUnitToCocoa (self_mY))
       return shape.transformed (by: at)
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
