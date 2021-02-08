//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------

private let XY_WINDOW_MARGIN : CGFloat = 5.0
private let XY_WINDOW_BACKGROUND_COLOR = NSColor.black
private let XY_WINDOW_TEXT_COLOR = NSColor.white
let DEFAULT_HELPER_TEXT = "SHIFT, CONTROL, OPTION and COMMAND modifier keys helper text"

//----------------------------------------------------------------------------------------------------------------------

extension EBGraphicView {

 //····················································································································

 final private func optionalHelperView () -> EBHelperView? {
   return self.superview?.superview?.superview?.superview as? EBHelperView
 }

 //····················································································································

  final fileprivate func addPopupButtonItemForZoom (_ inZoom : Int, _ inScrollView : NSScrollView) {
    if let zoomPopUpButton = self.mZoomPopUpButton {
      let minMagnification = inScrollView.minMagnification
      let maxMagnification = inScrollView.maxMagnification
      let proposedMagnification = CGFloat (inZoom) / 100.0
      if (proposedMagnification >= minMagnification) && (proposedMagnification <= maxMagnification) {
        zoomPopUpButton.menu?.addItem (withTitle: ("\(inZoom) %"), action:#selector (EBGraphicView.setZoomFromPopUpButton(_:)), keyEquivalent: "")
        zoomPopUpButton.lastItem?.target = self
        zoomPopUpButton.lastItem?.tag = inZoom
      }
    }
  }

  //····················································································································

  @objc final func setZoomToFitButton (_ inSender : Any?) {
    let actualZoom = 0 // Means zoom to fit
    self.mZoomPropertyCache = actualZoom
    self.applyZoom ()
  }

  //····················································································································

  @objc final func setZoomFromPopUpButton (_ inSender : NSMenuItem) {
    let actualZoom = inSender.tag
    self.mZoomPropertyCache = actualZoom
    self.applyZoom ()
  }

  //····················································································································

  final internal func installPlacards () {
    if let scrollView = self.enclosingScrollView as? EBScrollView {
      self.installZoomPopUpButton (scrollView)
      self.installZoomToFitButton ()
      self.installHelperTextField ()
      self.installLiveScrollingNotification ()
    }
  }

  //····················································································································

  final internal func installHelperTextField () {
    if self.mHelperTextField == nil, let helperView = optionalHelperView () {
      let r = NSRect (x: 0.0, y: 0.0, width: 100.0, height: 20.0)
      let helperTextField = NSTextField (frame: r)
      self.mHelperTextField = helperTextField
      helperTextField.isBezeled = false
      helperTextField.isBordered = false
      helperTextField.drawsBackground = false
      helperTextField.textColor = .black
      helperTextField.isEnabled = true
      helperTextField.isEditable = false
      helperTextField.stringValue = DEFAULT_HELPER_TEXT
      helperTextField.font = NSFont.systemFont (ofSize: NSFont.smallSystemFontSize)
      helperView.addLastHelperView (helperTextField)
    }
  }

  //····················································································································

  final internal func installZoomToFitButton () {
    if self.mZoomToFitButton == nil, let helperView = optionalHelperView () {
      let r = NSRect (x: 0.0, y: 0.0, width: 100.0, height: 20.0)
      let zoomToFitButton = NSButton (frame: r)
      self.mZoomToFitButton = zoomToFitButton
      zoomToFitButton.font = NSFont.systemFont (ofSize: NSFont.smallSystemFontSize)
      zoomToFitButton.title = "Zoom to Fit"
      zoomToFitButton.bezelStyle = .roundRect
      zoomToFitButton.action = #selector (EBGraphicView.setZoomToFitButton(_:))
      zoomToFitButton.target = self
      helperView.addHelperView (zoomToFitButton)
    }
  }

  //····················································································································

  final internal func installZoomPopUpButton (_ inScrollView : EBScrollView) {
    if self.mZoomPopUpButton == nil, let helperView = optionalHelperView () {
      let r = NSRect (x: 0.0, y: 0.0, width: 70.0, height: 20.0)
      let zoomPopUpButton = NSPopUpButton (frame: r, pullsDown: true)
      self.mZoomPopUpButton = zoomPopUpButton
      zoomPopUpButton.font = NSFont.systemFont (ofSize: NSFont.smallSystemFontSize)
      zoomPopUpButton.autoenablesItems = false
      zoomPopUpButton.bezelStyle = .roundRect
      if let popUpButtonCell = zoomPopUpButton.cell as? NSPopUpButtonCell {
        popUpButtonCell.arrowPosition = .arrowAtBottom
      }
      zoomPopUpButton.isBordered = true
      zoomPopUpButton.menu?.addItem (
        withTitle:"\(Int (self.actualScale * 100.0)) %",
        action:nil,
        keyEquivalent:""
      )
      self.addPopupButtonItemForZoom (10, inScrollView)
      self.addPopupButtonItemForZoom (25, inScrollView)
      self.addPopupButtonItemForZoom (50, inScrollView)
      self.addPopupButtonItemForZoom (75, inScrollView)
      self.addPopupButtonItemForZoom (100, inScrollView)
      self.addPopupButtonItemForZoom (150, inScrollView)
      self.addPopupButtonItemForZoom (200, inScrollView)
      self.addPopupButtonItemForZoom (250, inScrollView)
      self.addPopupButtonItemForZoom (400, inScrollView)
      self.addPopupButtonItemForZoom (500, inScrollView)
      self.addPopupButtonItemForZoom (600, inScrollView)
      self.addPopupButtonItemForZoom (800, inScrollView)
      self.addPopupButtonItemForZoom (1_000, inScrollView)
      self.addPopupButtonItemForZoom (1_200, inScrollView)
      self.addPopupButtonItemForZoom (1_500, inScrollView)
      self.addPopupButtonItemForZoom (1_700, inScrollView)
      self.addPopupButtonItemForZoom (2_000, inScrollView)
      self.addPopupButtonItemForZoom (2_500, inScrollView)
      self.addPopupButtonItemForZoom (3_000, inScrollView)
      self.addPopupButtonItemForZoom (3_500, inScrollView)
      self.addPopupButtonItemForZoom (4_000, inScrollView)
      self.addPopupButtonItemForZoom (5_000, inScrollView)
      self.addPopupButtonItemForZoom (8_000, inScrollView)
      self.addPopupButtonItemForZoom (10_000, inScrollView)
      self.addPopupButtonItemForZoom (15_000, inScrollView)
      self.addPopupButtonItemForZoom (20_000, inScrollView)
      helperView.addHelperView (zoomPopUpButton)
    }
  }

  //····················································································································

  final private func buildXYHelperWindow () -> NSWindow {
    let window = NSWindow (contentRect: NSRect (), styleMask: .borderless, backing: .buffered, defer: false)
    window.backgroundColor = NSColor.clear
    window.isOpaque = false
    window.isExcludedFromWindowsMenu = true
    window.orderFront (nil)
    let view = EBHelperViewWithBackground (frame: NSRect ())
    window.contentView = view
  //--- X
    let xPlacard = NSTextField (frame: NSRect ())
    xPlacard.isBezeled = false
    xPlacard.isBordered = false
    xPlacard.drawsBackground = true
    xPlacard.textColor = XY_WINDOW_TEXT_COLOR
    xPlacard.backgroundColor = XY_WINDOW_BACKGROUND_COLOR
    xPlacard.isEnabled = true
    xPlacard.isEditable = false
    xPlacard.font = NSFont.systemFont (ofSize: NSFont.smallSystemFontSize)
    view.addSubview (xPlacard)
  //--- Y
    let yPlacard = NSTextField (frame: NSRect ())
    yPlacard.isBezeled = false
    yPlacard.isBordered = false
    yPlacard.drawsBackground = true
    yPlacard.textColor = XY_WINDOW_TEXT_COLOR
    yPlacard.backgroundColor = XY_WINDOW_BACKGROUND_COLOR
    yPlacard.isEnabled = true
    yPlacard.isEditable = false
    yPlacard.font = NSFont.systemFont (ofSize: NSFont.smallSystemFontSize)
    view.addSubview (yPlacard)
  //---
    return window
  }

  //····················································································································

  final internal func updateXYHelperWindow (mouseLocationInView inLocationInView : NSPoint) {
    let commandKey = NSEvent.modifierFlags.contains (.command)
    if commandKey, let myWindow = self.window, self.visibleRect.contains (inLocationInView) {
      let xyWindow : NSWindow
      if let window = self.mXYwindow {
        xyWindow = window
      }else{
        xyWindow = buildXYHelperWindow ()
        self.mXYwindow = xyWindow
      }
      if let view = xyWindow.contentView,
         view.subviews.count == 2,
         let placardX = view.subviews [0] as? NSTextField,
         let placardY = view.subviews [1] as? NSTextField {
        placardX.stringValue = "X = " + stringFrom (valueInCocoaUnit: inLocationInView.x, displayUnit: self.mXPlacardUnit)
        placardY.stringValue = "Y = " + stringFrom (valueInCocoaUnit: inLocationInView.y, displayUnit: self.mYPlacardUnit)
        placardX.sizeToFit ()
        placardY.sizeToFit ()
        let w = max (placardX.frame.size.width, placardY.frame.size.width)
        placardY.frame.origin.x = XY_WINDOW_MARGIN
        placardY.frame.origin.y = XY_WINDOW_MARGIN
        placardY.frame.size.width = w
        placardX.frame.size.width = w
        placardX.frame.origin.x = XY_WINDOW_MARGIN
        placardX.frame.origin.y = placardY.frame.maxY
        let s = NSSize (width: w + XY_WINDOW_MARGIN * 2.0, height: placardX.frame.maxY + XY_WINDOW_MARGIN)
        view.frame.size = s
        let locationInWindow = self.convert (inLocationInView, to: nil)
        let rScreen = myWindow.convertToScreen (NSRect (origin: locationInWindow, size: NSSize ()))
        var frameOrigin = rScreen.origin
        frameOrigin.x -= view.frame.size.width + canariUnitToCocoa (self.mGridStepInCanariUnit) * self.actualScale + 5.0
        frameOrigin.y -= view.frame.size.height / 2.0
        xyWindow.setFrameOrigin (frameOrigin)
        xyWindow.setContentSize (s)
      }else{
        self.removeXYHelperWindow ()
      }
    }else{
      self.removeXYHelperWindow ()
    }
  }

  //····················································································································

  final internal func removeXYHelperWindow () {
    self.mXYwindow?.orderOut (nil)
    self.mXYwindow = nil
  }

  //····················································································································
  // Live scrolling notification is used for updating XY placards
  //····················································································································

  final private func installLiveScrollingNotification () {
    if let scrollView = self.enclosingScrollView {
      let nc = NotificationCenter.default
      nc.addObserver (
        self,
        selector: #selector (EBGraphicView.performLiveScrolling(_:)),
        name: NSScrollView.didLiveScrollNotification,
        object: scrollView
      )
    }
  }

  //····················································································································

  @objc final private func performLiveScrolling (_ inNotification : Notification) {
    if let myWindow = self.window {
      let mouseLocationInScreen = NSEvent.mouseLocation
    //--- Note: NSWindow.convertPoint (fromScreen:) is available from 10.12
    //   So we use NSWindow.convertFromScreen for NSRect (available from 10.7)
      let rectInScreen = NSRect (origin: mouseLocationInScreen, size: NSSize ())
      let rectInWindow = myWindow.convertFromScreen (rectInScreen)
      let mouseLocationInView = self.convert (rectInWindow.origin, from: nil)
      let locationOnGridInView = mouseLocationInView.aligned (onGrid: canariUnitToCocoa (self.arrowKeyMagnitude))
      self.updateXYHelperWindow (mouseLocationInView: locationOnGridInView)
    }
  }

  //····················································································································

  final func defaultHelperString (with inUnalignedMouseLocationInView : NSPoint, _ inModifierFlags : NSEvent.ModifierFlags) -> String {
    let modifierFlagsContainsControl = inModifierFlags.contains (.control)
    let modifierFlagsContainsShift = inModifierFlags.contains (.shift)
    let modifierFlagsContainsOption = inModifierFlags.contains (.option)
    let (possibleObjectIndex, _) = self.indexOfFrontObject (at: inUnalignedMouseLocationInView)
    var helperString = DEFAULT_HELPER_TEXT
    switch (modifierFlagsContainsControl, modifierFlagsContainsShift, modifierFlagsContainsOption) {
    case (true, true, false) : // Ctrl Key On, shift, no option -> Zoom region
      helperString = "CONTROL + SHIFT: mouse down starts a zoom region"
    case (true, false, false) : // Ctrl Key On, no shift -> Contextual click
      if let _ = self.mPopulateContextualMenuClosure? (inUnalignedMouseLocationInView.canariPoint) {
        helperString = "CONTROL: mouse down shows a contextual menu"
      }
    case (false, true, false) : // Shift Key
      helperString = "SHIFT: mouse down complements selection of objects intersecting selection rectangle"
    case (_, _, true) : // Option Key On
      if let _ = self.pasteboardType {
        helperString = "OPTION: mouse down starts duplication of selected objects"
      }else if let s = self.mHelperStringForOptionModifier {
        helperString = s
      }
    case (false, false, false) : // No Modifier Key
      if let objectIndex = possibleObjectIndex {
       if self.objectWithIndexIsSelected (objectIndex) {
         helperString = "Mouse down inside a selected object starts a drag operation"
       }else{
         helperString = "Mouse down inside an unselected object selects it"
       }
      }else{
        helperString = "Mouse down outside any object starts a selection rectangle"
      }
    }
    if inModifierFlags.contains (.command) {
      helperString += ", COMMAND: displays XY location"
    }
    return helperString
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//   EBHelperViewWithBackground
//----------------------------------------------------------------------------------------------------------------------

private class EBHelperViewWithBackground : NSView {

  //····················································································································

  override func draw (_ inDirtyRect : NSRect) {
    var bp = NSBezierPath (roundedRect: self.bounds, xRadius: XY_WINDOW_MARGIN, yRadius: XY_WINDOW_MARGIN)
    XY_WINDOW_BACKGROUND_COLOR.setFill ()
    bp.fill ()
    bp = NSBezierPath (roundedRect: self.bounds.insetBy (dx: 0.5, dy: 0.5), xRadius: XY_WINDOW_MARGIN, yRadius: XY_WINDOW_MARGIN)
    bp.lineWidth = 1.0
    XY_WINDOW_TEXT_COLOR.setStroke ()
    bp.stroke ()
  }

  //····················································································································

  override var isOpaque : Bool { return false }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
