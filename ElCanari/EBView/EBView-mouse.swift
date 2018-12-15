//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

extension EBView {

  //····················································································································

  override func mouseMoved (with inEvent : NSEvent) {
    super.mouseMoved (with: inEvent)
    let locationInView = self.convert (inEvent.locationInWindow, from: nil)
    let locationOnGridInView = locationInView.aligned (onGrid: canariUnitToCocoa (self.mouseGridInCanariUnit))
    self.updateXYplacards (locationOnGridInView)
  }

  //····················································································································

  override func mouseExited (with inEvent : NSEvent) {
    super.mouseExited (with: inEvent)
    self.clearXYplacards ()
  }

  //····················································································································

   override func mouseDown (with inEvent : NSEvent) {
    if let viewController = self.viewController {
      let mouseDownLocation = self.convert (inEvent.locationInWindow, from:nil)
      self.mLastMouseDraggedLocation = mouseDownLocation.canariPointAligned (onCanariGrid: self.mouseGridInCanariUnit)
      if let pbType = self.pasteboardType, inEvent.modifierFlags.contains (.option) {
        self.ebStartDragging (with: inEvent, dragType: pbType)
      }else{
      //--- Find index of object under mouse down
        let (possibleObjectIndex, possibleKnobIndex) = self.indexOfFrontmostObject (at: mouseDownLocation)
        self.guideFor (possibleObjectIndex: possibleObjectIndex)
        let controlKey = inEvent.modifierFlags.contains (.control)
        if !controlKey {
          let shiftKey = inEvent.modifierFlags.contains (.shift)
          let commandKey = inEvent.modifierFlags.contains (.command)
          if shiftKey { // Shift key extends selection
            if let objectIndex = possibleObjectIndex {
              viewController.addToSelection (objectsWithIndex: [objectIndex])
            }
          }else if commandKey { // Command key toggles selection of object under click
            if let objectIndex = possibleObjectIndex {
              if viewController.selectedIndexesSet.contains (objectIndex) {
                viewController.removeFromSelection (objectWithIndex: objectIndex)
              }else{
                viewController.addToSelection (objectsWithIndex: [objectIndex])
              }
            }
          }else if let objectIndex = possibleObjectIndex {
            if let knobIndex = possibleKnobIndex {
              self.mPossibleKnob = (objectIndex, knobIndex)
            }
            if !viewController.selectedIndexesSet.contains (objectIndex) {
              viewController.setSelection (objectsWithIndexes: [objectIndex])
            }
          }else{ // Click outside an object : clear selection
            viewController.clearSelection ()
            self.mSelectionRectangleOrigin = mLastMouseDraggedLocation?.cocoaPoint ()
          }
        }
      }
    }else{
      super.mouseDown (with: inEvent)
    }
  }

  //····················································································································

  override func mouseDragged (with inEvent : NSEvent) {
    super.mouseDragged (with: inEvent)
    let locationInView = self.convert (inEvent.locationInWindow, from: nil)
    let locationOnGridInView = locationInView.aligned (onGrid: canariUnitToCocoa (self.mouseGridInCanariUnit))
    self.updateXYplacards (locationOnGridInView)
    let mouseDraggedCocoaLocation = self.convert (inEvent.locationInWindow, from:nil)
    if let selectionRectangleOrigin = self.mSelectionRectangleOrigin {
      self.handleSelectionRectangle (from: selectionRectangleOrigin, to: mouseDraggedCocoaLocation)
    }else if let lastMouseDraggedLocation = self.mLastMouseDraggedLocation {
      let mouseDraggedCanariLocation = mouseDraggedCocoaLocation.canariPoint ()
      var proposedTranslation = CanariPoint (
        x: mouseDraggedCanariLocation.x - lastMouseDraggedLocation.x,
        y: mouseDraggedCanariLocation.y - lastMouseDraggedLocation.y
      )
      if self.mDraggingObjectsIsAlignedOnArrowKeyMagnitude {
        proposedTranslation = proposedTranslation.point (alignedOnGrid: self.mouseGridInCanariUnit)
      }
      if let (objectIndex, knobIndex) = self.mPossibleKnob {
        self.guideFor (objectIndexes: [objectIndex])
        self.drag (knob: knobIndex, objectIndex: objectIndex, proposedTranslation, lastMouseDraggedLocation)
      }else{
        self.guideFor (objectIndexes: self.viewController?.selectedIndexesSet ?? Set ())
        self.dragSelection (proposedTranslation, lastMouseDraggedLocation)
      }
    }
  }

  //····················································································································

