import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

let PACKAGE_DIMENSION_ENDPOINT_1 = 1
let PACKAGE_DIMENSION_ENDPOINT_2 = 2
let PACKAGE_DIMENSION_TEXT       = 3

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   EXTENSION PackageDimension
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

extension PackageDimension {

  //····················································································································

  override func acceptToTranslate (xBy inDx: Int, yBy inDy: Int) -> Bool {
    return true
  }

  //····················································································································

  override func translate (xBy inDx: Int, yBy inDy: Int) {
    self.x1 += inDx
    self.y1 += inDy
    self.x2 += inDx
    self.y2 += inDy
    self.xDimension += inDx
    self.yDimension += inDy
  }

  //····················································································································
  //  Knob
  //····················································································································

  override func move (knob inKnobIndex : Int, xBy inDx: Int, yBy inDy: Int) {
    if inKnobIndex == PACKAGE_DIMENSION_ENDPOINT_1 {
      self.x1 += inDx
      self.y1 += inDy
    }else if inKnobIndex == PACKAGE_DIMENSION_ENDPOINT_2 {
      self.x2 += inDx
      self.y2 += inDy
    }else if inKnobIndex == PACKAGE_DIMENSION_TEXT {
      self.xDimension += inDx
      self.yDimension += inDy
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
    if !result {
      result = (self.xDimension % inGrid) != 0
    }
    if !result {
      result = (self.yDimension % inGrid) != 0
    }
    return result
  }

  //····················································································································

  override func snapToGrid (_ inGrid : Int) {
    self.x1 = ((self.x1 + inGrid / 2) / inGrid) * inGrid
    self.y1 = ((self.y1 + inGrid / 2) / inGrid) * inGrid
    self.x2 = ((self.x2 + inGrid / 2) / inGrid) * inGrid
    self.y2 = ((self.y2 + inGrid / 2) / inGrid) * inGrid
    self.xDimension = ((self.xDimension + inGrid / 2) / inGrid) * inGrid
    self.yDimension = ((self.yDimension + inGrid / 2) / inGrid) * inGrid
  }

  //····················································································································

  override func alignmentPoints () -> OCCanariPointArray {
    let result = OCCanariPointArray ()
    result.points.append (CanariPoint (x: self.x1, y: self.y1))
    result.points.append (CanariPoint (x: self.x2, y: self.y2))
    result.points.append (CanariPoint (x: self.xDimension, y: self.yDimension))
    return result
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————