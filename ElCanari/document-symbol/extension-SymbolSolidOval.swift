import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

let SYMBOL_SOLID_OVAL_BOTTOM = 1
let SYMBOL_SOLID_OVAL_RIGHT  = 2
let SYMBOL_SOLID_OVAL_LEFT   = 3
let SYMBOL_SOLID_OVAL_TOP    = 4

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   EXTENSION SymbolSolidOval
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

extension SymbolSolidOval {

  //····················································································································

  override func cursorForKnob (knob inKnobIndex: Int) -> NSCursor? {
    if (inKnobIndex == SYMBOL_SOLID_OVAL_BOTTOM) || (inKnobIndex == SYMBOL_SOLID_OVAL_TOP) {
      return NSCursor.resizeUpDown
    }else{
      return NSCursor.resizeLeftRight
    }
  }

  //····················································································································

//  override func acceptedTranslation (xBy inDx: Int, yBy inDy: Int) -> ObjcCanariPoint {
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
//    return ObjcCanariPoint (x: acceptedX, y: acceptedY)
//  }

  //····················································································································

  override func acceptToTranslate (xBy inDx: Int, yBy inDy: Int) -> Bool {
    return true
//    let newX = self.x + inDx
//    let newY = self.y + inDy
//    return (newX >= 0) && (newY >= 0)
  }

  //····················································································································

  override func translate (xBy inDx: Int, yBy inDy: Int, userSet ioSet : ObjcObjectSet) {
    self.x += inDx
    self.y += inDy
  }

  //····················································································································
  //  Knob
  //····················································································································

  override func canMove (knob inKnobIndex : Int,
                         proposedUnalignedAlignedTranslation inProposedUnalignedTranslation : ObjcCanariPoint,
                         proposedAlignedTranslation inProposedAlignedTranslation : ObjcCanariPoint,
                         unalignedMouseDraggedLocation inUnalignedMouseDraggedLocation : ObjcCanariPoint,
                         shift inShift : Bool) -> ObjcCanariPoint {
    var dx = inProposedAlignedTranslation.x
    var dy = inProposedAlignedTranslation.y
    if inKnobIndex == SYMBOL_SOLID_OVAL_LEFT {
    //  if (self.x + dx) < 0 {
   //     dx = -self.x
  //    }
      if (self.width - dx) < SYMBOL_GRID_IN_CANARI_UNIT {
        dx = SYMBOL_GRID_IN_CANARI_UNIT - self.width
      }
    }else if inKnobIndex == SYMBOL_SOLID_OVAL_RIGHT {
      if (self.width + dx) < SYMBOL_GRID_IN_CANARI_UNIT {
        dx = -(SYMBOL_GRID_IN_CANARI_UNIT - self.width)
      }
    }else if inKnobIndex == SYMBOL_SOLID_OVAL_BOTTOM {
//      if (self.y + dy) < 0 {
  //      dy = -self.y
 //     }
      if (self.height - dy) < SYMBOL_GRID_IN_CANARI_UNIT {
        dy = SYMBOL_GRID_IN_CANARI_UNIT - self.height
      }
    }else if inKnobIndex == SYMBOL_SOLID_OVAL_TOP {
      if (self.height + dy) < SYMBOL_GRID_IN_CANARI_UNIT {
        dy = -(SYMBOL_GRID_IN_CANARI_UNIT - self.height)
      }
    }
    return ObjcCanariPoint (x: dx, y: dy)
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
    if inKnobIndex == SYMBOL_SOLID_OVAL_RIGHT {
      self.width += inDx
    }else if inKnobIndex == SYMBOL_SOLID_OVAL_LEFT {
      self.x += inDx
      self.width -= inDx
    }else if inKnobIndex == SYMBOL_SOLID_OVAL_TOP {
      self.height += inDy
    }else if inKnobIndex == SYMBOL_SOLID_OVAL_BOTTOM {
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

  override func alignmentPoints () -> ObjcCanariPointSet {
    let result = ObjcCanariPointSet ()
    result.insert (CanariPoint (x: self.x, y: self.y))
    result.insert (CanariPoint (x: self.x + self.width, y: self.y + self.height))
    return result
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
