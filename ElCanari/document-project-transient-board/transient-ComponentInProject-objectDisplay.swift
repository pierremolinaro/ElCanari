//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_ComponentInProject_objectDisplay (
       _ self_mX : Int,                          
       _ self_mY : Int,                          
       _ self_mRotation : Int,                   
       _ self_strokeBezierPath : NSBezierPath,   
       _ self_padDictionary : PackagePadDictionary,
       _ prefs_frontSideLegendColorForBoard : NSColor,
       _ prefs_packageDrawingWidthMultpliedByTenForBoard : Int,
       _ prefs_frontSidePadColorForBoard : NSColor,
       _ self_BoardObject_displayFrontPads : Bool,
       _ prefs_backSidePadColorForBoard : NSColor,
       _ self_BoardObject_displayBackPads : Bool
) -> EBShape {
//--- START OF USER ZONE 2
        let shape = EBShape ()
      //--- Legend
        var strokeBezierPath = EBBezierPath (self_strokeBezierPath)
        strokeBezierPath.lineWidth = CGFloat (prefs_packageDrawingWidthMultpliedByTenForBoard) / 10.0
        strokeBezierPath.lineCapStyle = .round
        strokeBezierPath.lineJoinStyle = .round
        shape.append (EBStrokeBezierPathShape ([strokeBezierPath], prefs_frontSideLegendColorForBoard))
      //---
        for (_, descriptor) in self_padDictionary {
          descriptor.accumulatePadBezierPathes (
            into: shape,
            frontPadColor: prefs_frontSidePadColorForBoard,
            displayFrontPads: self_BoardObject_displayFrontPads,
            backPadColor: prefs_backSidePadColorForBoard,
            displayBackPads: self_BoardObject_displayBackPads
          )
        }
      //---
        var af = AffineTransform ()
        let padRect = self_padDictionary.masterPadsRect
        let center = padRect.center.cocoaPoint
        af.translate (x: canariUnitToCocoa (self_mX), y: canariUnitToCocoa (self_mY))
        af.rotate (byDegrees: CGFloat (self_mRotation) / 1000.0)
        af.translate (x: -center.x, y: -center.y)
        return shape.transformed (by: af)
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
