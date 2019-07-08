//
//  extension-BoardTrack.swift
//  ElCanari
//
//  Created by Pierre Molinaro on 08/07/2019.
//
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

let BOARD_TRACK_P1  = 0
let BOARD_TRACK_P2  = 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   EXTENSION BoardTrack
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

extension BoardTrack {

  //····················································································································

  override func acceptToTranslate (xBy inDx: Int, yBy inDy: Int) -> Bool {
    return true
  }

  //····················································································································

  override func translate (xBy inDx : Int, yBy inDy : Int, userSet ioSet : OCObjectSet) {
    self.mConnectorP1?.mX += inDx
    self.mConnectorP1?.mY += inDy
    self.mConnectorP2?.mX += inDx
    self.mConnectorP2?.mY += inDy
  }

  //····················································································································
  //  Knob
  //····················································································································

  override func canMove (knob inKnobIndex : Int, xBy inDx: Int, yBy inDy: Int) -> OCCanariPoint {
    if inKnobIndex == BOARD_TRACK_P1 {
      return OCCanariPoint (x: inDx, y: inDy)
    }else if inKnobIndex == BOARD_TRACK_P2 {
      return OCCanariPoint (x: inDx, y: inDy)
    }else{
      return OCCanariPoint (x: 0, y: 0)
    }
  }

  //····················································································································

  override func move (knob inKnobIndex : Int, xBy inDx: Int, yBy inDy: Int, newX inNewX : Int, newY inNewY : Int) {
    if inKnobIndex == BOARD_TRACK_P1 {
      self.mConnectorP1?.mX += inDx
      self.mConnectorP1?.mY += inDy
    }else if inKnobIndex == BOARD_TRACK_P2 {
      self.mConnectorP2?.mX += inDx
      self.mConnectorP2?.mY += inDy
    }
  }

  //····················································································································
  //   SNAP TO GRID
  //····················································································································

  override func canSnapToGrid (_ inGrid : Int) -> Bool {
    var isAligned = self.mConnectorP1?.mX.isAlignedOnGrid (inGrid) ?? true
    if isAligned, let connectorP1 = self.mConnectorP1 {
      isAligned = connectorP1.mY.isAlignedOnGrid (inGrid)
    }
    if isAligned, let connectorP2 = self.mConnectorP2 {
      isAligned = connectorP2.mX.isAlignedOnGrid (inGrid)
    }
    if isAligned, let connectorP2 = self.mConnectorP2 {
      isAligned = connectorP2.mY.isAlignedOnGrid (inGrid)
    }
    return !isAligned
  }

  //····················································································································

  override func snapToGrid (_ inGrid : Int) {
    self.mConnectorP1?.mX.align (onGrid: inGrid)
    self.mConnectorP1?.mY.align (onGrid: inGrid)
    self.mConnectorP2?.mX.align (onGrid: inGrid)
    self.mConnectorP2?.mY.align (onGrid: inGrid)
  }

  //····················································································································
  //  REMOVING
  //····················································································································

  override func operationBeforeRemoving () {
    self.mConnectorP1 = nil
    self.mConnectorP2 = nil
  }
  
  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
