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
  //   Translation
  //  @objc dynamic before func is required in order to allow function overriding in extensions
  //····················································································································

  @objc dynamic func acceptedTranslation (by inValue: CGPoint) -> CGPoint {
    return inValue
  }

  //····················································································································

  @objc dynamic func acceptToTranslate (xBy inDx: CGFloat, yBy inDy: CGFloat) -> Bool {
    return false
  }

  //····················································································································

  @objc dynamic func translate (xBy inDx: CGFloat, yBy inDy: CGFloat) {
  }

  //····················································································································
  //  Knob
  //  @objc dynamic before func is required in order to allow function overriding in extensions
  //····················································································································

  @objc dynamic func canMove (knob inKnobIndex : Int, by inValue: CGPoint) -> Bool {
    return true
  }

  //····················································································································

  @objc dynamic func move (knob inKnobIndex : Int, by inTranslation: CGPoint) {
  }

  //····················································································································
  //  Snap to grid
  //  @objc dynamic before func is required in order to allow function overriding in extensions
  //····················································································································

  @objc dynamic func snapToGrid () {
  }

  //····················································································································

  @objc dynamic func canSnapToGrid () -> Bool {
    return false
  }

  //····················································································································
  //  HORIZONTAL FLIP
  //  @objc dynamic before func is required in order to allow function overriding in extensions
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
  //····················································································································

  @objc dynamic func flipVertically () {
  }

  //····················································································································

  @objc dynamic func canFlipVertically () -> Bool {
    return false
  }

  //····················································································································
  //  ROTATE 90 CLOCKWISE
  //  @objc dynamic before func is required in order to allow function overriding in extensions
  //····················································································································

  @objc dynamic func rotate90Clockwise () {
  }

  //····················································································································

  @objc dynamic func canRotate90Clockwise () -> Bool {
    return false
  }

  //····················································································································
  //  ROTATE 90 COUNTER CLOCKWISE
  //  @objc dynamic before func is required in order to allow function overriding in extensions
  //····················································································································

  @objc dynamic func rotate90CounterClockwise () {
  }

  //····················································································································

  @objc dynamic func canRotate90CounterClockwise () -> Bool {
    return false
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
