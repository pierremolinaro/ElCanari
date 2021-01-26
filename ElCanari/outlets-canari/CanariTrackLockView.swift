//
//  CanariTrackLockView.swift
//  ElCanari
//
//  Created by Pierre Molinaro on 26/01/2021.
//
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------

fileprivate let KNOB_DIAMETER : CGFloat = 9.0
fileprivate let TEXT_OFFSET : CGFloat = 3.0

//----------------------------------------------------------------------------------------------------------------------
//   CanariTrackLockView
//----------------------------------------------------------------------------------------------------------------------

class CanariTrackLockView : NSView, EBUserClassNameProtocol {

  //····················································································································

  fileprivate var mDirectionInDegrees : CGFloat = 0.0 {
    didSet {
      if self.mDirectionInDegrees != oldValue {
        self.needsDisplay = true
      }
    }
  }

  fileprivate var mSomePadConnectedToP1 = false {
    didSet {
      if self.mSomePadConnectedToP1 != oldValue {
        self.needsDisplay = true
      }
    }
  }

  fileprivate var mManualLockForP1 = false {
    didSet {
      if self.mManualLockForP1 != oldValue {
        self.needsDisplay = true
      }
    }
  }

  fileprivate var mSomePadConnectedToP2 = false {
    didSet {
      if self.mSomePadConnectedToP2 != oldValue {
        self.needsDisplay = true
      }
    }
  }

  fileprivate var mManualLockForP2 = false {
    didSet {
      if self.mManualLockForP2 != oldValue {
        self.needsDisplay = true
      }
    }
  }

  fileprivate var mMouseInP1 = false {
    didSet {
      if self.mMouseInP1 != oldValue {
        self.needsDisplay = true
      }
    }
  }

  fileprivate var mMouseInP2 = false {
    didSet {
      if self.mMouseInP2 != oldValue {
        self.needsDisplay = true
      }
    }
  }

 fileprivate var mMouseIsDown = false {
    didSet {
      if self.mMouseIsDown != oldValue {
        self.needsDisplay = true
      }
    }
  }

  //····················································································································

  required init? (coder : NSCoder) {
    super.init (coder: coder)
    noteObjectAllocation (self)
  }

  //····················································································································

  override init (frame : NSRect) {
    super.init (frame: frame)
    noteObjectAllocation (self)
  }

  //····················································································································

  fileprivate func getPoints () -> (NSPoint, NSPoint) {
    let r = self.bounds
    let center = r.center
    let halfLength = fmin (r.size.width, r.size.height) / 3.0
    let p1 = NSPoint.point (fromCenter: center, atDistance: halfLength, angleInDegrees: self.mDirectionInDegrees + 180.0)
    let p2 = NSPoint.point (fromCenter: center, atDistance: halfLength, angleInDegrees: self.mDirectionInDegrees)
    return (p1, p2)
  }

  //····················································································································
  //   TRACKING AREA
  //····················································································································

  final internal var mTrackingArea : NSTrackingArea? = nil

  //····················································································································

  final override func updateTrackingAreas () { // This is required for receiving mouse moved and mouseExited events
  //--- Remove current tracking area
    if let trackingArea = self.mTrackingArea {
      self.removeTrackingArea (trackingArea)
    }
  //--- Add Updated tracking area (.activeInKeyWindow is required, otherwise crash)
    let trackingArea = NSTrackingArea (
      rect: self.bounds,
      options: [.mouseEnteredAndExited, .mouseMoved, .activeInKeyWindow],
      owner: self,
      userInfo: nil
    )
    self.addTrackingArea (trackingArea)
    self.mTrackingArea = trackingArea
  //---
    super.updateTrackingAreas ()
  }

  //····················································································································
  //   DRAW
  //····················································································································

  fileprivate func setFillColorAccordingPadConnection (padConnection inConnectedPad : Bool, manualLock inManualLock : Bool) {
    if inConnectedPad {
      NSColor.red.setFill ()
    }else if inManualLock {
      NSColor.lightGray.setFill ()
    }else{
      NSColor.green.setFill ()
    }
  }

  //····················································································································