  fileprivate func handleSelectionRectangle (from inSelectionRectangleOrigin : NSPoint,
                                             to inMouseDraggedLocation : NSPoint) {
    let xMin = min (inSelectionRectangleOrigin.x, inMouseDraggedLocation.x)
    let yMin = min (inSelectionRectangleOrigin.y, inMouseDraggedLocation.y)
    let xMax = max (inSelectionRectangleOrigin.x, inMouseDraggedLocation.x)
    let yMax = max (inSelectionRectangleOrigin.y, inMouseDraggedLocation.y)
    if (xMax > xMin) && (yMax > yMin) {
      let r = NSRect (x: xMin, y: yMin, width: xMax - xMin, height: yMax - yMin)
      self.mSelectionRectangle = r
      let indexSet = self.indexesOfObjects (intersecting: r)
      self.viewController?.setSelection (objectsWithIndexes: Array (indexSet))
    }else{
      self.mSelectionRectangle = nil
      self.viewController?.setSelection (objectsWithIndexes: [])
    }
  }

  //····················································································································

  fileprivate func drag (knob knobIndex : Int,
                         objectIndex : Int,
                         _ inProposedTranslation: CanariPoint,
                         _ inLastMouseDraggedLocation : CanariPoint) {
    let objects = self.viewController?.objectArray ?? []
    let p = objects [objectIndex].canMove (knob: knobIndex, xBy: inProposedTranslation.x, yBy: inProposedTranslation.y)
    if (p.x != 0) || (p.y != 0) {
      if !self.mPerformEndUndoGroupingOnMouseUp {
        self.mPerformEndUndoGroupingOnMouseUp = true
        self.viewController?.undoManager?.beginUndoGrouping ()
      }
      objects [objectIndex].move (knob: knobIndex, xBy: p.x, yBy: p.y)
      let mouseDraggedLocation = CanariPoint (
        x: p.x + inLastMouseDraggedLocation.x,
        y: p.y + inLastMouseDraggedLocation.y
      )
      mLastMouseDraggedLocation = mouseDraggedLocation
    }
  }

  //····················································································································

  fileprivate func dragSelection (_ proposedTranslation: CanariPoint, _ lastMouseDraggedLocation : CanariPoint) {
    var dx = proposedTranslation.x
    var dy = proposedTranslation.y
    for object in self.viewController?.selectedGraphicObjectSet ?? [] {
      let p = object.acceptedTranslation (xBy: dx, yBy: dy)
      dx = p.x
      dy = p.y
    }
    if (dx != 0) || (dy != 0) {
      if !self.mPerformEndUndoGroupingOnMouseUp {
        self.mPerformEndUndoGroupingOnMouseUp = true
        self.viewController?.undoManager?.beginUndoGrouping ()
      }
      for object in self.viewController?.selectedGraphicObjectSet ?? [] {
        object.translate (xBy: dx, yBy: dy)
      }
      let mouseDraggedLocation = CanariPoint (x: dx + lastMouseDraggedLocation.x, y: dy + lastMouseDraggedLocation.y)
      mLastMouseDraggedLocation = mouseDraggedLocation
    }
  }

  //····················································································································

  override func mouseUp (with inEvent : NSEvent) {
    super.mouseUp (with: inEvent)
    if self.mPerformEndUndoGroupingOnMouseUp {
      self.mPerformEndUndoGroupingOnMouseUp = false
      self.viewController?.undoManager?.endUndoGrouping ()
    }
    self.mLastMouseDraggedLocation = nil
    self.mSelectionRectangleOrigin = nil
    self.mSelectionRectangle = nil
    self.mPossibleKnob = nil
    self.mGuideBezierPath = nil
  }

  //····················································································································

  internal func indexOfFrontmostObject (at inLocation : NSPoint) -> (Int?, Int?) {
    var possibleObjectIndex : Int? = nil
    var possibleKnobIndex : Int? = nil
    var idx = self.selectionShapes.count
    while (idx > 0) && (possibleObjectIndex == nil) {
      idx -= 1
      possibleKnobIndex = self.selectionShapes [idx].knobIndex (at: inLocation)
      if possibleKnobIndex != nil {
        possibleObjectIndex = idx
      }
    }
    idx = self.objectDisplayArray.count
    while (idx > 0) && (possibleObjectIndex == nil) {
      idx -= 1
      if self.objectDisplayArray [idx].contains (point: inLocation) {
        possibleObjectIndex = idx
      }
    }
    //Swift.print ("possibleObjectIndex \(possibleObjectIndex), possibleKnobIndex \(possibleKnobIndex)")
    return (possibleObjectIndex, possibleKnobIndex)
  }

  //····················································································································

  internal func indexesOfObjects (intersecting inRect : NSRect) -> Set <Int> {
    var result = Set <Int> ()
    var idx = 0
    for object in self.objectDisplayArray {
      if object.intersects (rect: inRect) {
        result.insert (idx)
      }
      idx += 1
    }
    return result
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
