//
//  extension-BoardTrack.swift
//  ElCanari
//
//  Created by Pierre Molinaro on 08/07/2019.
//
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------

let BOARD_TRACK_P1  = 0
let BOARD_TRACK_P2  = 1

//----------------------------------------------------------------------------------------------------------------------
//   EXTENSION BoardTrack
//----------------------------------------------------------------------------------------------------------------------

extension BoardTrack {

  //····················································································································

  override func cursorForKnob (knob inKnobIndex: Int) -> NSCursor? {
    return NSCursor.upDownRightLeftCursor
  }

  //····················································································································

  override func acceptToTranslate (xBy inDx: Int, yBy inDy: Int) -> Bool {
    return true
  }

  //····················································································································

  override func translate (xBy inDx : Int, yBy inDy : Int, userSet ioSet : ObjcObjectSet) {
    if let connectorP1 = self.mConnectorP1, !ioSet.contains (connectorP1) {
      ioSet.insert (connectorP1)
      connectorP1.mX += inDx
      connectorP1.mY += inDy
    }
    if let connectorP2 = self.mConnectorP2, !ioSet.contains (connectorP2) {
      ioSet.insert (connectorP2)
      connectorP2.mX += inDx
      connectorP2.mY += inDy
    }
  }

  //····················································································································
  //  Knob
  //····················································································································

  override func canMove (knob inKnobIndex : Int,
                         proposedUnalignedAlignedTranslation inProposedUnalignedTranslation : ObjcCanariPoint,
                         proposedAlignedTranslation inProposedAlignedTranslation : ObjcCanariPoint,
                         unalignedMouseDraggedLocation inUnalignedMouseDraggedLocation : ObjcCanariPoint,
                         shift inShift : Bool) -> ObjcCanariPoint {
    if let p1 = self.mConnectorP1?.location, let p2 = self.mConnectorP2?.location {
      if inKnobIndex == BOARD_TRACK_P1 {
        if inShift {
          return inProposedUnalignedTranslation
        }else{
          var p = inUnalignedMouseDraggedLocation.p
          p.quadrantAligned (from: p2)
          return ObjcCanariPoint (x: p.x - p1.x, y: p.y - p1.y)
        }
      }else if inKnobIndex == BOARD_TRACK_P2 {
        if inShift {
          return inProposedUnalignedTranslation
        }else{
          var p = inUnalignedMouseDraggedLocation.p
          p.quadrantAligned (from: p1)
          return ObjcCanariPoint (x: p.x - p2.x, y: p.y - p2.y)
        }
      }else{
        return ObjcCanariPoint ()
      }
    }else{
      return ObjcCanariPoint ()
    }
  }

  //····················································································································

  override func move (knob inKnobIndex: Int,
                      proposedDx inDx: Int,
                      proposedDy inDy: Int,
                      unalignedMouseLocationX inUnlignedMouseLocationX : Int,
                      unalignedMouseLocationY inUnlignedMouseLocationY : Int,
                      alignedMouseLocationX inAlignedMouseLocationX : Int,
                      alignedMouseLocationY inAlignedMouseLocationY : Int,
                      shift inShift : Bool) {
    if inShift {
      if inKnobIndex == BOARD_TRACK_P1 {
        self.mConnectorP1?.mX = inUnlignedMouseLocationX
        self.mConnectorP1?.mY = inUnlignedMouseLocationY
      }else if inKnobIndex == BOARD_TRACK_P2 {
        self.mConnectorP2?.mX = inUnlignedMouseLocationX
        self.mConnectorP2?.mY = inUnlignedMouseLocationY
      }
    }else{
      if inKnobIndex == BOARD_TRACK_P1 {
        self.mConnectorP1?.mX += inDx
        self.mConnectorP1?.mY += inDy
      }else if inKnobIndex == BOARD_TRACK_P2 {
        self.mConnectorP2?.mX += inDx
        self.mConnectorP2?.mY += inDy
      }
    }
  }

  //····················································································································
  //  Rotate 90°
  //····················································································································

  override func canRotate90 (accumulatedPoints : ObjcCanariPointSet) -> Bool {
    if let p1 = self.mConnectorP1?.location, let p2 = self.mConnectorP2?.location {
      accumulatedPoints.insert (CanariPoint (x: p1.x, y: p1.y))
      accumulatedPoints.insert (CanariPoint (x: p2.x, y: p2.y))
      return true
    }else{
      return false
    }
  }

  //····················································································································

  override func rotate90Clockwise (from inRotationCenter : ObjcCanariPoint, userSet ioSet : ObjcObjectSet) {
    if let connectorP1 = self.mConnectorP1, let connectorP2 = self.mConnectorP2 {
      if !ioSet.contains (connectorP1) {
        let p = inRotationCenter.rotated90Clockwise (x: connectorP1.mX, y: connectorP1.mY)
        connectorP1.mX = p.x
        connectorP1.mY = p.y
        ioSet.insert (connectorP1)
      }
      if !ioSet.contains (connectorP2) {
        let p = inRotationCenter.rotated90Clockwise (x: connectorP2.mX, y: connectorP2.mY)
        connectorP2.mX = p.x
        connectorP2.mY = p.y
        ioSet.insert (connectorP2)
      }
    }
  }

  //····················································································································

  override func rotate90CounterClockwise (from inRotationCenter : ObjcCanariPoint, userSet ioSet : ObjcObjectSet) {
    if let connectorP1 = self.mConnectorP1, let connectorP2 = self.mConnectorP2 {
      if !ioSet.contains (connectorP1) {
        let p = inRotationCenter.rotated90CounterClockwise (x: connectorP1.mX, y: connectorP1.mY)
        connectorP1.mX = p.x
        connectorP1.mY = p.y
        ioSet.insert (connectorP1)
      }
      if !ioSet.contains (connectorP2) {
        let p = inRotationCenter.rotated90CounterClockwise (x: connectorP2.mX, y: connectorP2.mY)
        connectorP2.mX = p.x
        connectorP2.mY = p.y
        ioSet.insert (connectorP2)
      }
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
    let optionalNet = self.mNet
    self.mConnectorP1 = nil
    self.mConnectorP2 = nil
    self.mNet = nil
    if let net = optionalNet, net.mPoints.count == 0, net.mTracks.count == 0 {
      net.mNetClass = nil // Remove net
    }
  }
  
  //····················································································································
  //  Bezier path
  //····················································································································

  func bezierPath (extraWidth inExtraWidth : Int) -> EBBezierPath {
    var bp = EBBezierPath ()
    bp.lineWidth = canariUnitToCocoa (self.actualTrackWidth! + inExtraWidth)
    bp.lineCapStyle = .round
    bp.lineJoinStyle = .round
    bp.move (to: self.mConnectorP1!.location!.cocoaPoint)
    bp.line (to: self.mConnectorP2!.location!.cocoaPoint)
    return bp.pathByStroking
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
