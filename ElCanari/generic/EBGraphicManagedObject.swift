//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  EBGraphicManagedObject
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class EBGraphicManagedObject : EBManagedObject {

  //····················································································································
  //   Transient property: selectionDisplay
  //····················································································································

  var selectionDisplay_property = EBTransientProperty_EBShape ()

  //····················································································································

  var selectionDisplay_property_selection : EBSelection <EBShape> {
    return self.selectionDisplay_property.prop
  }

  //····················································································································

  var selectionDisplay : EBShape? {
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

  var objectDisplay_property = EBTransientProperty_EBShape ()

  //····················································································································

  var objectDisplay_property_selection : EBSelection <EBShape> {
    return self.objectDisplay_property.prop
  }

  //····················································································································

  var objectDisplay : EBShape? {
    switch self.objectDisplay_property_selection {
    case .empty, .multiple :
      return nil
    case .single (let v) :
      return v
    }
  }

  //····················································································································
  //  Translation
  //  @objc dynamic before func is required in order to allow function overriding in extensions
  //  Only types that can be represented in Objective-C are accepted
  //····················································································································

  @objc dynamic func acceptedTranslation (xBy inDx: Int, yBy inDy: Int) -> OCCanariPoint {
    return OCCanariPoint (x: inDx, y: inDy)
  }

  //····················································································································

  @objc dynamic func acceptToTranslate (xBy inDx: Int, yBy inDy: Int) -> Bool {
    return false
  }

  //····················································································································

  @objc dynamic func translate (xBy inDx: Int, yBy inDy: Int, userSet ioSet : OCObjectSet) {
  }

  //····················································································································
  //  Knob
  //  @objc dynamic before func is required in order to allow function overriding in extensions
  //  Only types that can be represented in Objective-C are accepted
  //····················································································································

  @objc dynamic func canMove (knob inKnobIndex : Int, xBy inDx: Int, yBy inDy: Int) -> OCCanariPoint {
    return OCCanariPoint (x: inDx, y: inDy)
  }

  //····················································································································

  @objc dynamic func move (knob inKnobIndex: Int, xBy inDx: Int, yBy inDy: Int, newX inNewX : Int, newY inNewY : Int) {
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

  @objc dynamic func canRotate90 (accumulatedPoints : OCCanariPointSet) -> Bool {
    return false
  }

  //····················································································································

  @objc dynamic func rotate90Clockwise (from inRotationCenter : OCCanariPoint, userSet ioSet : OCObjectSet) {
  }

  //····················································································································

  @objc dynamic func rotate90CounterClockwise (from inRotationCenter : OCCanariPoint, userSet ioSet : OCObjectSet) {
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

  @objc dynamic func operationAfterPasting () {
  }

  //····················································································································
  //  Alignment Points
  //  @objc dynamic before func is required in order to allow function overriding in extensions
  //  Only types that can be represented in Objective-C are accepted
  //····················································································································

  @objc dynamic func alignmentPoints () -> OCCanariPointSet {
    return OCCanariPointSet ()
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

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

@objc class OCCanariPoint : EBObject {

  //····················································································································

  let p : CanariPoint

  //····················································································································

  var x : Int { return self.p.x }
  var y : Int { return self.p.y }

  //····················································································································

  init (x inX : Int, y inY : Int) {
    p = CanariPoint (x: inX, y: inY)
    super.init ()
  }

  //····················································································································

  init (_ inPoint : CanariPoint) {
    p = inPoint
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

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

@objc class OCCanariPointSet : EBObject {

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

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

@objc class OCObjectSet : EBObject {

  //····················································································································

  var objects = Set <EBObject> ()

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