  override func draw (_ inRect : NSRect) {
  //--- Draw background and frame
    var r = self.bounds
    let bp = NSBezierPath (rect: r)
    NSColor.white.setFill ()
    bp.fill ()
    NSColor.black.setStroke ()
    bp.lineWidth = 1.0
    bp.stroke ()
    bp.removeAllPoints ()
  //--- Draw segment
    let (p1, p2) = self.getPoints ()
    bp.move (to: p1)
    bp.line (to: p2)
    bp.stroke ()
    bp.removeAllPoints ()
  //--- Draw P1
    let knobSize = NSSize (width: KNOB_DIAMETER, height: KNOB_DIAMETER)
    r = NSRect (center: p1, size: knobSize)
    bp.appendOval (in: r)
    if self.mMouseInP1 && self.mMouseIsDown && !self.mSomePadConnectedToP1 {
      NSColor.white.setFill ()
    }else{
      self.setFillColorAccordingPadConnection (padConnection: self.mSomePadConnectedToP1, manualLock: self.mManualLockForP1)
    }
    bp.fill ()
    NSColor.black.setStroke ()
    bp.lineWidth = 1.0
    bp.stroke ()
    if self.mMouseInP1 && !self.mSomePadConnectedToP1 && !self.mManualLockForP1 {
      NSGraphicsContext.saveGraphicsState ()
      NSFocusRingPlacement.only.set ()
      bp.fill ()
      NSGraphicsContext.restoreGraphicsState ()
    }
    bp.removeAllPoints ()
  //--- Draw P1 text
    let textAttributes : [NSAttributedString.Key : Any] = [
      NSAttributedString.Key.font : NSFont.systemFont (ofSize: NSFont.smallSystemFontSize),
    ]
    let sizeP1 = "P1".size (withAttributes: textAttributes)
    let angleInDegrees = NSPoint.angleInDegrees (p1, p2)
    if (angleInDegrees < 90.0) || (angleInDegrees > 270.0) {
      let p = NSPoint (x: p1.x - KNOB_DIAMETER / 2.0 - sizeP1.width - TEXT_OFFSET, y: p1.y - sizeP1.height / 2.0)
      "P1".draw (at: p, withAttributes: textAttributes)
    }else{
      let p = NSPoint (x: p1.x + KNOB_DIAMETER / 2.0 + TEXT_OFFSET, y: p1.y - sizeP1.height / 2.0)
      "P1".draw (at: p, withAttributes: textAttributes)
    }
  //--- Draw P2
    r = NSRect (center: p2, size: knobSize)
    bp.appendOval (in: r)
    if self.mMouseInP2 && self.mMouseIsDown && !self.mSomePadConnectedToP2 {
      NSColor.white.setFill ()
    }else{
      self.setFillColorAccordingPadConnection (padConnection: self.mSomePadConnectedToP2, manualLock: self.mManualLockForP2)
    }
    bp.fill ()
    NSColor.black.setStroke ()
    bp.lineWidth = 1.0
    bp.stroke ()
    if self.mMouseInP2 && !self.mSomePadConnectedToP2 && !self.mManualLockForP2 {
      NSGraphicsContext.saveGraphicsState ()
      NSFocusRingPlacement.only.set ()
      bp.fill ()
      NSGraphicsContext.restoreGraphicsState ()
    }
  //--- Draw P2 text
    let sizeP2 = "P2".size (withAttributes: textAttributes)
    if (angleInDegrees >= 90.0) && (angleInDegrees <= 270.0) {
      let p = NSPoint (x: p2.x - KNOB_DIAMETER / 2.0 - sizeP2.width - TEXT_OFFSET, y: p2.y - sizeP2.height / 2.0)
      "P2".draw (at: p, withAttributes: textAttributes)
    }else{
      let p = NSPoint (x: p2.x + KNOB_DIAMETER / 2.0 + TEXT_OFFSET, y: p2.y - sizeP2.height / 2.0)
      "P2".draw (at: p, withAttributes: textAttributes)
    }
  }

  //····················································································································
  //   MOUSE DOWN
  //····················································································································

  override func mouseDown (with inEvent : NSEvent) {
    self.mMouseIsDown = true
  }

  //····················································································································

  override func mouseDragged (with inEvent : NSEvent) {
  //--- Convert mouse dragged location in view coordinates
    let mouseLocation = self.convert (inEvent.locationInWindow, from:nil)
  //--- Get end points coordinates
    let (p1, p2) = self.getPoints ()
  //--- Test points
    self.mMouseInP1 = NSPoint.distance (p1, mouseLocation) <= KNOB_DIAMETER
    self.mMouseInP2 = NSPoint.distance (p2, mouseLocation) <= KNOB_DIAMETER
  }

  //····················································································································

  override func mouseUp (with inEvent : NSEvent) {
    self.mMouseIsDown = false
    if self.mMouseInP1 && !self.mSomePadConnectedToP1 {
      _ = self.mManualLockP1Controller?.updateModel (withCandidateValue: !self.mManualLockForP1, windowForSheet: self.window)
    }
    if self.mMouseInP2 && !self.mSomePadConnectedToP2 {
      _ = self.mManualLockP2Controller?.updateModel (withCandidateValue: !self.mManualLockForP2, windowForSheet: self.window)
    }
  }

  //····················································································································
  //   MOUSE MOVED, EXITED
  //····················································································································

  override func mouseMoved (with inEvent : NSEvent) {
  //--- Convert mouse dragged location in view coordinates
    let mouseLocation = self.convert (inEvent.locationInWindow, from:nil)
  //--- Get end points coordinates
    let (p1, p2) = self.getPoints ()
  //--- Test points
    self.mMouseInP1 = NSPoint.distance (p1, mouseLocation) <= KNOB_DIAMETER
    self.mMouseInP2 = NSPoint.distance (p2, mouseLocation) <= KNOB_DIAMETER
    super.mouseMoved (with: inEvent)
  }

  //····················································································································

  override func mouseExited (with inEvent : NSEvent) {
    self.mMouseInP1 = false
    self.mMouseInP2 = false
    super.mouseExited (with: inEvent)
  }

