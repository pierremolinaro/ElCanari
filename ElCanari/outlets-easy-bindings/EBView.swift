//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   EBViewControllerProtocol
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol EBViewControllerProtocol : class {

  var objectCount : Int { get }

  func mouseDown (with inEvent: NSEvent)
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
  //    Object Display
  //····················································································································

  private var mObjectDisplayArray = [EBShape] ()

  func requestObjectDisplay (_ inNewObjectDisplayArray : [EBShape], _ inInvalidRect : NSRect) {
    self.mObjectDisplayArray = inNewObjectDisplayArray
    self.setNeedsDisplay (inInvalidRect)
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
  //    $overObjectsDisplay binding
  //····················································································································

  private var mOverObjectsDisplayController : Controller_EBView_overObjectsDisplay?

  func bind_overObjectsDisplay (_ objects:EBReadOnlyProperty_EBShape, file:String, line:Int) {
    mOverObjectsDisplayController = Controller_EBView_overObjectsDisplay (objects, outlet:self)
  }

  func unbind_overObjectsDisplay () {
    mOverObjectsDisplayController?.unregister ()
    mOverObjectsDisplayController = nil
  }

  //····················································································································

  private var mOverObjectsDisplay = EBShape ()

  //····················································································································

  func setOverObjectsDisplay (_ inDisplay : EBShape) {
    if !self.mOverObjectsDisplay.sameDisplay (as:inDisplay) {
      self.setNeedsDisplay (self.mOverObjectsDisplay.boundingBox)
      self.setNeedsDisplay (inDisplay.boundingBox)
    }
    self.mOverObjectsDisplay = inDisplay
  }

  //····················································································································
  //  Draw Dirty rect
  //····················································································································

  override func draw (_ inDirtyRect: NSRect) {
    for object in self.mObjectDisplayArray {
      object.draw (inDirtyRect)
    }
    self.mOverObjectsDisplay.draw (inDirtyRect)
    self.selectionRectangleLayer?.draw (inDirtyRect)
    self.mSelectionShape.draw (inDirtyRect)
  }

  //····················································································································
  // Mouse Events
  //····················································································································

  override func mouseDown (with inEvent: NSEvent) {
    mViewController?.mouseDown (with: inEvent)
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
//   Controller_EBView_overObjectsDisplay
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class Controller_EBView_overObjectsDisplay : EBSimpleController {

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
    case .empty, .multiple :
      mOutlet.setOverObjectsDisplay (EBShape ())
    case .single (let v) :
      mOutlet.setOverObjectsDisplay (v)
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
