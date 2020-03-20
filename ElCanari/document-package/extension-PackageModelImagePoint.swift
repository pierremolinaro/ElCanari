import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

//let PACKAGE_OVAL_BOTTOM = 1
//let PACKAGE_OVAL_RIGHT  = 2
//let PACKAGE_OVAL_LEFT   = 3
//let PACKAGE_OVAL_TOP    = 4

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
//    switch self.mEnum {
//    case .firstPoint :
//      if let root = self.mRoot, root.mPointsAreLocked, let secondPoint = root.mModelImageSecondPoint {
//        secondPoint.mX += inDx
//        secondPoint.mY += inDy
//        root.mModelImageDataDeltaX += inDx
//        root.mModelImageDataDeltaY += inDy
//      }
//    case .secondPoint :
//      ()
//    }
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
  //  SNAP TO GRID
  //····················································································································

//  override func canSnapToGrid (_ inGrid : Int) -> Bool {
//    var result = (self.mX % inGrid) != 0
//    if !result {
//      result = (self.mY % inGrid) != 0
//    }
//    return result
//  }

  //····················································································································

//  override func snapToGrid (_ inGrid : Int) {
//    self.mX = ((self.mX + inGrid / 2) / inGrid) * inGrid
//    self.mY = ((self.mY + inGrid / 2) / inGrid) * inGrid
//  }

  //····················································································································

  override func alignmentPoints () -> OCCanariPointSet {
    let result = OCCanariPointSet ()
    result.insert (CanariPoint (x: self.mX, y: self.mY))
    return result
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————