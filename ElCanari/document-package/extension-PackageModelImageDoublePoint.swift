import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

let MODEL_IMAGE_FIRST_POINT = 1
let MODEL_IMAGE_SECOND_POINT = 2

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   EXTENSION PackageModelImageDoublePoint
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

extension PackageModelImageDoublePoint {

  //····················································································································

  override func acceptToTranslate (xBy inDx: Int, yBy inDy: Int) -> Bool {
    return true
  }

  //····················································································································

  override func translate (xBy inDx: Int, yBy inDy: Int, userSet ioSet : ObjcObjectSet) {
    self.mFirstX += inDx
    self.mFirstY += inDy
  }

  //····················································································································
  //  Knob
  //····················································································································

  override func canMove (knob inKnobIndex : Int,
                         proposedUnalignedAlignedTranslation inProposedUnalignedTranslation : ObjcCanariPoint,
                         proposedAlignedTranslation inProposedAlignedTranslation : ObjcCanariPoint,
                         unalignedMouseDraggedLocation inUnalignedMouseDraggedLocation : ObjcCanariPoint,
                         shift inShift : Bool) -> ObjcCanariPoint {
    return inProposedAlignedTranslation
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
    if inKnobIndex == MODEL_IMAGE_FIRST_POINT {
      self.mFirstX += inDx
      self.mFirstY += inDy
    }else if inKnobIndex == MODEL_IMAGE_SECOND_POINT {
      self.mSecondDx += inDx
      self.mSecondDy += inDy
    }
  }

  //····················································································································
  //  DELETE
  //····················································································································

  override func canBeDeleted () -> Bool {
    return false
  }

  //····················································································································

  override func alignmentPoints () -> ObjcCanariPointSet {
    let result = ObjcCanariPointSet ()
    result.insert (CanariPoint (x: self.mFirstX, y: self.mFirstY))
    return result
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
