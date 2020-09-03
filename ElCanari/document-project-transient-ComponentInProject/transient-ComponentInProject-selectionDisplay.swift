//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//----------------------------------------------------------------------------------------------------------------------

func transient_ComponentInProject_selectionDisplay (
       _ self_mX : Int,                             
       _ self_mY : Int,                             
       _ self_mRotation : Int,                      
       _ self_mSide : ComponentSide,                
       _ self_strokeBezierPath : EBBezierPath,      
       _ self_mDisplayLegend : Bool,                
       _ self_mNameIsVisibleInBoard : Bool,         
       _ self_mXName : Int,                         
       _ self_mYName : Int,                         
       _ self_mNameFont_descriptor : BoardFontDescriptor?,
       _ self_mNameFontSize : Double,               
       _ self_mNameRotation : Int,                  
       _ self_componentName : String,               
       _ self_packagePadDictionary : PackageMasterPadDictionary,
       _ self_padNetDictionary : PadNetDictionary,  
       _ self_mValueIsVisibleInBoard : Bool,        
       _ self_mXValue : Int,                        
       _ self_mYValue : Int,                        
       _ self_mValueFont_descriptor : BoardFontDescriptor?,
       _ self_mValueFontSize : Double,              
       _ self_mValueRotation : Int,                 
       _ self_mComponentValue : String,             
       _ prefs_hiliteWidthMultipliedByTen : Int,    
       _ prefs_mShowRotationKnobInBoard : Bool
) -> EBShape {
//--- START OF USER ZONE 2
      let lineWidth = CGFloat (prefs_hiliteWidthMultipliedByTen) / 10.0
      let absoluteCenter = CanariPoint (x: self_mX, y: self_mY).cocoaPoint
      let rPadsCenter = self_packagePadDictionary.padsRect.center.cocoaPoint
      let knobDx = (self_mSide == .back) ? -COMPONENT_PACKAGE_ROTATION_KNOB_DISTANCE : COMPONENT_PACKAGE_ROTATION_KNOB_DISTANCE ;
      let rotationKnobLocation = NSPoint (x: rPadsCenter.x + knobDx, y: rPadsCenter.y)
      var rotatedShape = EBShape ()
      if self_mDisplayLegend {
        var strokeBezierPath = self_strokeBezierPath
        if prefs_mShowRotationKnobInBoard {
          strokeBezierPath.move (to: rPadsCenter)
          strokeBezierPath.line (to: rotationKnobLocation)
        }
        strokeBezierPath.lineWidth = lineWidth
        strokeBezierPath.lineCapStyle = .round
        strokeBezierPath.lineJoinStyle = .round
        rotatedShape.add (stroke: [strokeBezierPath], .cyan)
      }
      do{
        var padNumberAffineTransform = AffineTransform ()
        if self_mSide == .back {
          padNumberAffineTransform.scale (x: -1.0, y: 1.0)
        }
        padNumberAffineTransform.rotate (byDegrees: -CGFloat (self_mRotation) / 1000.0)
        for (_, padDescriptor) in self_packagePadDictionary {
          padDescriptor.accumulatePadBezierPathes (
            into: &rotatedShape,
            side: self_mSide,
            padDisplayAttributes: nil,
            padNumberAF: padNumberAffineTransform,
            frontPadColor: .cyan,
            backPadColor: .cyan,
            padNetDictionary: self_padNetDictionary
          )
        }
      }
    //--- Knobs
      var rotatedKnobs = EBShape ()
      rotatedKnobs.add (knobAt: rPadsCenter, knobIndex: COMPONENT_PACKAGE_CENTER_KNOB, .rect, 2.0)
      if prefs_mShowRotationKnobInBoard {
        rotatedKnobs.add (knobAt: rotationKnobLocation, knobIndex: COMPONENT_PACKAGE_ROTATION_KNOB, .circ, 2.0)
      }
    //--- Name
      var nonRotatedShape = EBShape ()
      if self_mNameIsVisibleInBoard, let fontDescriptor = self_mNameFont_descriptor {
        let (textBP, frameBP, origin, _, _) = boardText_displayInfos (
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
        var bp = EBBezierPath ()
        bp.move (to: absoluteCenter)
        bp.line (to: origin)
        bp.lineWidth = lineWidth
        bp.lineCapStyle = .round
        bp.lineJoinStyle = .round
        nonRotatedShape.add (stroke: [bp], .cyan)
        bp = frameBP
        bp.lineWidth = 0.5
        bp.lineCapStyle = .round
        bp.lineJoinStyle = .round
        nonRotatedShape.add (filled: [bp], .white, knobIndex: COMPONENT_PACKAGE_NAME_KNOB)
        nonRotatedShape.add (stroke: [bp], .black)
        nonRotatedShape.add (stroke: [textBP], .black)
      }
    //--- Value
      if self_mValueIsVisibleInBoard, let fontDescriptor = self_mValueFont_descriptor {
        let (textBP, frameBP, origin, _, _) = boardText_displayInfos (
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
        var bp = EBBezierPath ()
        bp.move (to: absoluteCenter)
        bp.line (to: origin)
        bp.lineWidth = lineWidth
        bp.lineCapStyle = .round
        bp.lineJoinStyle = .round
        nonRotatedShape.add (stroke: [bp], .cyan)
        bp = frameBP
        bp.lineWidth = 0.5
        bp.lineCapStyle = .round
        bp.lineJoinStyle = .round
        nonRotatedShape.add (filled: [bp], .white, knobIndex: COMPONENT_PACKAGE_VALUE_KNOB)
        nonRotatedShape.add (stroke: [bp], .black)
        nonRotatedShape.add (stroke: [textBP], .black)
      }
    //---
      var af = AffineTransform ()
      af.translate (x: absoluteCenter.x, y: absoluteCenter.y)
      af.rotate (byDegrees: CGFloat (self_mRotation) / 1000.0)
      if self_mSide == .back {
        af.scale (x: -1.0, y: 1.0)
      }
      af.translate (x: -rPadsCenter.x, y: -rPadsCenter.y)
      var shape = rotatedShape.transformed (by: af)
      shape.add (nonRotatedShape)
      shape.add (rotatedKnobs.transformed (by: af))
      return shape
//--- END OF USER ZONE 2
}

//----------------------------------------------------------------------------------------------------------------------
