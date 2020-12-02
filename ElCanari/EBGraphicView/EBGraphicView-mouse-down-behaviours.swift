//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------

class DefaultBehaviourOnMouseDown {

  //····················································································································

  func onMouseDraggedOrModifierFlagsChanged (_ inMouseDraggedUnalignedLocation : NSPoint,
                                             _ inModifierFlags : NSEvent.ModifierFlags,
                                             _ inGraphicView : EBGraphicView) {
  }

  //····················································································································

  func abortMouseOperation (_ inGraphicView : EBGraphicView) {
  }

  //····················································································································

  func helperString (_ inMouseDraggedUnalignedLocation : NSPoint,
                     _ inModifierFlags : NSEvent.ModifierFlags,
                     _ inGraphicView : EBGraphicView) -> String {
    return inGraphicView.defaultHelperString (with: inMouseDraggedUnalignedLocation, inModifierFlags)
  }

  //····················································································································

  func onMouseUp (_ inUnalignedMouseUpLocation : NSPoint,
                  _ inGraphicView : EBGraphicView) {
  }

  //····················································································································
}

//----------------------------------------------------------------------------------------------------------------------

final class MouseDownOutsideAnyObjectBehaviour : DefaultBehaviourOnMouseDown { // Mouse down without any modifier, outside any object

  //····················································································································

  private let mMouseDownUnalignedLocation : NSPoint
  private var mOperationInProgress : Bool

  //····················································································································

  init (_ inUnalignedLocation : NSPoint, _ inViewController : EBGraphicViewControllerProtocol) {
    self.mMouseDownUnalignedLocation = inUnalignedLocation
    self.mOperationInProgress = true
    inViewController.clearSelection ()
  }

  //····················································································································

  override func onMouseDraggedOrModifierFlagsChanged (_ inMouseDraggedUnalignedLocation : NSPoint,
                                                      _ inModifierFlags : NSEvent.ModifierFlags,
                                                      _ inGraphicView : EBGraphicView) {
    if self.mOperationInProgress {
      let r = NSRect (point: self.mMouseDownUnalignedLocation, point: inMouseDraggedUnalignedLocation)
      inGraphicView.mSelectionRectangle = r
      let indexSet : Set <Int> = inGraphicView.indexesOfObjects (intersecting: r)
      inGraphicView.viewController?.setSelection (objectsWithIndexes: Array (indexSet))
    }
  }

  //····················································································································

  override func helperString (_ inMouseDraggedUnalignedLocation : NSPoint,
                              _ inModifierFlags : NSEvent.ModifierFlags,
                              _ inGraphicView : EBGraphicView) -> String {
    if self.mOperationInProgress {
      return "Dragging mouse selects objects intersection selection rectangle; ESC cancels the operation"
    }else{
      return "Operation has been cancelled"
    }
  }

  //····················································································································

