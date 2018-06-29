//
//  MergerViaShape.swift
//  ElCanari
//
//  Created by Pierre Molinaro on 26/06/2018.
//
//
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Foundation

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   MergerViaShape
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class MergerViaShape : EBSimpleClass {

  //····················································································································

  let x : Int
  let y : Int
  let padDiameter : Int

  //····················································································································

  init (x inX : Int,
        y inY : Int,
        padDiameter inPadDiameter : Int) {
    x = inX
    y = inY
    padDiameter = inPadDiameter
    super.init ()
  }

  //····················································································································

  func viaPad (color : CGColor) -> CAShapeLayer {
    let xf : CGFloat = canariUnitToCocoa (self.x)
    let yf : CGFloat = canariUnitToCocoa (self.y)
    let pdf : CGFloat = canariUnitToCocoa (self.padDiameter)
    let rPad = NSRect (x : xf - pdf / 2.0, y: yf - pdf / 2.0, width:pdf, height:pdf)
    let viaPad = CAShapeLayer ()
    viaPad.path = CGPath (ellipseIn: rPad, transform: nil)
    viaPad.position = CGPoint (x:0.0, y:0.0)
    viaPad.fillColor = color
    return viaPad
  }

  //····················································································································

//  func viaHole (color : CGColor) -> CAShapeLayer {
//    let xf : CGFloat = canariUnitToCocoa (self.x)
//    let yf : CGFloat = canariUnitToCocoa (self.y)
//    let hdf : CGFloat = canariUnitToCocoa (self.holeDiameter)
//    let rPad = NSRect (x : xf - hdf / 2.0, y: yf - hdf / 2.0, width:hdf, height:hdf)
//    let viaHole = CAShapeLayer ()
//    viaHole.path = CGPath (ellipseIn: rPad, transform: nil)
//    viaHole.position = CGPoint (x:0.0, y:0.0)
//    viaHole.fillColor = color
//    return viaHole
//  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