  //····················································································································
  //   ANGLE CONTROLLER
  //····················································································································

  private var mAngleController : EBReadOnlyPropertyController? = nil

  //····················································································································

  func bind_angle (_ inObject : EBReadOnlyProperty_Int,
                   file : String,
                   line : Int) {
    self.mAngleController = EBReadOnlyPropertyController (
      observedObjects: [inObject],
      callBack: { [weak self] in self?.updateAngle (inObject) }
    )
  }

  //····················································································································

  func unbind_angle () {
    self.mAngleController?.unregister ()
    self.mAngleController = nil
  }

  //····················································································································

  fileprivate func updateAngle (_ inObject : EBReadOnlyProperty_Int) {
    switch inObject.selection {
    case .empty, .multiple :
      self.mDirectionInDegrees = 0.0
    case .single (let v) :
      self.mDirectionInDegrees = CGFloat (v) / 1000.0
    }
  }

  //····················································································································
  //   MANUAL LOCK FOR P1 CONTROLLER
  //····················································································································

  private var mManualLockP1Controller : EBGenericReadWritePropertyController <Bool>? = nil

  //····················································································································

  func bind_manualLockP1 (_ inObject : EBReadWriteProperty_Bool,
                          file : String,
                          line : Int) {
    self.mManualLockP1Controller = EBGenericReadWritePropertyController <Bool> (
      observedObject: inObject,
      callBack: { [weak self] in self?.updateLockP1 (inObject) }
    )
  }

  //····················································································································

  func unbind_manualLockP1 () {
    self.mManualLockP1Controller?.unregister ()
    self.mManualLockP1Controller = nil
  }

  //····················································································································

  fileprivate func updateLockP1 (_ inObject : EBReadWriteProperty_Bool) {
    switch inObject.selection {
    case .empty, .multiple :
      self.mManualLockForP1 = false
    case .single (let v) :
      self.mManualLockForP1 = v
    }
  }

  //····················································································································
  //   MANUAL LOCK FOR P2 CONTROLLER
  //····················································································································

  private var mManualLockP2Controller : EBGenericReadWritePropertyController <Bool>? = nil

  //····················································································································

  func bind_manualLockP2 (_ inObject : EBReadWriteProperty_Bool,
                          file : String,
                          line : Int) {
    self.mManualLockP2Controller = EBGenericReadWritePropertyController <Bool> (
      observedObject: inObject,
      callBack: { [weak self] in self?.updateLockP2 (inObject) }
    )
  }

  //····················································································································

  func unbind_manualLockP2 () {
    self.mManualLockP2Controller?.unregister ()
    self.mManualLockP2Controller = nil
  }

  //····················································································································

  fileprivate func updateLockP2 (_ inObject : EBReadWriteProperty_Bool) {
    switch inObject.selection {
    case .empty, .multiple :
      self.mManualLockForP2 = false
    case .single (let v) :
      self.mManualLockForP2 = v
    }
  }

  //····················································································································
  //   P1 CONNECTED TO PAD CONTROLLER
  //····················································································································

  private var mP1ConnectedToPadController : EBReadOnlyPropertyController? = nil

  //····················································································································

  func bind_p1ConnectedToSomePad (_ inObject : EBReadOnlyProperty_Bool,
                   file : String,
                   line : Int) {
    self.mP1ConnectedToPadController = EBReadOnlyPropertyController (
      observedObjects: [inObject],
      callBack: { [weak self] in self?.updateP1ConnectedToSomePad (inObject) }
    )
  }

  //····················································································································

  func unbind_p1ConnectedToSomePad () {
    self.mP1ConnectedToPadController?.unregister ()
    self.mP1ConnectedToPadController = nil
  }

  //····················································································································

  fileprivate func updateP1ConnectedToSomePad (_ inObject : EBReadOnlyProperty_Bool) {
    switch inObject.selection {
    case .empty, .multiple :
      self.mSomePadConnectedToP1 = false
    case .single (let v) :
      self.mSomePadConnectedToP1 = v
    }
  }

  //····················································································································
  //   P2 CONNECTED TO PAD CONTROLLER
  //····················································································································

  private var mP2ConnectedToPadController : EBReadOnlyPropertyController? = nil

  //····················································································································

  func bind_p2ConnectedToSomePad (_ inObject : EBReadOnlyProperty_Bool,
                   file : String,
                   line : Int) {
    self.mP2ConnectedToPadController = EBReadOnlyPropertyController (
      observedObjects: [inObject],
      callBack: { [weak self] in self?.updateP2ConnectedToSomePad (inObject) }
    )
  }

  //····················································································································

  func unbind_p2ConnectedToSomePad () {
    self.mP2ConnectedToPadController?.unregister ()
    self.mP2ConnectedToPadController = nil
  }

  //····················································································································

  fileprivate func updateP2ConnectedToSomePad (_ inObject : EBReadOnlyProperty_Bool) {
    switch inObject.selection {
    case .empty, .multiple :
      self.mSomePadConnectedToP2 = false
    case .single (let v) :
      self.mSomePadConnectedToP2 = v
    }
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
