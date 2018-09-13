//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   EBViewControllerProtocol
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol EBViewControllerProtocol : class {

  var objectCount : Int { get }

  func mouseDown (with inEvent: NSEvent, objectIndex inObjectIndex : Int?)
  func mouseDragged (with inEvent : NSEvent)
  func mouseUp (with inEvent : NSEvent)

  func keyDown (with inEvent: NSEvent)

  func selectAllObjects ()

  func canBringForward () -> Bool
  func bringForward ()

  func canBringToFront () -> Bool
  func bringToFront ()

  func canSendBackward () -> Bool
  func sendBackward ()

  func canSendToBack () -> Bool
  func sendToBack ()

  var      arrowKeyMagnitude : CGFloat { get set }
  var shiftArrowKeyMagnitude : CGFloat { get set }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   EBView
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

@objc(EBView) class EBView : NSView, EBUserClassNameProtocol {

  //····················································································································

  required init? (coder: NSCoder) {
    super.init (coder:coder)
    noteObjectAllocation (self)
  }

  //····················································································································

  override init (frame:NSRect) {
    super.init (frame:frame)
    noteObjectAllocation (self)
  }
  
  //····················································································································

  deinit {
    noteObjectDeallocation (self)
  }

  //····················································································································
  //  Properties
  //····················································································································

   private weak var mViewController : EBViewControllerProtocol? = nil

  //····················································································································
  //    set controller
  //····················································································································

  func set (controller inController : EBViewControllerProtocol?) {
    mViewController = inController
  }

  //····················································································································
  //    Selection Layer
  //····················································································································

  private var mSelectionShape = EBShape ()

  var objectSelectionLayer = EBShape () {
    didSet {
      self.setNeedsDisplay (mSelectionShape.boundingBox)
      mSelectionShape = self.objectSelectionLayer
      self.setNeedsDisplay (mSelectionShape.boundingBox)
    }
  }

  //····················································································································
  //    Selection Rectangle Layer
  //····················································································································

  var selectionRectangleLayer : EBShape? = nil {
    didSet {
      if let oldSelectionRectangleLayer = oldValue {
        self.setNeedsDisplay (oldSelectionRectangleLayer.boundingBox)
      }
      if let newSelectionRectangleLayer = selectionRectangleLayer {
        self.setNeedsDisplay (newSelectionRectangleLayer.boundingBox)
      }
    }
  }

  //····················································································································
  // indexesOfObjects intersecting rectangle
  //····················································································································

  func indexesOfObjects (intersecting inRect : CGRect) -> Set <Int> {
    return self.mObjects.indexes (intersecting: inRect)
  }

  //····················································································································
  // Mouse Events
  //····················································································································

  override func mouseDown (with inEvent: NSEvent) {
    let mouseDownLocation = self.convert (inEvent.locationInWindow, from:nil)
    let objectIndex : Int? = self.mObjects.indexOfObject (containing: mouseDownLocation)
    mViewController?.mouseDown (with: inEvent, objectIndex: objectIndex)
    super.mouseDown (with: inEvent)
  }

  //····················································································································

  override func mouseDragged (with inEvent : NSEvent) {
    mViewController?.mouseDragged (with: inEvent)
  }

  //····················································································································

  override func mouseUp (with inEvent : NSEvent) {
    mViewController?.mouseUp (with: inEvent)
  }

  //····················································································································
  // key Events
  //····················································································································

  override func keyDown (with inEvent: NSEvent) {
    mViewController?.keyDown (with:inEvent)
  }

  //····················································································································
  // Menu Events
  //····················································································································

  override func validateMenuItem (_ inMenuItem : NSMenuItem) -> Bool {
    let validate : Bool
    let action = inMenuItem.action
    if action == #selector (EBView.selectAll(_:)) {
      validate = (mViewController?.objectCount ?? 0) > 0
    }else if action == #selector (EBView.bringToFront(_:)) {
      validate = mViewController?.canBringToFront () ?? false
    }else if action == #selector (EBView.bringForward(_:)) {
      validate = mViewController?.canBringForward () ?? false
    }else if action == #selector (EBView.sendToBack(_:)) {
      validate = mViewController?.canSendToBack () ?? false
    }else if action == #selector (EBView.sendBackward(_:)) {
      validate = mViewController?.canSendBackward () ?? false
    }else{
      validate = super.validateMenuItem (inMenuItem)
    }
    // NSLog ("VALIDATE \(action) -> \(validate)")
    return validate
  }

  //····················································································································

  override func selectAll (_ : Any?) {
    mViewController?.selectAllObjects ()
  }

  //····················································································································

  @objc func bringToFront (_ : Any?) {
    mViewController?.bringToFront ()
  }

  //····················································································································

  @objc func bringForward (_ : Any?) {
    mViewController?.bringForward ()
  }

  //····················································································································

  @objc func sendToBack (_ : Any?) {
    mViewController?.sendToBack ()
  }

  //····················································································································

  @objc func sendBackward (_ : Any?) {
    mViewController?.sendBackward ()
  }

  //····················································································································
  //    Arrow Key Magnitude
  //····················································································································

  private var mArrowKeyMagnitudeController : Controller_EBView_arrowKeyMagnitude?

  func bind_arrowKeyMagnitude (_ property:EBReadOnlyProperty_CGFloat, file:String, line:Int) {
    mArrowKeyMagnitudeController = Controller_EBView_arrowKeyMagnitude (property, outlet:self)
  }

  func unbind_arrowKeyMagnitude () {
    mArrowKeyMagnitudeController?.unregister ()
    mArrowKeyMagnitudeController = nil
  }

  //····················································································································

  func set (arrowKeyMagnitude : CGFloat) {
    mViewController?.arrowKeyMagnitude = arrowKeyMagnitude
  }

  //····················································································································
  //    Shift Arrow Key Magnitude
  //····················································································································

  private var mShiftArrowKeyMagnitudeController : Controller_EBView_shiftArrowKeyMagnitude?

  func bind_shiftArrowKeyMagnitude (_ property:EBReadOnlyProperty_CGFloat, file:String, line:Int) {
    mShiftArrowKeyMagnitudeController = Controller_EBView_shiftArrowKeyMagnitude (property, outlet:self)
  }

  func unbind_shiftArrowKeyMagnitude () {
    mShiftArrowKeyMagnitudeController?.unregister ()
    mShiftArrowKeyMagnitudeController = nil
  }

  //····················································································································

  func set (shiftArrowKeyMagnitude : CGFloat) {
    mViewController?.shiftArrowKeyMagnitude = shiftArrowKeyMagnitude
  }

  //····················································································································
  //    $objects binding
  //····················································································································

  private var mObjectsController : Controller_EBView_objects?

  func bind_objects (_ objects:EBReadOnlyProperty_EBShape, file:String, line:Int) {
    mObjectsController = Controller_EBView_objects (objects, outlet:self)
  }

  func unbind_objects () {
    mObjectsController?.unregister ()
    mObjectsController = nil
  }

  //····················································································································

   private var mObjects = EBShape ()

  //····················································································································

  func setObjects (_ inObjects : EBShape) {
//    var invalidRect = NSZeroRect
//    let commonCount = min (self.mObjects.count, inObjects.count)
//    var idx = 0
//    while idx < commonCount {
//      let currentObjet = self.mObjects [idx]
//      let newObject = inObjects [idx]
//      if !newObject.sameDisplay(as: currentObjet) {
//        invalidRect = invalidRect.union (currentObjet.boundingBox)
//        invalidRect = invalidRect.union (newObject.boundingBox)
//      }
//      idx += 1
//    }
//  //--- Enter in invalid rect removed objects
//    while idx < self.mObjects.count {
//      invalidRect = invalidRect.union (self.mObjects [idx].boundingBox)
//      idx += 1
//    }
//  //--- Enter in invalid rect new objects
//    idx = commonCount
//    while idx < inObjects.count {
//      invalidRect = invalidRect.union (inObjects [idx].boundingBox)
//      idx += 1
//    }
    let invalidRect = self.mObjects.computeInvalidRect (inObjects)
    self.mObjects = inObjects
    self.setNeedsDisplay (invalidRect)
  }

  //····················································································································
  //  Draw Dirty rect
  //····················································································································

  override func draw (_ inDirtyRect: NSRect) {
//    for object in self.mObjects {
//      object.draw (inDirtyRect)
//    }
    self.mObjects.draw (inDirtyRect)
    self.selectionRectangleLayer?.draw (inDirtyRect)
    self.mSelectionShape.draw (inDirtyRect)
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   Controller_EBView_arrowKeyMagnitude
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class Controller_EBView_arrowKeyMagnitude : EBSimpleController {

  private let mProperty : EBReadOnlyProperty_CGFloat
  private let mOutlet : EBView

  //····················································································································

  init (_ property : EBReadOnlyProperty_CGFloat, outlet : EBView) {
    mProperty = property
    mOutlet = outlet
    super.init (observedObjects:[property], outlet:outlet)
    self.eventCallBack = { [weak self] in self?.updateOutlet () }
  }

  //····················································································································

  private func updateOutlet () {
    switch mProperty.prop {
    case .empty :
      break
    case .single (let v) :
      mOutlet.set (arrowKeyMagnitude:v)
    case .multiple :
      break
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   Controller_EBView_shiftArrowKeyMagnitude
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class Controller_EBView_shiftArrowKeyMagnitude : EBSimpleController {

  private let mProperty : EBReadOnlyProperty_CGFloat
  private let mOutlet : EBView

  //····················································································································

  init (_ property : EBReadOnlyProperty_CGFloat, outlet : EBView) {
    mProperty = property
    mOutlet = outlet
    super.init (observedObjects:[property], outlet:outlet)
    self.eventCallBack = { [weak self] in self?.updateOutlet () }
  }

  //····················································································································

  private func updateOutlet () {
    switch mProperty.prop {
    case .empty :
      break
    case .single (let v) :
      mOutlet.set (shiftArrowKeyMagnitude:v)
    case .multiple :
      break
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   Controller_EBView_objects
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class Controller_EBView_objects : EBSimpleController {

  private let mLayer : EBReadOnlyProperty_EBShape
  private let mOutlet : EBView

  //····················································································································

  init (_ layer : EBReadOnlyProperty_EBShape, outlet : EBView) {
    mLayer = layer
    mOutlet = outlet
    super.init (observedObjects:[layer], outlet:outlet)
    self.eventCallBack = { [weak self] in self?.updateOutlet () }
  }

  //····················································································································

  private func updateOutlet () {
    switch mLayer.prop {
    case .empty :
      mOutlet.setObjects (EBShape ())
    case .single (let v) :
      mOutlet.setObjects (v)
    case .multiple :
      mOutlet.setObjects (EBShape ())
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
