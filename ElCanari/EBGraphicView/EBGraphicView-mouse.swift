//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

extension EBGraphicView {

  //····················································································································

  final override func mouseDown (with inEvent : NSEvent) {
    if let viewController = self.viewController {
      NSCursor.arrow.set ()
      let unalignedMouseDownLocationInView = self.convert (inEvent.locationInWindow, from:nil)
      let modifierFlags = inEvent.modifierFlags
      let modifierFlagsContainsControl = modifierFlags.contains (.control)
      let modifierFlagsContainsShift = modifierFlags.contains (.shift)
      let modifierFlagsContainsOption = modifierFlags.contains (.option)
      let (possibleObjectIndex, possibleKnobIndex) = self.indexOfFrontObject (at: unalignedMouseDownLocationInView)
      switch (modifierFlagsContainsControl, modifierFlagsContainsShift, modifierFlagsContainsOption) {
      case (true, true, false) : // Ctrl Key On, shift, no option -> Zoom region
        self.mMouseDownBehaviour = ZoomRegionBehaviour (unalignedMouseDownLocationInView, viewController)
      case (true, false, false) : // Ctrl Key On, no shift -> Contextual click
        if let theMenu = self.mContextualMenuBuilder? (unalignedMouseDownLocationInView.canariPoint) {
          NSMenu.popUpContextMenu (theMenu, with: inEvent, for: self)
        }
      case (false, true, false) : // Shift Key
        self.guideFor (possibleObjectIndex: possibleObjectIndex)
        self.mMouseDownBehaviour = ShiftMouseDownBehaviour (unalignedMouseDownLocationInView, possibleObjectIndex, viewController)
      case (_, _, true) : // Option Key On
        if let pbType = self.pasteboardType {
          self.ebStartDragging (with: inEvent, dragType: pbType)
        }else{
          self.mMouseDownBehaviour = OptionMouseDownBehaviour (unalignedMouseDownLocationInView, self, viewController)
        }
      case (false, false, false) : // No Modifier Key
        self.guideFor (possibleObjectIndex: possibleObjectIndex)
        if let objectIndex = possibleObjectIndex {
          self.mMouseDownBehaviour = MouseDownOnObjectBehaviour (
            unalignedMouseDownLocationInView,
            objectIndex: objectIndex,
            possibleKnobIndex: possibleKnobIndex,
            self,
            viewController
          )
        }else{
          self.mMouseDownBehaviour = MouseDownOutsideAnyObjectBehaviour (unalignedMouseDownLocationInView, viewController)
        }
      }
    //--- Update helper string
      self.setHelperTextField (self.mMouseDownBehaviour.helperString (unalignedMouseDownLocationInView, inEvent.modifierFlags, self))
    }
  }

  //····················································································································

  final override func mouseDragged (with inEvent : NSEvent) {
    super.mouseDragged (with: inEvent)
    let unalignedLocationInView = self.convert (inEvent.locationInWindow, from: nil)
    let locationOnGridInView = unalignedLocationInView.aligned (onGrid: canariUnitToCocoa (self.mouseGridInCanariUnit))
    self.updateXYHelperWindow (mouseLocationInView: locationOnGridInView)
    self.mMouseDownBehaviour.onMouseDraggedOrModifierFlagsChanged (mouseDraggedUnalignedLocation: unalignedLocationInView, inEvent.modifierFlags, self)
    self.setHelperTextField (self.mMouseDownBehaviour.helperString (unalignedLocationInView, inEvent.modifierFlags, self))
  }

    //····················································································································

    final override func mouseUp (with inEvent : NSEvent) {
      super.mouseUp (with: inEvent)
      let unalignedLocationInView = self.convert (inEvent.locationInWindow, from: nil)
      self.mMouseDownBehaviour.onMouseUp (unalignedLocationInView, self)
      self.mMouseDownBehaviour = DefaultBehaviourOnMouseDown ()
      self.setHelperTextField (self.mMouseDownBehaviour.helperString (unalignedLocationInView, inEvent.modifierFlags, self))
      self.mSelectionRectangle = nil
      self.mGuideBezierPath = nil
    //--- Set cursor
      self.setCursor (forLocationInView: unalignedLocationInView)
    //--- Update frame and bounds
 //     self.setNeedsDisplayAndUpdateViewBounds ()
    }

  //····················································································································

