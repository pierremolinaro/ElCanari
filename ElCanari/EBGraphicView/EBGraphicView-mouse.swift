//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

extension EBGraphicView {

  //····················································································································

  final override func flagsChanged (with inEvent : NSEvent) {
    let d = self.controlKeyHilitedDiameter
    if NSEvent.modifierFlags.contains (.control) && (d > 0.0) {
      let locationInView = self.convert (inEvent.locationInWindow, from: nil)
      if self.frame.contains (locationInView) {
        let r = NSRect (
          x: locationInView.x - d / 2.0,
          y: locationInView.y - d / 2.0,
          width: d,
          height: d
        )
        self.mControlKeyHiliteRectangle = r
      }else{
        self.mControlKeyHiliteRectangle = nil
      }
    }else{
      self.mControlKeyHiliteRectangle = nil
    }
    super.flagsChanged (with: inEvent)
  }

  //····················································································································

  final override func mouseMoved (with inEvent : NSEvent) {
    super.mouseMoved (with: inEvent)
    let locationInView = self.convert (inEvent.locationInWindow, from: nil)
    let locationOnGridInView = locationInView.aligned (onGrid: canariUnitToCocoa (self.mouseGridInCanariUnit))
    self.updateXYplacards (locationOnGridInView)
    if self.window?.firstResponder == self, self.visibleRect.contains (locationInView) {
      self.mMouseMovedCallback? (locationInView)
    }else{
      self.mMouseExitCallback? ()
    }
    let d = self.controlKeyHilitedDiameter
    if NSEvent.modifierFlags.contains (.control) && (d > 0.0) {
      let r = NSRect (
        x: locationInView.x - d / 2.0,
        y: locationInView.y - d / 2.0,
        width: d,
        height: d
      )
      self.mControlKeyHiliteRectangle = r
    }
  }

  //····················································································································

  final override func mouseExited (with inEvent : NSEvent) {
    super.mouseExited (with: inEvent)
    self.clearXYplacards ()
    self.mMouseExitCallback? ()
    self.mControlKeyHiliteRectangle = nil
  }

  //····················································································································

