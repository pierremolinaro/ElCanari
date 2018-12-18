//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_PackageDimension_objectDisplay (
       _ self_x1 : Int,                        
       _ self_y1 : Int,                        
       _ self_x2 : Int,                        
       _ self_y2 : Int,                        
       _ self_xDimension : Int,                
       _ self_yDimension : Int,                
       _ self_distanceInCanariUnit : Int,      
       _ self_distanceUnit : Int,              
       _ prefs_dimensionFont : NSFont
) -> EBShape {
//--- START OF USER ZONE 2
  let arrowSize : CGFloat = 1.5
  let p1 = CGPoint (x: canariUnitToCocoa (self_x1), y: canariUnitToCocoa (self_y1))
  let p2 = CGPoint (x: canariUnitToCocoa (self_x2), y: canariUnitToCocoa (self_y2))
  let length = NSPoint.distance (p1, p2)
  let shape = EBShape ()
 //--- Compute angle
  let angle = CGPoint.angleInRadian (p1, p2)
 //--- Draw line
  let bp = NSBezierPath ()
  if length <= (4.0 * arrowSize) {
    bp.move (to: p1)
    bp.line (to: p2)
    bp.lineCapStyle = .round
  }else{
  //--- Segment
    let center = NSPoint.center (p1, p2)
    var tr = AffineTransform ()
    tr.translate (x: center.x, y: center.y)
    tr.rotate (byRadians: angle)
    let lg = length / 2.0 - arrowSize
    bp.move (to: NSPoint (x: -lg, y: 0.0))
    bp.line (to: NSPoint (x:  lg, y: 0.0))
    bp.transform(using: tr)
    bp.lineCapStyle = .butt
  }
  bp.lineWidth = 0.5
  shape.append (EBStrokeBezierPathShape ([bp], NSColor.orange))
  let rotationIfSmall : CGFloat = (length <= (4.0 * arrowSize)) ? .pi : 0.0 ;
//------- Arrow at first point
  var tr = AffineTransform ()
  tr.translate (x: p1.x, y: p1.y)
  tr.rotate (byRadians: angle + rotationIfSmall)
  let path1 = NSBezierPath ()
  path1.move (to: CGPoint (x: 0.0, y: 0.0))
  path1.line (to:CGPoint (x: 2.0 * arrowSize, y:  arrowSize))
  path1.curve (to:CGPoint (x: 2.0 * arrowSize, y: -arrowSize),
               controlPoint1: CGPoint (x: arrowSize, y: 0.0),
               controlPoint2: CGPoint (x: arrowSize, y: 0.0))
  path1.close ()
  path1.transform (using: tr)
//------- Arrow at second point
  tr = AffineTransform ()
  tr.translate (x: p2.x, y: p2.y)
  tr.rotate (byRadians: angle + .pi + rotationIfSmall)
  let path2 = NSBezierPath ()
  path2.move (to: CGPoint (x: 0.0, y: 0.0))
  path2.line (to:CGPoint (x: 2.0 * arrowSize, y:  arrowSize))
  path2.curve (to:CGPoint (x: 2.0 * arrowSize, y: -arrowSize),
               controlPoint1: CGPoint (x: arrowSize, y: 0.0),
               controlPoint2: CGPoint (x: arrowSize, y: 0.0))
  path2.close ()
  path2.transform (using: tr)
  shape.append (EBFilledBezierPathShape ([path1, path2], NSColor.orange))
//------- Add dimension text
  let dimensionText = stringFrom (valueInCanariUnit: self_distanceInCanariUnit, displayUnit: self_distanceUnit)
  let p = CanariPoint (x: self_xDimension, y: self_yDimension).cocoaPoint ()
  let textAttributes : [NSAttributedString.Key : Any] = [
    NSAttributedString.Key.font : prefs_dimensionFont,
    NSAttributedString.Key.foregroundColor : NSColor.black
  ]
  shape.append (EBTextShape (dimensionText, p, textAttributes, .center, .center))
//---
  return shape
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
