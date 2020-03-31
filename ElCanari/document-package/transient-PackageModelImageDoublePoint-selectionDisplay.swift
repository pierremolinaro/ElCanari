//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_PackageModelImageDoublePoint_selectionDisplay (
       _ self_mFirstX : Int,                                  
       _ self_mFirstY : Int,                                  
       _ self_mSecondDx : Int,                                
       _ self_mSecondDy : Int,                                
       _ self_mRoot_mModelPointsCircleRadius : Int?
) -> EBShape {
//--- START OF USER ZONE 2
  var shape = EBShape ()
  let firstPointRadiusInCocoaUnit = CGFloat (self_mRoot_mModelPointsCircleRadius ?? 10)
  let secondPointRadiusInCocoaUnit = CGFloat (self_mRoot_mModelPointsCircleRadius ?? 10)
  let firstX = canariUnitToCocoa (self_mFirstX)
  let firstY = canariUnitToCocoa (self_mFirstY)
  let firstR = NSRect (center: NSPoint (x: firstX, y: firstY), size: NSSize (width: firstPointRadiusInCocoaUnit * 2.0, height: firstPointRadiusInCocoaUnit * 2.0))
  let secondX = canariUnitToCocoa (self_mFirstX + self_mSecondDx)
  let secondY = canariUnitToCocoa (self_mFirstY + self_mSecondDy)
  let secondR = NSRect (center: NSPoint (x: secondX, y: secondY), size: NSSize (width: secondPointRadiusInCocoaUnit * 2.0, height: secondPointRadiusInCocoaUnit * 2.0))
  var bp1 = EBBezierPath (ovalIn: firstR)
  bp1.lineWidth = 1.0
  var bp2 = EBBezierPath (ovalIn: secondR)
  bp2.lineWidth = 1.0
  shape.add (stroke: [bp1, bp2], .cyan)
  shape.add (knobAt: NSPoint (x: firstX, y: firstY), knobIndex: MODEL_IMAGE_FIRST_POINT, .transparentCircle, firstPointRadiusInCocoaUnit * 2.0 + IMAGE_MODEL_POINT_CIRCLE_LINE_WIDTH)
  shape.add (knobAt: NSPoint (x: secondX, y: secondY), knobIndex: MODEL_IMAGE_SECOND_POINT, .transparentCircle, secondPointRadiusInCocoaUnit * 2.0 + IMAGE_MODEL_POINT_CIRCLE_LINE_WIDTH)
  return shape
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