  final override func mouseDown (with inEvent : NSEvent) {
    if let viewController = self.viewController {
      let unalignedMouseDownLocation = self.convert (inEvent.locationInWindow, from:nil)
      self.mUnalignedMouseDownLocation = unalignedMouseDownLocation
      let canariUnalignedMouseDownLocation = unalignedMouseDownLocation.canariPoint
      let alignedLastMouseDraggedLocation = canariUnalignedMouseDownLocation.point (alignedOnGrid: self.mouseGridInCanariUnit)
      self.mMouseMovedCallback? (unalignedMouseDownLocation)
      self.mLastMouseDraggedLocation = alignedLastMouseDraggedLocation
      let modifierFlags = inEvent.modifierFlags
      if modifierFlags.contains (.control), !modifierFlags.contains (.shift), !modifierFlags.contains (.option) { // Ctrl Key On, no shift
        if let theMenu = self.mPopulateContextualMenuClosure? (canariUnalignedMouseDownLocation) {
          NSMenu.popUpContextMenu (theMenu, with: inEvent, for: self)
        }
      }else if let pbType = self.pasteboardType, inEvent.modifierFlags.contains (.option) {
        self.ebStartDragging (with: inEvent, dragType: pbType)
      }else if self.pasteboardType == nil, inEvent.modifierFlags.contains (.option) && !inEvent.modifierFlags.contains (.shift) {
        self.mPerformEndUndoGroupingOnMouseUp = true
        self.viewController?.ebUndoManager?.beginUndoGrouping ()
        self.mStartOptionMouseDownCallback? (unalignedMouseDownLocation)
        self.mOptionClickOperationInProgress = true
      }else if !inEvent.modifierFlags.contains (.option) && inEvent.modifierFlags.contains (.shift) {
        self.mShiftClickOperationInProgress = true
        if let selectedIndexesSet = self.viewController?.selectedIndexesSet {
          self.mSelectionOnShiftClick = selectedIndexesSet
        }
        self.mSelectionRectangleOrigin = mLastMouseDraggedLocation?.cocoaPoint
      }else{
      //--- Find index of object under mouse down
        let (possibleObjectIndex, possibleKnobIndex) = self.indexOfFrontmostObject (at: unalignedMouseDownLocation)
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
            self.mSelectionRectangleOrigin = mLastMouseDraggedLocation?.cocoaPoint
          }
        }
      }
    }else{
      super.mouseDown (with: inEvent)
    }
  }

  //····················································································································

  final func updateKnobSelection () {
    if let unalignedMouseDownLocation = self.mUnalignedMouseDownLocation {
      let (possibleObjectIndex, possibleKnobIndex) = self.indexOfFrontmostObject (at: unalignedMouseDownLocation)
      if let objectIndex = possibleObjectIndex, let knobIndex = possibleKnobIndex {
        self.mPossibleKnob = (objectIndex, knobIndex)
      }
    }
  }

  //····················································································································

  final override func mouseDragged (with inEvent : NSEvent) {
    super.mouseDragged (with: inEvent)
    let unalignedLocationInView = self.convert (inEvent.locationInWindow, from: nil)
    let locationOnGridInView = unalignedLocationInView.aligned (onGrid: canariUnitToCocoa (self.mouseGridInCanariUnit))
    self.updateXYplacards (locationOnGridInView)
    let mouseDraggedCocoaLocation = self.convert (inEvent.locationInWindow, from: nil)
    if self.mShiftClickOperationInProgress, let selectionRectangleOrigin = self.mSelectionRectangleOrigin {
      self.handleSelectionOnMouseDragged (from: selectionRectangleOrigin, to: mouseDraggedCocoaLocation)
    }else if self.mOptionClickOperationInProgress {
      self.mContinueOptionMouseDraggedCallback? (unalignedLocationInView)
    }else if let selectionRectangleOrigin = self.mSelectionRectangleOrigin {
      self.handleSelectionOnMouseDragged (from: selectionRectangleOrigin, to: mouseDraggedCocoaLocation)
    }else if let lastMouseDraggedLocation = self.mLastMouseDraggedLocation {
      let mouseDraggedCanariLocation = mouseDraggedCocoaLocation.canariPointAligned (onCanariGrid: self.mouseGridInCanariUnit)
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

  final fileprivate func handleSelectionOnMouseDragged (from inSelectionRectangleOrigin : NSPoint,
                                                        to inMouseDraggedLocation : NSPoint) {
    let xMin = min (inSelectionRectangleOrigin.x, inMouseDraggedLocation.x)
    let yMin = min (inSelectionRectangleOrigin.y, inMouseDraggedLocation.y)
    let xMax = max (inSelectionRectangleOrigin.x, inMouseDraggedLocation.x)
    let yMax = max (inSelectionRectangleOrigin.y, inMouseDraggedLocation.y)
    if (xMax > xMin) && (yMax > yMin) {
      let r = NSRect (x: xMin, y: yMin, width: xMax - xMin, height: yMax - yMin)
      self.mSelectionRectangle = r
      let indexSet : Set <Int> = self.indexesOfObjects (intersecting: r)
      let newSelection = indexSet.symmetricDifference (self.mSelectionOnShiftClick)
      self.viewController?.setSelection (objectsWithIndexes: Array (newSelection))
    }else{
      self.mSelectionRectangle = nil
      self.viewController?.setSelection (objectsWithIndexes: Array (self.mSelectionOnShiftClick))
    }
  }

  //····················································································································

  final fileprivate func drag (knob knobIndex : Int,
                               objectIndex : Int,
                               _ inProposedTranslation: CanariPoint,
                               _ inLastMouseDraggedLocation : CanariPoint) {
    let objects = self.viewController?.graphicObjectArray ?? []
    let p = objects [objectIndex].canMove (knob: knobIndex, xBy: inProposedTranslation.x, yBy: inProposedTranslation.y)
    if (p.x != 0) || (p.y != 0) {
      if !self.mPerformEndUndoGroupingOnMouseUp {
        self.mPerformEndUndoGroupingOnMouseUp = true
        self.viewController?.ebUndoManager?.beginUndoGrouping ()
      }
      let mouseDraggedLocation = CanariPoint (
        x: p.x + inLastMouseDraggedLocation.x,
        y: p.y + inLastMouseDraggedLocation.y
      )
      objects [objectIndex].move (
        knob: knobIndex,
        xBy: p.x,
        yBy: p.y,
        newX: mouseDraggedLocation.x,
        newY: mouseDraggedLocation.y
      )
      self.mLastMouseDraggedLocation = mouseDraggedLocation
    }
  }

  //····················································································································

  final fileprivate func dragSelection (_ proposedTranslation: CanariPoint, _ lastMouseDraggedLocation : CanariPoint) {
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
        self.viewController?.ebUndoManager?.beginUndoGrouping ()
      }
      let userSet = OCObjectSet ()
      for object in self.viewController?.selectedGraphicObjectSet ?? [] {
        object.translate (xBy: dx, yBy: dy, userSet: userSet)
      }
      let mouseDraggedLocation = CanariPoint (x: dx + lastMouseDraggedLocation.x, y: dy + lastMouseDraggedLocation.y)
      mLastMouseDraggedLocation = mouseDraggedLocation
    }
  }

  //····················································································································

  final override func mouseUp (with inEvent : NSEvent) {
    super.mouseUp (with: inEvent)
    var accepts = true
    if self.mShiftClickOperationInProgress {
      self.mShiftClickOperationInProgress = false
      self.mSelectionOnShiftClick.removeAll ()
    }
    if self.mOptionClickOperationInProgress {
      let unalignedLocationInView = self.convert (inEvent.locationInWindow, from: nil)
      accepts = self.mStopOptionMouseUpCallback? (unalignedLocationInView) ?? true
      self.mOptionClickOperationInProgress = false
    }
    if self.mPerformEndUndoGroupingOnMouseUp {
      self.mPerformEndUndoGroupingOnMouseUp = false
      self.viewController?.ebUndoManager?.endUndoGrouping ()
    }
    if !accepts {
      self.viewController?.ebUndoManager?.undo ()
    }
    self.mLastMouseDraggedLocation = nil
    self.mSelectionRectangleOrigin = nil
    self.mSelectionRectangle = nil
    self.mPossibleKnob = nil
    self.mGuideBezierPath = nil
  }

  //····················································································································

  final internal func indexOfFrontmostObject (at inLocation : NSPoint) -> (Int?, Int?) {
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
    return (possibleObjectIndex, possibleKnobIndex)
  }

  //····················································································································

  final internal func indexesOfObjects (intersecting inRect : NSRect) -> Set <Int> {
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
