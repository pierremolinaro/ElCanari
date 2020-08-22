//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//----------------------------------------------------------------------------------------------------------------------

func transient_PackageInDevice_selectionDisplay (
       _ self_mMasterPads_padNumberDisplay : [MasterPadInDevice_padNumberDisplay],
       _ self_mRoot_mShowPackagePadNumbers : Bool?,
       _ self_mRoot_mShowPackages : Bool?,       
       _ self_mRoot_mShowPackageFrontPads : Bool?,
       _ self_mRoot_mShowPackageBackPads : Bool?,
       _ self_mStrokeBezierPath : NSBezierPath,  
       _ prefs_packageDrawingWidthMultipliedByTen : Int,
       _ self_frontSidePadFilledBezierPathArray : BezierPathArray,
       _ self_backSidePadFilledBezierPathArray : BezierPathArray,
       _ self_mName : String,                    
       _ self_mX : Int,                          
       _ self_mY : Int
) -> EBShape {
//--- START OF USER ZONE 2
    //--- Back side pad
      var packageShape = EBShape ()
      if self_mRoot_mShowPackageBackPads ?? false {
        packageShape.add (filled: self_backSidePadFilledBezierPathArray.array, .black) // Any color
      }
    //--- Top side pad
      if self_mRoot_mShowPackageFrontPads ?? false {
        packageShape.add (filled: self_frontSidePadFilledBezierPathArray.array, .black) // Any color
      }
    //--- Pad number
      if self_mRoot_mShowPackagePadNumbers ?? false {
        for pad in self_mMasterPads_padNumberDisplay {
          if let textShape = pad.padNumberDisplay {
            packageShape.add (textShape)
          }
        }
      }
    //--- Package shape
      if self_mRoot_mShowPackages ?? false {
        var bp = EBBezierPath ()
        bp.append (self_mStrokeBezierPath)
        bp.lineWidth = CGFloat (prefs_packageDrawingWidthMultipliedByTen) / 10.0
        bp.lineCapStyle = .round
        packageShape.add (stroke: [bp], .black) // Any color
      }
      let MARGIN : CGFloat = 1.0
      var r = packageShape.boundingBox.insetBy (dx: -MARGIN, dy: -MARGIN)
    //--- Package Name
      let nameTextAttributes : [NSAttributedString.Key : Any] = [
        NSAttributedString.Key.font : NSFont.systemFont (ofSize: 4.0)
      ]
      let nameShapeSize = EBShape (text: self_mName, NSPoint (), nameTextAttributes, .center, .above).boundingBox.size
      if nameShapeSize.width > r.width {
        r = r.insetBy (dx: (r.width - nameShapeSize.width) / 2.0, dy: 0.0)
      }
    //---
      let horizontalSeparatorY = r.maxY
      r.size.height += nameShapeSize.height + 2.0 * MARGIN
      let frameRadius : CGFloat = 3.0
      r = r.insetBy (dx: -frameRadius - CGFloat (prefs_packageDrawingWidthMultipliedByTen) / 20.0, dy: -CGFloat (prefs_packageDrawingWidthMultipliedByTen) / 20.0)
      var bp = EBBezierPath (roundedRect: r, xRadius: frameRadius, yRadius: frameRadius)
      bp.move (to: NSPoint (x: r.minX, y: horizontalSeparatorY))
      bp.line (to: NSPoint (x: r.maxX, y: horizontalSeparatorY))
      bp.lineWidth = 0.5
      let shape = EBShape (stroke: [bp], .cyan)
      var transform = AffineTransform ()
      transform.translate (x: canariUnitToCocoa (self_mX), y: canariUnitToCocoa (self_mY))
      return shape.transformed (by: transform)
//--- END OF USER ZONE 2
}

//----------------------------------------------------------------------------------------------------------------------
