//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_ComponentInProject_objectDisplay (
       _ self_mX : Int,                          
       _ self_mY : Int,                          
       _ self_mRotation : Int,                   
       _ self_mSide : ComponentSide,             
       _ self_packagePadDictionary : PackageMasterPadDictionary,
       _ self_strokeBezierPath : EBBezierPath,   
       _ prefs_frontSideLegendColorForBoard : NSColor,
       _ prefs_backSideLegendColorForBoard : NSColor,
       _ prefs_packageDrawingWidthMultpliedByTenForBoard : Int,
       _ prefs_frontSidePadColorForBoard : NSColor,
       _ prefs_displayFrontPadsForBoard : Bool,  
       _ prefs_backSidePadColorForBoard : NSColor,
       _ prefs_displayBackPadsForBoard : Bool,   
       _ prefs_padNumberFontForBoard : NSFont,   
       _ prefs_padNumberColorForBoard : NSColor, 
       _ prefs_displayPadNumbersForBoard : Bool, 
       _ self_mNameIsVisibleInBoard : Bool,      
       _ self_mXName : Int,                      
       _ self_mYName : Int,                      
       _ self_mNameFont_descriptor : BoardFontDescriptor?,
       _ self_mNameFontSize : Double,            
       _ self_mNameRotation : Int,               
       _ self_componentName : String,            
       _ self_mValueIsVisibleInBoard : Bool,     
       _ self_mXValue : Int,                     
       _ self_mYValue : Int,                     
       _ self_mValueFont_descriptor : BoardFontDescriptor?,
       _ self_mValueFontSize : Double,           
       _ self_mValueRotation : Int,              
       _ self_mComponentValue : String,          
       _ self_mDevice_pinPadAssignments : ThreeStringArray?,
       _ self_padNetDictionary : PadNetDictionary
) -> EBShape {
//--- START OF USER ZONE 2
        let padDisplayAttributes : [NSAttributedString.Key : Any]?
        if prefs_displayPadNumbersForBoard {
          padDisplayAttributes = [
            NSAttributedString.Key.font : prefs_padNumberFontForBoard,
            NSAttributedString.Key.foregroundColor : prefs_padNumberColorForBoard
          ]
        }else{
          padDisplayAttributes = nil
        }
      //--- Legend
        var strokeBezierPath = self_strokeBezierPath
        strokeBezierPath.lineWidth = CGFloat (prefs_packageDrawingWidthMultpliedByTenForBoard) / 10.0
        strokeBezierPath.lineCapStyle = .round
        strokeBezierPath.lineJoinStyle = .round
        let color : NSColor
        switch self_mSide {
        case .front : color = prefs_frontSideLegendColorForBoard
        case .back  : color = prefs_backSideLegendColorForBoard
        }
        var rotatedShape = EBShape ()
        rotatedShape.add (stroke: [strokeBezierPath], color)
      //---
        let padRect = self_packagePadDictionary.padsRect
        let center = padRect.center.cocoaPoint
        var padNumberAffineTransform = AffineTransform ()
        if self_mSide == .back {
          padNumberAffineTransform.scale (x: -1.0, y: 1.0)
        }
        padNumberAffineTransform.rotate (byDegrees: -CGFloat (self_mRotation) / 1000.0)
        for (_, padDescriptor) in self_packagePadDictionary {
          padDescriptor.accumulatePadBezierPathes (
            into: &rotatedShape,
            side: self_mSide,
            padDisplayAttributes: padDisplayAttributes,
            padNumberAF: padNumberAffineTransform,
            frontPadColor: prefs_displayFrontPadsForBoard ? prefs_frontSidePadColorForBoard : nil,
            backPadColor: prefs_displayBackPadsForBoard ? prefs_backSidePadColorForBoard : nil,
            padNetDictionary: self_padNetDictionary
          )
        }
      //--- Name
        var nonRotatedShape = EBShape ()
        if self_mNameIsVisibleInBoard, let fontDescriptor = self_mNameFont_descriptor {
          let (textBP, _, _, _, _) = boardText_displayInfos (
            x: self_mXName + self_mX,
            y: self_mYName + self_mY,
            string: self_componentName,
            fontSize: self_mNameFontSize,
            fontDescriptor,
            horizontalAlignment: .center,
            verticalAlignment: .center,
            frontSide: self_mSide == .front,
            rotation: self_mNameRotation,
            weight: 1.0,
            oblique: false,
            extraWidth: 0.0
          )
          let color = (self_mSide == .front) ? prefs_frontSideLegendColorForBoard : prefs_backSideLegendColorForBoard
          nonRotatedShape.add (filled: [EBBezierPath (rect: textBP.bounds)], nil)
          nonRotatedShape.add (stroke: [textBP], color)
        }
      //--- Value
        if self_mValueIsVisibleInBoard, let fontDescriptor = self_mValueFont_descriptor {
          let (textBP, _, _, _, _) = boardText_displayInfos (
            x: self_mXValue + self_mX,
            y: self_mYValue + self_mY,
            string: self_mComponentValue,
            fontSize: self_mValueFontSize,
            fontDescriptor,
            horizontalAlignment: .center,
            verticalAlignment: .center,
            frontSide: self_mSide == .front,
            rotation: self_mValueRotation,
            weight: 1.0,
            oblique: false,
            extraWidth: 0.0
          )
          let color = (self_mSide == .front) ? prefs_frontSideLegendColorForBoard : prefs_backSideLegendColorForBoard
          nonRotatedShape.add (filled: [EBBezierPath (rect: textBP.bounds)], nil)
          nonRotatedShape.add (stroke: [textBP], color)
        }
      //---
        var af = AffineTransform ()
        af.translate (x: canariUnitToCocoa (self_mX), y: canariUnitToCocoa (self_mY))
        af.rotate (byDegrees: CGFloat (self_mRotation) / 1000.0)
        if self_mSide == .back {
          af.scale (x: -1.0, y: 1.0)
        }
        af.translate (x: -center.x, y: -center.y)
      //---
        var shape = rotatedShape.transformed (by: af)
        shape.add (nonRotatedShape)
        return shape
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————