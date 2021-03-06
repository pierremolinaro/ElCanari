//
//  extension-WireInSchematic.swift
//  ElCanari
//
//  Created by Pierre Molinaro on 08/05/2019.
//
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

let WIRE_CENTER_KNOB = 0
let WIRE_P1_KNOB = 1
let WIRE_P2_KNOB = 2

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   EXTENSION WireInSchematic
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

extension WireInSchematic {

  //····················································································································

  override func cursorForKnob (knob inKnobIndex: Int) -> NSCursor? {
    return NSCursor.upDownRightLeftCursor
  }

  //····················································································································

  override func acceptToTranslate (xBy inDx: Int, yBy inDy: Int) -> Bool {
    return true
  }

  //····················································································································

  override func translate (xBy inDx: Int, yBy inDy: Int, userSet ioSet : ObjcObjectSet) {
    if let p1 = self.mP1, !ioSet.contains (p1) {
      ioSet.insert (p1)
      p1.mX += inDx
      p1.mY += inDy
    }
    if let p2 = self.mP2, !ioSet.contains (p2) {
      ioSet.insert (p2)
      p2.mX += inDx
      p2.mY += inDy
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
    if inKnobIndex == WIRE_CENTER_KNOB, self.mP1?.mSymbol == nil, self.mP2?.mSymbol == nil {
      return ObjcCanariPoint (x: inProposedAlignedTranslation.x, y: inProposedAlignedTranslation.y)
    }else if inKnobIndex == WIRE_P1_KNOB, let point = self.mP1, point.mSymbol == nil, let other = self.mP2 {
      if ((point.mX + inProposedAlignedTranslation.x) == other.mX) && ((point.mY + inProposedAlignedTranslation.y) == other.mY) {
        return ObjcCanariPoint (x: 0, y: 0)
      }else{
        return inProposedAlignedTranslation
      }
    }else if inKnobIndex == WIRE_P2_KNOB, let point = self.mP2, point.mSymbol == nil, let other = self.mP1 {
      if ((point.mX + inProposedAlignedTranslation.x) == other.mX) && ((point.mY + inProposedAlignedTranslation.y) == other.mY) {
        return ObjcCanariPoint (x: 0, y: 0)
      }else{
        return inProposedAlignedTranslation
      }
    }else{
      return ObjcCanariPoint (x: 0, y: 0)
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
    if inKnobIndex == WIRE_CENTER_KNOB, let p1 = self.mP1, p1.mSymbol == nil, let p2 = self.mP2, p2.mSymbol == nil {
      p1.mX += inDx
      p1.mY += inDy
      p2.mX += inDx
      p2.mY += inDy
    }else if inKnobIndex == WIRE_P1_KNOB, let point = self.mP1, point.mSymbol == nil {
      point.mX += inDx
      point.mY += inDy
    }else if inKnobIndex == WIRE_P2_KNOB, let point = self.mP2, point.mSymbol == nil {
      point.mX += inDx
      point.mY += inDy
    }
  }

  //····················································································································
  //  REMOVING
  //····················································································································

  override func operationBeforeRemoving () {
    var pointSet = Set <PointInSchematic> ()
    pointSet.insert (self.mP1!)
    pointSet.insert (self.mP2!)
    self.mP1 = nil // Detach from point
    self.mP2 = nil // Detach from point
    self.mSheet?.updateConnections (pointSet : pointSet)
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
