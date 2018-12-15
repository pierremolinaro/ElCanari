//
//  extension-MergerBoardInstance-graphic.swift
//  ElCanari
//
//  Created by Pierre Molinaro on 15/07/2018.
//
//
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   EXTENSION MergerBoardInstance
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

extension MergerBoardInstance {

  //····················································································································

  override func acceptedTranslation (xBy inDx: Int, yBy inDy: Int) -> OCCanariPoint {
    var acceptedX = inDx
    let newX = self.x + acceptedX
    if newX < 0 {
      acceptedX = -self.x
    }
    var acceptedY = inDy
    let newY = self.y + acceptedY
    if newY < 0 {
      acceptedY = -self.y
    }
    return OCCanariPoint (x: acceptedX, y: acceptedY)
  }

  //····················································································································

  override func acceptToTranslate (xBy inDx: Int, yBy inDy: Int) -> Bool {
    let newX = self.x + inDx
    let newY = self.y + inDy
    return (newX >= 0) && (newY >= 0)
  }

  //····················································································································

  override func translate (xBy inDx: Int, yBy inDy: Int) {
    self.x += inDx
    self.y += inDy
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
