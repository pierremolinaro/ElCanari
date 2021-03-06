import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

let SYMBOL_SEGMENT_ENDPOINT_1 = 1
let SYMBOL_SEGMENT_ENDPOINT_2 = 2

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   EXTENSION SymbolSegment
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

extension SymbolSegment {

  //····················································································································

  override func cursorForKnob (knob inKnobIndex: Int) -> NSCursor? {
    return NSCursor.upDownRightLeftCursor
  }

  //····················································································································

//  override func acceptedTranslation (xBy inDx: Int, yBy inDy: Int) -> ObjcCanariPoint {
//    var acceptedX = inDx
//    do{
//      let newX = self.x1 + acceptedX
//      if newX < 0 {
//        acceptedX = -self.x1
//      }
//    }
//    do{
//      let newX = self.x2 + acceptedX
//      if newX < 0 {
//        acceptedX = -self.x2
//      }
//    }
//    var acceptedY = inDy
//    do{
//      let newY = self.y1 + acceptedY
//      if newY < 0 {
//        acceptedY = -self.y1
//      }
//    }
//    do{
//      let newY = self.y2 + acceptedY
//      if newY < 0 {
//        acceptedY = -self.y2
//      }
//    }
//    return ObjcCanariPoint (x: acceptedX, y: acceptedY)
//  }

  //····················································································································

  override func acceptToTranslate (xBy inDx: Int, yBy inDy: Int) -> Bool {
    return true
//    let newX1 = self.x1 + inDx
//    let newY1 = self.y1 + inDy
//    let newX2 = self.x2 + inDx
//    let newY2 = self.y2 + inDy
//    return (newX1 >= 0) && (newY1 >= 0) && (newX2 >= 0) && (newY2 >= 0)
  }

  //····················································································································

  override func translate (xBy inDx: Int, yBy inDy: Int, userSet ioSet : ObjcObjectSet) {
    self.x1 += inDx
    self.y1 += inDy
    self.x2 += inDx
    self.y2 += inDy
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
//    Swift.print ("inDx \(inDx), inDy \(inDy)")
    if inKnobIndex == SYMBOL_SEGMENT_ENDPOINT_1 {
      self.x1 += inDx
      self.y1 += inDy
    }else if inKnobIndex == SYMBOL_SEGMENT_ENDPOINT_2 {
      self.x2 += inDx
      self.y2 += inDy
    }
  }

  //····················································································································
  //  Flip horizontally
  //····················································································································

  override func canFlipHorizontally () -> Bool {
    return x1 != x2
  }

  //····················································································································

  override func flipHorizontally () {
    (x1, x2) = (x2, x1)
  }

  //····················································································································
  //  Flip vertically
  //····················································································································

  override func canFlipVertically () -> Bool {
    return y1 != y2
  }

  //····················································································································

  override func flipVertically () {
    (y1, y2) = (y2, y1)
  }

  //····················································································································
  //  COPY AND PASTE
  //····················································································································

  override func canCopyAndPaste () -> Bool {
    return true
  }

  //····················································································································
  //  SNAP TO GRID
  //····················································································································

  override func canSnapToGrid (_ inGrid : Int) -> Bool {
    var result = (self.x1 % inGrid) != 0
    if !result {
      result = (self.y1 % inGrid) != 0
    }
    if !result {
      result = (self.x2 % inGrid) != 0
    }
    if !result {
      result = (self.y2 % inGrid) != 0
    }
    return result
  }

  //····················································································································

  override func snapToGrid (_ inGrid : Int) {
    self.x1 = ((self.x1 + inGrid / 2) / inGrid) * inGrid
    self.y1 = ((self.y1 + inGrid / 2) / inGrid) * inGrid
    self.x2 = ((self.x2 + inGrid / 2) / inGrid) * inGrid
    self.y2 = ((self.y2 + inGrid / 2) / inGrid) * inGrid
  }

  //····················································································································

  override func alignmentPoints () -> ObjcCanariPointSet {
    let result = ObjcCanariPointSet ()
    result.insert (CanariPoint (x: self.x1, y: self.y1))
    result.insert (CanariPoint (x: self.x2, y: self.y2))
    return result
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
