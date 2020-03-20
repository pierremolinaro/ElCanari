import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   EXTENSION PackageOval
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

extension PackageModelImagePoint {

  //····················································································································

  override func acceptToTranslate (xBy inDx: Int, yBy inDy: Int) -> Bool {
    return true
  }

  //····················································································································

  override func translate (xBy inDx: Int, yBy inDy: Int, userSet ioSet : OCObjectSet) {
    self.mX += inDx
    self.mY += inDy
  }

  //····················································································································
  //  Knob
  //····················································································································

  override func canMove (knob inKnobIndex : Int, xBy inDx: Int, yBy inDy: Int) -> OCCanariPoint {
    return OCCanariPoint (x: inDx, y: inDy)
 }

  //····················································································································
  //  DELETE
  //····················································································································

  override func canBeDeleted () -> Bool {
    return false
  }

  //····················································································································

  override func alignmentPoints () -> OCCanariPointSet {
    let result = OCCanariPointSet ()
    result.insert (CanariPoint (x: self.mX, y: self.mY))
    return result
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
