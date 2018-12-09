//
//  extension-NSBezierPath.swift
//  ElCanari
//
//  Created by Pierre Molinaro on 13/11/2016.
//
//

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  Extension NSBezierPath
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

extension NSBezierPath {

  //····················································································································

  func addArrow (fillPath : NSBezierPath, to endPoint : NSPoint, arrowSize : CGFloat) {
    if endPoint != self.currentPoint {
   //--- Compute angle
      let angle = CGPoint.angleInRadian (self.currentPoint, endPoint)
    //--- Affine transform
      let tr = NSAffineTransform ()
      tr.translateX (by: endPoint.x, yBy:endPoint.y)
      tr.rotate (byRadians:angle)
    //--- Draw path
      let path = NSBezierPath ()
      path.move (to: CGPoint (x: 0.0, y: 0.0))
      path.line (to:CGPoint (x: -2.0 * arrowSize, y:  arrowSize))
      path.curve (to:CGPoint (x: -2.0 * arrowSize, y: -arrowSize),
                  controlPoint1: CGPoint (x: -arrowSize, y: -arrowSize),
                  controlPoint2: CGPoint (x: -arrowSize, y:  arrowSize))
      path.close ()
    //--- Add path
      fillPath.append (tr.transform (path))
    //--- Draw line
      self.line (to:endPoint)
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