  final func dragObject (possibleKnob inPossibleKnobIndex : Int?,
                         objectIndex : Int,
                         proposedUnalignedTranslation inProposedUnalignedTranslation: CanariPoint,
                         proposedAlignedTranslation inProposedAlignedTranslation: CanariPoint,
                         alignedLastMouseDraggedLocation inAlignedLastMouseDraggedLocation : CanariPoint,
                         unalignedLastMouseDraggedLocation inUnalignedLastMouseDraggedLocation : CanariPoint) {
    let objects = self.viewController?.graphicObjectArray ?? []
//    let shift = NSApp.currentEvent?.modifierFlags.contains (.shift) ?? false
    let shift = NSEvent.modifierFlags.contains (.shift)
    if let knobIndex = inPossibleKnobIndex { // Mode knob
      let translation = objects [objectIndex].canMove (
        knob: knobIndex,
        proposedUnalignedAlignedTranslation: ObjcCanariPoint (canariPoint: inProposedUnalignedTranslation),
        proposedAlignedTranslation: ObjcCanariPoint (canariPoint: inProposedAlignedTranslation),
        unalignedMouseDraggedLocation: ObjcCanariPoint (canariPoint: inUnalignedLastMouseDraggedLocation),
        shift: shift
      )
      if (translation.x != 0) || (translation.y != 0) {
        let mouseDraggedLocation = CanariPoint (
          x: translation.x + inAlignedLastMouseDraggedLocation.x,
          y: translation.y + inAlignedLastMouseDraggedLocation.y
        )
        objects [objectIndex].move (
          knob: knobIndex,
          proposedDx: translation.x,
          proposedDy: translation.y,
          unalignedMouseLocationX: inUnalignedLastMouseDraggedLocation.x,
          unalignedMouseLocationY: inUnalignedLastMouseDraggedLocation.y,
          alignedMouseLocationX: mouseDraggedLocation.x,
          alignedMouseLocationY: mouseDraggedLocation.y,
          shift: shift
        )
      }
    }else{ // Move selected objects
      self.dragSelection (inProposedAlignedTranslation, inAlignedLastMouseDraggedLocation)
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
      let userSet = ObjcObjectSet ()
      for object in self.viewController?.selectedGraphicObjectSet ?? [] {
        object.translate (xBy: dx, yBy: dy, userSet: userSet)
      }
    }
  }

  //····················································································································

  final internal func indexOfFrontObject (at inLocation : NSPoint) -> (Int?, Int?){
    var possibleObjectIndex : Int? = nil
    var possibleKnobIndex : Int? = nil
    let selectedObjects = self.selectionShapes
    var idx = selectedObjects.count
    while (idx > 0) && (possibleObjectIndex == nil) {
      idx -= 1
      possibleKnobIndex = selectedObjects [idx].knobIndex (at: inLocation)
      if possibleKnobIndex != nil {
        possibleObjectIndex = idx
      }
    }
    idx = selectedObjects.count
    while (idx > 0) && (possibleObjectIndex == nil) {
      idx -= 1
      if selectedObjects [idx].contains (point: inLocation) {
        possibleObjectIndex = idx
      }
    }
    let objects = self.objectDisplayArray
    idx = objects.count
    while (idx > 0) && (possibleObjectIndex == nil) {
      idx -= 1
      if objects [idx].contains (point: inLocation) {
        possibleObjectIndex = idx
      }
    }
    return (possibleObjectIndex, possibleKnobIndex)
  }

  //····················································································································

  final internal func knobIndex (ofSelectedObjectIndex inObjectIndex : Int, at inLocation : NSPoint) -> Int? {
    let selectedObjects = self.selectionShapes
    if inObjectIndex < selectedObjects.count {
      return selectedObjects [inObjectIndex].knobIndex (at: inLocation)
    }else{
      return nil
    }
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

  final override func flagsChanged (with inEvent : NSEvent) {
    let unalignedLocationInView = self.convert (inEvent.locationInWindow, from: nil)
  //---
    self.mMouseMovedOrFlagsChangedCallback? (unalignedLocationInView)
    self.mMouseDownBehaviour.onMouseDraggedOrModifierFlagsChanged (mouseDraggedUnalignedLocation: unalignedLocationInView, inEvent.modifierFlags, self)
  //--- XY
    let locationOnGridInView = unalignedLocationInView.aligned (onGrid: canariUnitToCocoa (self.mouseGridInCanariUnit))
    self.updateXYHelperWindow (mouseLocationInView: locationOnGridInView)
  //--- Helper string
    self.setHelperTextField (self.mMouseDownBehaviour.helperString (unalignedLocationInView, inEvent.modifierFlags, self))
  //---
    super.flagsChanged (with: inEvent)
  }

  //····················································································································

  final func setCursor (forLocationInView inLocation : NSPoint) {
    let (possibleObjectIndex, possibleKnobIndex) = self.indexOfFrontObject (at: inLocation)
    if let objectIndex = possibleObjectIndex,
       let knobIndex = possibleKnobIndex,
       let object = self.viewController?.graphicObjectArray [objectIndex],
       let newCursor = object.cursorForKnob (knob: knobIndex) {
         newCursor.set ()
    }else{
      NSCursor.arrow.set ()
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
