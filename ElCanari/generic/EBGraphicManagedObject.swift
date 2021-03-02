//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------
//  Dictionary keys for drag and drop, copy / paste
//----------------------------------------------------------------------------------------------------------------------

let OBJECT_DICTIONARY_KEY = "OBJECTS_DICTIONARY_KEY"
let OBJECT_ADDITIONAL_DICTIONARY_KEY = "OBJECTS_ADDITIONAL_DICTIONARY_KEY"
let X_KEY = "X"
let Y_KEY = "Y"

//----------------------------------------------------------------------------------------------------------------------
//  EBGraphicManagedObject
//----------------------------------------------------------------------------------------------------------------------

class EBGraphicManagedObject : EBManagedObject {

  //····················································································································
  //   Transient property: selectionDisplay
  //····················································································································

  final var selectionDisplay_property = EBTransientProperty_EBShape ()

  //····················································································································

  final var selectionDisplay_property_selection : EBSelection <EBShape> {
    return self.selectionDisplay_property.selection
  }

  //····················································································································

  final var selectionDisplay : EBShape? {
    switch self.selectionDisplay_property_selection {
    case .empty, .multiple :
      return nil
    case .single (let v) :
      return v
    }
  }

  //····················································································································
  //   Transient property: objectDisplay
  //····················································································································

  final var objectDisplay_property = EBTransientProperty_EBShape ()

  //····················································································································

  final var objectDisplay_property_selection : EBSelection <EBShape> {
    return self.objectDisplay_property.selection
  }

  //····················································································································

  final var objectDisplay : EBShape? {
    switch self.objectDisplay_property_selection {
    case .empty, .multiple :
      return nil
    case .single (let v) :
      return v
    }
  }

  //····················································································································
  //  Cursor
  //  @objc dynamic before func is required in order to allow function overriding in extensions
  //  Only types that can be represented in Objective-C are accepted
  //····················································································································

  @objc dynamic func cursorForKnob (knob inKnobIndex: Int) -> NSCursor? {
    return nil // Uses default cursor
  }

  //····················································································································
  //  Translation
  //  @objc dynamic before func is required in order to allow function overriding in extensions
  //  Only types that can be represented in Objective-C are accepted
  //····················································································································

  @objc dynamic func acceptedTranslation (xBy inDx: Int, yBy inDy: Int) -> ObjcCanariPoint {
    return ObjcCanariPoint (x: inDx, y: inDy)
  }

  //····················································································································

  @objc dynamic func acceptToTranslate (xBy inDx: Int, yBy inDy: Int) -> Bool {
    return false
  }

  //····················································································································

  @objc dynamic func translate (xBy inDx: Int, yBy inDy: Int, userSet ioSet : ObjcObjectSet) {
  }

  //····················································································································
  //  Knob
  //  @objc dynamic before func is required in order to allow function overriding in extensions
  //  Only types that can be represented in Objective-C are accepted
  //····················································································································

  @objc dynamic func canMove (knob inKnobIndex : Int,
                              proposedUnalignedAlignedTranslation inProposedUnalignedTranslation : ObjcCanariPoint,
                              proposedAlignedTranslation inProposedAlignedTranslation : ObjcCanariPoint,
                              unalignedMouseDraggedLocation inUnalignedMouseDraggedLocation : ObjcCanariPoint,
                              shift inShift : Bool) -> ObjcCanariPoint {
    return inProposedAlignedTranslation
  }

  //····················································································································

  @objc dynamic func move (knob inKnobIndex: Int,
                           proposedDx inDx: Int,
                           proposedDy inDy: Int,
                           unalignedMouseLocationX inUnlignedMouseLocationX : Int,
                           unalignedMouseLocationY inUnlignedMouseLocationY : Int,
                           alignedMouseLocationX inAlignedMouseLocationX : Int,
                           alignedMouseLocationY inAlignedMouseLocationY : Int,
                           shift inShift : Bool) {
  }

  //····················································································································
  //  Snap to grid
  //  @objc dynamic before func is required in order to allow function overriding in extensions
  //  Only types that can be represented in Objective-C are accepted
  //····················································································································

  @objc dynamic func snapToGrid (_ inGrid : Int) {
  }

  //····················································································································

  @objc dynamic func canSnapToGrid (_ inGrid : Int) -> Bool {
    return false
  }

  //····················································································································
  //  HORIZONTAL FLIP
  //  @objc dynamic before func is required in order to allow function overriding in extensions
  //  Only types that can be represented in Objective-C are accepted
  //····················································································································

  @objc dynamic func flipHorizontally () {
  }

  //····················································································································

  @objc dynamic func canFlipHorizontally () -> Bool {
    return false
  }

