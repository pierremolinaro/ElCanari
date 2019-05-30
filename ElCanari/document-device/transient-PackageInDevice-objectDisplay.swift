//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_PackageInDevice_objectDisplay (
       _ self_mMasterPads_padNumberDisplay : [MasterPadInDevice_padNumberDisplay],
       _ self_mRoot_mShowPackagePadNumbers : Bool?,
       _ self_mRoot_mShowPackages : Bool?,    
       _ self_mRoot_mShowPackageFrontPads : Bool?,
       _ self_mRoot_mShowPackageBackPads : Bool?,
       _ self_mStrokeBezierPath : NSBezierPath,
       _ prefs_packageColor : NSColor,        
       _ prefs_packageDrawingWidthMultipliedByTen : Int,
       _ self_frontSidePadFilledBezierPathArray : BezierPathArray,
       _ prefs_frontSidePadColor : NSColor,   
       _ self_backSidePadFilledBezierPathArray : BezierPathArray,
       _ prefs_backSidePadColor : NSColor,    
       _ self_mName : String,                 
       _ self_mX : Int,                       
       _ self_mY : Int
) -> EBShape {
//--- START OF USER ZONE 2
      let shape = EBShape ()
    //--- Compute display rect
      var r = NSRect.null
      if !self_mStrokeBezierPath.isEmpty {
        r = r.union (self_mStrokeBezierPath.bounds)
      }
      r = r.union (self_frontSidePadFilledBezierPathArray.bounds)
      r = r.union (self_backSidePadFilledBezierPathArray.bounds)
    //--- Frame
      let nameTextAttributes : [NSAttributedString.Key : Any] = [
        NSAttributedString.Key.font : NSFont.systemFont (ofSize: 4.0)
      ]
      let frameRadius : CGFloat = 3.0
      let enlarge = -frameRadius - CGFloat (prefs_packageDrawingWidthMultipliedByTen) / 20.0
      r = r.insetBy (dx: enlarge, dy: enlarge)
      let nameOrigin = NSPoint (x: r.midX, y: r.maxY)
      let s = self_mName.size (withAttributes: nameTextAttributes)
      r.size.height += s.height
      let e = (r.size.width - s.width) / 2.0 - frameRadius
      if e < 0.0 {
        r = r.insetBy (dx: e, dy: 0.0)
      }
      var bp = NSBezierPath (roundedRect: r, xRadius: frameRadius, yRadius: frameRadius)
      shape.append (EBFilledBezierPathShape ([bp], NSColor.lightGray.blended (withFraction: 0.75, of: .white)!))
      bp.move (to: NSPoint (x: r.minX, y: nameOrigin.y))
      bp.line (to: NSPoint (x: r.maxX, y: nameOrigin.y))
      bp.lineWidth = 0.5
      shape.append (EBStrokeBezierPathShape ([bp], NSColor.lightGray))
    //--- Name
      let nameShape = EBTextShape (self_mName, nameOrigin, nameTextAttributes, .center, .above)
      shape.append (nameShape)
    //--- Back side pad
      if self_mRoot_mShowPackageBackPads ?? false {
        shape.append (EBFilledBezierPathShape (self_backSidePadFilledBezierPathArray.array, prefs_backSidePadColor))
      }
    //--- Top side pad
      if self_mRoot_mShowPackageFrontPads ?? false {
        shape.append (EBFilledBezierPathShape (self_frontSidePadFilledBezierPathArray.array, prefs_frontSidePadColor))
      }
    //--- Pad number
      if self_mRoot_mShowPackagePadNumbers ?? false {
        for pad in self_mMasterPads_padNumberDisplay {
          if let textShape = pad.padNumberDisplay {
            shape.append (textShape)
          }
        }
//        for slavePad in self_mSlavePads_padNumberDisplay {
//          if let textShape = slavePad.padNumberDisplay {
//            shape.append (textShape)
//          }
//        }
      }
    //--- Package shape
      if self_mRoot_mShowPackages ?? false {
        bp = NSBezierPath ()
        bp.append (self_mStrokeBezierPath)
        bp.lineWidth = CGFloat (prefs_packageDrawingWidthMultipliedByTen) / 10.0
        bp.lineCapStyle = .round
        shape.append (EBStrokeBezierPathShape ([bp], prefs_packageColor))
      }
    //---
      let transform = NSAffineTransform ()
      transform.translateX (by: canariUnitToCocoa (self_mX), yBy: canariUnitToCocoa (self_mY))
      return shape.transformedBy (transform)
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
