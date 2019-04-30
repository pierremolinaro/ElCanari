//
//  extension-ComponentSymbolInProject.swift
//  ElCanari
//
//  Created by Pierre Molinaro on 30/04/2019.
//
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   EXTENSION PackageSegment
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

extension ComponentSymbolInProject {

  //····················································································································

  override func acceptToTranslate (xBy inDx: Int, yBy inDy: Int) -> Bool {
    return true
  }

  //····················································································································

  override func translate (xBy inDx: Int, yBy inDy: Int) {
    self.mCenterX += inDx
    self.mCenterY += inDy
  }

  //····················································································································
  //  Knob
  //····················································································································

  override func move (knob inKnobIndex : Int, xBy inDx: Int, yBy inDy: Int, newX inNewX : Int, newY inNewY : Int) {
    self.mCenterX += inDx
    self.mCenterY += inDy
  }

  //····················································································································
  //  Flip horizontally
  //····················································································································

//  override func canFlipHorizontally () -> Bool {
//    return x1 != x2
//  }

  //····················································································································

//  override func flipHorizontally () {
//    (x1, x2) = (x2, x1)
//  }

  //····················································································································
  //  Flip vertically
  //····················································································································

//  override func canFlipVertically () -> Bool {
//    return y1 != y2
//  }

  //····················································································································

//  override func flipVertically () {
//    (y1, y2) = (y2, y1)
//  }

  //····················································································································
  //  COPY AND PASTE
  //····················································································································

//  override func canCopyAndPaste () -> Bool {
//    return true
//  }

  //····················································································································
  //  SNAP TO GRID
  //····················································································································

  override func canSnapToGrid (_ inGrid : Int) -> Bool {
    var result = (self.mCenterX % inGrid) != 0
    if !result {
      result = (self.mCenterY % inGrid) != 0
    }
    return result
  }

  //····················································································································

  override func snapToGrid (_ inGrid : Int) {
    self.mCenterX = ((self.mCenterX + inGrid / 2) / inGrid) * inGrid
    self.mCenterY = ((self.mCenterY + inGrid / 2) / inGrid) * inGrid
  }

  //····················································································································

  override func alignmentPoints () -> OCCanariPointArray {
    let result = OCCanariPointArray ()
//    result.points.append (CanariPoint (x: self.x1, y: self.y1))
//    result.points.append (CanariPoint (x: self.x2, y: self.y2))
    return result
  }

  //····················································································································

//  override func operationBeforeRemoving () {
//    self.mSheet = nil
//  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