  //····················································································································
  //  VERTICAL FLIP
  //  @objc dynamic before func is required in order to allow function overriding in extensions
  //  Only types that can be represented in Objective-C are accepted
  //····················································································································

  @objc dynamic func flipVertically () {
  }

  //····················································································································

  @objc dynamic func canFlipVertically () -> Bool {
    return false
  }

  //····················································································································
  //  ROTATE 90
  //  @objc dynamic before func is required in order to allow function overriding in extensions
  //  Only types that can be represented in Objective-C are accepted
  //····················································································································

  @objc dynamic func canRotate90 (accumulatedPoints : ObjcCanariPointSet) -> Bool {
    return false
  }

  //····················································································································

  @objc dynamic func rotate90Clockwise (from inRotationCenter : ObjcCanariPoint, userSet ioSet : ObjcObjectSet) {
  }

  //····················································································································

  @objc dynamic func rotate90CounterClockwise (from inRotationCenter : ObjcCanariPoint, userSet ioSet : ObjcObjectSet) {
  }

  //····················································································································
  //  Save into additional dictionary
  //  @objc dynamic before func is required in order to allow function overriding in extensions
  //  Only types that can be represented in Objective-C are accepted
  //····················································································································

  @objc dynamic func saveIntoAdditionalDictionary (_ ioDictionary : NSMutableDictionary) {
  }

  //····················································································································
  //  COPY AND PASTE
  //  @objc dynamic before func is required in order to allow function overriding in extensions
  //  Only types that can be represented in Objective-C are accepted
  //····················································································································

  @objc dynamic func canCopyAndPaste () -> Bool {
    return false
  }

  //····················································································································

  @objc dynamic func operationAfterPasting (additionalDictionary inDictionary : NSDictionary,
                                            objectArray inObjectArray : [EBGraphicManagedObject]) -> String {
    return ""
  }

  //····················································································································
  //  Alignment Points
  //  @objc dynamic before func is required in order to allow function overriding in extensions
  //  Only types that can be represented in Objective-C are accepted
  //····················································································································

  @objc dynamic func alignmentPoints () -> ObjcCanariPointSet {
    return ObjcCanariPointSet ()
  }

  //····················································································································
  //  Can be deleted
  //  @objc dynamic before func is required in order to allow function overriding in extensions
  //  Only types that can be represented in Objective-C are accepted
  //····················································································································

  @objc dynamic func canBeDeleted () -> Bool {
    return true
  }

  //····················································································································

  @objc dynamic func operationBeforeRemoving () {
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------

@objc final class ObjcCanariPoint : EBObject {

  //····················································································································

  let p : CanariPoint

  //····················································································································

  var x : Int { return self.p.x }
  var y : Int { return self.p.y }

  //····················································································································

  override init () {
    self.p = CanariPoint ()
    super.init ()
  }

  //····················································································································

  init (x inX : Int, y inY : Int) {
    self.p = CanariPoint (x: inX, y: inY)
    super.init ()
  }

  //····················································································································

  init (canariPoint inPoint : CanariPoint) {
    self.p = inPoint
    super.init ()
  }

  //····················································································································

  func rotated90Clockwise (x inX : Int, y inY : Int) -> CanariPoint {
    return self.rotated90Clockwise (CanariPoint (x: inX, y: inY))
  }

  //····················································································································

  func rotated90Clockwise (_ inP : CanariPoint) -> CanariPoint {
    return self.p.rotated90Clockwise (inP)
  }

  //····················································································································

  func rotated90CounterClockwise (x inX : Int, y inY : Int) -> CanariPoint {
    return self.rotated90CounterClockwise (CanariPoint (x: inX, y: inY))
  }

  //····················································································································

  func rotated90CounterClockwise (_ inP : CanariPoint) -> CanariPoint {
    return self.p.rotated90CounterClockwise (inP)
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------

@objc final class ObjcCanariPointSet : EBObject {

  //····················································································································

  private var mPoints = Set <CanariPoint> ()

  //····················································································································

  var points : Set <CanariPoint> { return self.mPoints }

  //····················································································································

  func insert (_ inPoint : CanariPoint) {
    self.mPoints.insert (inPoint)
  }

  //····················································································································

  func insert (x inX : Int, y inY : Int) {
    self.mPoints.insert (CanariPoint (x: inX, y: inY))
  }

  //····················································································································

  func removeAll () {
    self.mPoints.removeAll ()
  }

  //····················································································································

  var isEmpty : Bool {
    return self.mPoints.isEmpty
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------

@objc final class ObjcObjectSet : EBObject {

  //····················································································································

  private var mObjects = Set <EBObject> ()

  //····················································································································

  func insert (_ inObject : EBObject) {
    self.mObjects.insert (inObject)
  }

  //····················································································································

  func contains (_ inObject : EBObject) -> Bool {
    return self.mObjects.contains (inObject)
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
