//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_ComponentInProject_selectionDisplay (
       _ self_mX : Int,                             
       _ self_mY : Int,                             
       _ self_mRotation : Int,                      
       _ self_mSide : ComponentSide,                
       _ self_strokeBezierPath : NSBezierPath,      
       _ self_mNameIsVisibleInBoard : Bool,         
       _ self_mXName : Int,                         
       _ self_mYName : Int,                         
       _ self_mNameFont_descriptor : BoardFontDescriptor?,
       _ self_mNameFontSize : Double,               
       _ self_mNameRotation : Int,                  
       _ self_componentName : String,               
       _ self_padDictionary : PackagePadDictionary
) -> EBShape {
//--- START OF USER ZONE 2
      let rPadsCenter = self_padDictionary.masterPadsRect.center.cocoaPoint
      let knobDx = (self_mSide == .back) ? -COMPONENT_PACKAGE_ROTATION_KNOB_DISTANCE : COMPONENT_PACKAGE_ROTATION_KNOB_DISTANCE ;
      let rotationKnobLocation = NSPoint (x: rPadsCenter.x + knobDx, y: rPadsCenter.y)
      let rotatedShape = EBShape ()
      var strokeBezierPath = EBBezierPath (self_strokeBezierPath)
      strokeBezierPath.move (to: rPadsCenter)
      strokeBezierPath.line (to: rotationKnobLocation)
      strokeBezierPath.lineWidth = 0.5
      strokeBezierPath.lineCapStyle = .round
      strokeBezierPath.lineJoinStyle = .round
      rotatedShape.append (EBStrokeBezierPathShape ([strokeBezierPath], .cyan))
    //--- Knobs
      rotatedShape.append (EBKnobShape (at: rPadsCenter, index: COMPONENT_PACKAGE_CENTER_KNOB, .rect, 2.0))
      rotatedShape.append (EBKnobShape (at: rotationKnobLocation, index: COMPONENT_PACKAGE_ROTATION_KNOB, .circ, 2.0))
    //--- Name
      let nonRotatedShape = EBShape ()
      if self_mNameIsVisibleInBoard, let fontDescriptor = self_mNameFont_descriptor {
        let (textBP, frameBP, origin, _) = boardText_displayInfos (
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
          oblique: false
        )
        var bp = frameBP
        bp.lineWidth = 0.5
        bp.lineCapStyle = .round
        bp.lineJoinStyle = .round
        nonRotatedShape.append (EBFilledBezierPathShape ([bp], .white, COMPONENT_PACKAGE_NAME_KNOB))
        nonRotatedShape.append (EBStrokeBezierPathShape ([bp], .black))
        nonRotatedShape.append (EBStrokeBezierPathShape ([textBP], .black))
      }
    //---
      var af = AffineTransform ()
      af.translate (x: canariUnitToCocoa (self_mX), y: canariUnitToCocoa (self_mY))
      af.rotate (byDegrees: CGFloat (self_mRotation) / 1000.0)
      if self_mSide == .back {
        af.scale (x: -1.0, y: 1.0)
      }
      af.translate (x: -rPadsCenter.x, y: -rPadsCenter.y)
      let shape = rotatedShape.transformed (by: af)
      shape.append (nonRotatedShape)
      return shape
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————