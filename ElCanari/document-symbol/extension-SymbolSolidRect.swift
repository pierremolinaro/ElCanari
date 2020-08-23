import Cocoa

//----------------------------------------------------------------------------------------------------------------------

let SYMBOL_SOLID_RECT_BOTTOM = 1
let SYMBOL_SOLID_RECT_RIGHT  = 2
let SYMBOL_SOLID_RECT_TOP    = 3
let SYMBOL_SOLID_RECT_LEFT   = 4

//----------------------------------------------------------------------------------------------------------------------
//   EXTENSION SymbolSolidRect
//----------------------------------------------------------------------------------------------------------------------

extension SymbolSolidRect {

  //····················································································································

  override func cursorForKnob (knob inKnobIndex: Int) -> NSCursor? {
    if (inKnobIndex == SYMBOL_OVAL_BOTTOM) || (inKnobIndex == SYMBOL_OVAL_TOP) {
      return NSCursor.resizeUpDown
    }else{
      return NSCursor.resizeLeftRight
    }
  }

  //····················································································································

//  override func acceptedTranslation (xBy inDx: Int, yBy inDy: Int) -> OCCanariPoint {
//    var acceptedX = inDx
//    let newX = self.x + acceptedX
//    if newX < 0 {
//      acceptedX = -self.x
//    }
//    var acceptedY = inDy
//    let newY = self.y + acceptedY
//    if newY < 0 {
//      acceptedY = -self.y
//    }
//    return OCCanariPoint (x: acceptedX, y: acceptedY)
//  }

  //····················································································································

  override func acceptToTranslate (xBy inDx: Int, yBy inDy: Int) -> Bool {
    return true
//    let newX = self.x + inDx
//    let newY = self.y + inDy
//    return (newX >= 0) && (newY >= 0)
  }

  //····················································································································

  override func translate (xBy inDx: Int, yBy inDy: Int, userSet ioSet : OCObjectSet) {
    self.x += inDx
    self.y += inDy
  }

  //····················································································································
  //  Knob
  //····················································································································

  override func canMove (knob inKnobIndex : Int, xBy inDx: Int, yBy inDy: Int) -> OCCanariPoint {
    var dx = inDx
    var dy = inDy
    if inKnobIndex == SYMBOL_SOLID_RECT_LEFT {
      if (self.width - dx) < SYMBOL_GRID_IN_CANARI_UNIT {
        dx = SYMBOL_GRID_IN_CANARI_UNIT - self.width
      }
    }else if inKnobIndex == SYMBOL_SOLID_RECT_RIGHT {
      if (self.width + dx) < SYMBOL_GRID_IN_CANARI_UNIT {
        dx = -(SYMBOL_GRID_IN_CANARI_UNIT - self.width)
      }
    }else if inKnobIndex == SYMBOL_SOLID_RECT_BOTTOM {
      if (self.height - dy) < SYMBOL_GRID_IN_CANARI_UNIT {
        dy = SYMBOL_GRID_IN_CANARI_UNIT - self.height
      }
    }else if inKnobIndex == SYMBOL_SOLID_RECT_TOP {
      if (self.height + dy) < SYMBOL_GRID_IN_CANARI_UNIT {
        dy = -(SYMBOL_GRID_IN_CANARI_UNIT - self.height)
      }
    }
    return OCCanariPoint (x: dx, y: dy)
 }

  //····················································································································

  override func move (knob inKnobIndex : Int, xBy inDx: Int, yBy inDy: Int, newX inNewX : Int, newY inNewY : Int) {
    if inKnobIndex == SYMBOL_SOLID_RECT_RIGHT {
      self.width += inDx
    }else if inKnobIndex == SYMBOL_SOLID_RECT_LEFT {
      self.x += inDx
      self.width -= inDx
    }else if inKnobIndex == SYMBOL_SOLID_RECT_TOP {
      self.height += inDy
    }else if inKnobIndex == SYMBOL_SOLID_RECT_BOTTOM {
      self.y += inDy
      self.height -= inDy
    }
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
    var result = (self.x % inGrid) != 0
    if !result {
      result = (self.y % inGrid) != 0
    }
    if !result {
      result = (self.width % inGrid) != 0
    }
    if !result {
      result = (self.height % inGrid) != 0
    }
    return result
  }

  //····················································································································

  override func snapToGrid (_ inGrid : Int) {
    self.x = ((self.x + inGrid / 2) / inGrid) * inGrid
    self.y = ((self.y + inGrid / 2) / inGrid) * inGrid
    self.width = ((self.width + inGrid / 2) / inGrid) * inGrid
    self.height = ((self.height + inGrid / 2) / inGrid) * inGrid
  }

  //····················································································································

  override func alignmentPoints () -> OCCanariPointSet {
    let result = OCCanariPointSet ()
    result.insert (CanariPoint (x: self.x, y: self.y))
    result.insert (CanariPoint (x: self.x + self.width, y: self.y + self.height))
    return result
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