  override func abortMouseOperation (_ inGraphicView : EBGraphicView) {
    self.mOperationInProgress = false
    inGraphicView.mSelectionRectangle = nil
    inGraphicView.viewController?.setSelection (objectsWithIndexes: [])
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------

final class MouseDownOnObjectBehaviour : DefaultBehaviourOnMouseDown { // Mouse down without any modifier, on an object

  //····················································································································

  private var mLastMouseDraggedAlignedLocation : CanariPoint
  private let mObjectIndex : Int
  private let mPossibleKnobIndex : Int? //  knob index
  private var mBeginUndoGroupingDone = false

  //····················································································································

  init (_ inUnalignedLocation : NSPoint,
        objectIndex inObjectIndex : Int,
        possibleKnobIndex inPossibleKnobIndex : Int?,
        _ inGraphicView : EBGraphicView,
        _ inViewController : EBGraphicViewControllerProtocol) {
    self.mLastMouseDraggedAlignedLocation = inUnalignedLocation.canariPointAligned (onCanariGrid: inGraphicView.mouseGridInCanariUnit)
    self.mObjectIndex = inObjectIndex
    let objectWasSelected = inViewController.selectedIndexesSet.contains (inObjectIndex)
    if !objectWasSelected {
      inViewController.setSelection (objectsWithIndexes: [inObjectIndex])
      self.mPossibleKnobIndex = inGraphicView.knobIndex (ofSelectedObjectIndex: inObjectIndex, at: inUnalignedLocation)
    }else{
      self.mPossibleKnobIndex = inPossibleKnobIndex
    }
  }

  //····················································································································

  override func onMouseDraggedOrModifierFlagsChanged (_ inMouseDraggedUnalignedLocation : NSPoint,
                                                      _ inModifierFlags : NSEvent.ModifierFlags,
                                                      _ inGraphicView : EBGraphicView) {
    let mouseDraggedCanariAlignedLocation = inMouseDraggedUnalignedLocation.canariPointAligned (onCanariGrid: inGraphicView.mouseGridInCanariUnit)
    let proposedTranslation = CanariPoint (
      x: mouseDraggedCanariAlignedLocation.x - self.mLastMouseDraggedAlignedLocation.x,
      y: mouseDraggedCanariAlignedLocation.y - self.mLastMouseDraggedAlignedLocation.y
    )
    if !self.mBeginUndoGroupingDone {
      self.mBeginUndoGroupingDone = true
      inGraphicView.viewController?.ebUndoManager?.beginUndoGrouping ()
    }
    inGraphicView.guideFor (objectIndexes: [self.mObjectIndex])
    inGraphicView.dragObject (
      possibleKnob: inModifierFlags.contains (.command) ? nil : self.mPossibleKnobIndex,
      objectIndex: self.mObjectIndex,
      proposedTranslation,
      self.mLastMouseDraggedAlignedLocation,
      inMouseDraggedUnalignedLocation.canariPoint
    )
    self.mLastMouseDraggedAlignedLocation = mouseDraggedCanariAlignedLocation
  }

  //····················································································································

  override func helperString (_ inMouseDraggedUnalignedLocation : NSPoint,
                              _ inModifierFlags : NSEvent.ModifierFlags,
                              _ inGraphicView : EBGraphicView) -> String {
    return "Dragging mouse inverts selection of objects intersecting selection rectangle"
  }

  //····················································································································

  override func onMouseUp (_ inUnalignedMouseUpLocation : NSPoint,
                           _ inGraphicView : EBGraphicView) {
    if self.mBeginUndoGroupingDone {
      inGraphicView.viewController?.ebUndoManager?.endUndoGrouping ()
    }
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------

final class ShiftMouseDownBehaviour : DefaultBehaviourOnMouseDown { // Mouse down with only shift modifier

  //····················································································································

  private let mMouseDownUnalignedLocation : NSPoint
  private let mSelectedObjectIndexSet : Set <Int>
  private let mPossibleObjectIndex : Int?

  //····················································································································

  init (_ inUnalignedLocation : NSPoint, _ inPossibleObjectIndex : Int?, _ inViewController : EBGraphicViewControllerProtocol) {
    self.mMouseDownUnalignedLocation = inUnalignedLocation
    self.mSelectedObjectIndexSet = inViewController.selectedIndexesSet
    self.mPossibleObjectIndex = inPossibleObjectIndex
    if let objectIndex = inPossibleObjectIndex {
      inViewController.setSelection (objectsWithIndexes: Array (self.mSelectedObjectIndexSet.symmetricDifference ([objectIndex])))
    }
  }

  //····················································································································

  override func onMouseDraggedOrModifierFlagsChanged (_ inMouseDraggedUnalignedLocation : NSPoint,
                                                      _ inModifierFlags : NSEvent.ModifierFlags,
                                                      _ inGraphicView : EBGraphicView) {
    let r = NSRect (point: self.mMouseDownUnalignedLocation, point: inMouseDraggedUnalignedLocation)
    inGraphicView.mSelectionRectangle = r
    let indexSet : Set <Int> = inGraphicView.indexesOfObjects (intersecting: r)
    inGraphicView.viewController?.setSelection (objectsWithIndexes: Array (indexSet.symmetricDifference (self.mSelectedObjectIndexSet)))
  }

  //····················································································································

  override func helperString (_ inMouseDraggedUnalignedLocation : NSPoint,
                              _ inModifierFlags : NSEvent.ModifierFlags,
                              _ inGraphicView : EBGraphicView) -> String {
    return "Dragging mouse inverts selection of objects intersecting selection rectangle"
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------

final class OptionMouseDownBehaviour : DefaultBehaviourOnMouseDown { // Mouse down without only option modifier

  //····················································································································

  private var mOperationInProgress : Bool

  //····················································································································

  init (_ inUnalignedLocation : NSPoint,
        _ inGraphicView : EBGraphicView,
        _ inViewController : EBGraphicViewControllerProtocol) {
    self.mOperationInProgress = true
    inViewController.ebUndoManager?.beginUndoGrouping ()
    inGraphicView.mStartOptionMouseDownCallback? (inUnalignedLocation)
  }

  //····················································································································

  override func onMouseDraggedOrModifierFlagsChanged (_ inMouseDraggedUnalignedLocation : NSPoint,
                                                      _ inModifierFlags : NSEvent.ModifierFlags,
                                                      _ inGraphicView : EBGraphicView) {
    if self.mOperationInProgress {
      inGraphicView.mContinueOptionMouseDraggedCallback? (inMouseDraggedUnalignedLocation, inModifierFlags)
    }
  }

  //····················································································································

  override func abortMouseOperation (_ inGraphicView : EBGraphicView) {
    if self.mOperationInProgress {
      self.mOperationInProgress = false
      inGraphicView.mAbortOptionMouseOperationCallback? ()
      inGraphicView.viewController?.ebUndoManager?.endUndoGrouping ()
      inGraphicView.viewController?.ebUndoManager?.undo ()
    }
  }

  //····················································································································

  override func helperString (_ inMouseDraggedUnalignedLocation : NSPoint,
                              _ inModifierFlags : NSEvent.ModifierFlags,
                              _ inGraphicView : EBGraphicView) -> String {
    if !self.mOperationInProgress {
      return "Operation has been cancelled"
    }else if let str = inGraphicView.mHelperStringOptionMouseOperationCallback? (inModifierFlags) {
      return str
    }else{
      return "Operation in progress"
    }
  }

  //····················································································································

  override func onMouseUp (_ inUnalignedMouseUpLocation : NSPoint,
                           _ inGraphicView : EBGraphicView) {
    if self.mOperationInProgress {
      let accepts = inGraphicView.mStopOptionMouseUpCallback? (inUnalignedMouseUpLocation) ?? true
      inGraphicView.viewController?.ebUndoManager?.endUndoGrouping ()
      if !accepts {
        inGraphicView.viewController?.ebUndoManager?.undo ()
      }
    }
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------

final class ZoomRegionBehaviour : DefaultBehaviourOnMouseDown { // Mouse down with shift and control keys

  //····················································································································

  private var mOperationInProgress : Bool
  private let mMouseDownUnalignedLocation : NSPoint

  //····················································································································

  init (_ inUnalignedLocation : NSPoint, _ inViewController : EBGraphicViewControllerProtocol) {
    self.mMouseDownUnalignedLocation = inUnalignedLocation
    self.mOperationInProgress = true
  }

  //····················································································································

  override func onMouseDraggedOrModifierFlagsChanged (_ inMouseDraggedUnalignedLocation : NSPoint,
                                                      _ inModifierFlags : NSEvent.ModifierFlags,
                                                      _ inGraphicView : EBGraphicView) {
    if self.mOperationInProgress {
      let r = NSRect (point: self.mMouseDownUnalignedLocation, point: inMouseDraggedUnalignedLocation)
      inGraphicView.mSelectionRectangle = r
    }
  }

  //····················································································································

  override func abortMouseOperation (_ inGraphicView : EBGraphicView) {
    if self.mOperationInProgress {
      self.mOperationInProgress = false
      inGraphicView.mSelectionRectangle = nil
    }
  }

  //····················································································································

  override func helperString (_ inMouseDraggedUnalignedLocation : NSPoint,
                              _ inModifierFlags : NSEvent.ModifierFlags,
                              _ inGraphicView : EBGraphicView) -> String {
    if self.mOperationInProgress {
      return "Dragging mouse defines zoomed region; ESC cancels the operation"
    }else{
      return "Operation has been cancelled"
    }
  }

  //····················································································································

  override func onMouseUp (_ inUnalignedMouseUpLocation : NSPoint,
                           _ inGraphicView : EBGraphicView) {
    if self.mOperationInProgress,
          let scrollView = inGraphicView.enclosingScrollView,
          let r = inGraphicView.mSelectionRectangle { //, r.size.width > 0.0, r.size.height > 0.0 {
      scrollView.magnify (toFit: r)
      let zoomTitle = "\(Int ((inGraphicView.actualScale * 100.0).rounded (.toNearestOrEven))) %"
      inGraphicView.mZoomPopUpButton?.menu?.item (at:0)?.title = zoomTitle
    }
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
