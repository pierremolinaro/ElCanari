//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

extension EBGraphicView {

 //····················································································································

  fileprivate func addPopupButtonItemForZoom (_ inZoom : Int) {
    if let zoomPopUpButton = self.mZoomPopUpButton {
      zoomPopUpButton.menu?.addItem (withTitle: ("\(inZoom) %"), action:#selector (EBGraphicView.setZoomFromPopUpButton(_:)), keyEquivalent: "")
      zoomPopUpButton.lastItem?.target = self
      zoomPopUpButton.lastItem?.tag = inZoom
    }
  }

  //····················································································································

  @objc fileprivate func setZoomFromPopUpButton (_ inSender : NSMenuItem) {
    if let scrollView = self.enclosingScrollView {
      self.applyZoom (inSender.tag)
      let actualZoom = Int ((scrollView.magnification * 100.0).rounded (.toNearestOrEven))
      self.mZoomController?.updateModel (self, actualZoom)
    }
  }

  //····················································································································

  internal func installPlacards () {
    if let scrollView = self.enclosingScrollView as? EBScrollView {
      self.installZoomPopUpButton (scrollView)
      self.installXYplacards (scrollView)
      self.installLiveScrollingNotification ()
    }
  }

  //····················································································································

  internal func installZoomPopUpButton (_ inScrollView : EBScrollView) {
    if self.mZoomPopUpButton == nil {
      let r = NSRect (x: 0.0, y: 0.0, width: 70.0, height: 20.0)
      let zoomPopUpButton = NSPopUpButton (frame:r, pullsDown:true)
      self.mZoomPopUpButton = zoomPopUpButton
      zoomPopUpButton.font = NSFont.systemFont (ofSize:NSFont.smallSystemFontSize)
      zoomPopUpButton.autoenablesItems = false
      zoomPopUpButton.bezelStyle = .shadowlessSquare
      if let popUpButtonCell = zoomPopUpButton.cell as? NSPopUpButtonCell {
        popUpButtonCell.arrowPosition = .arrowAtBottom
      }
      zoomPopUpButton.isBordered = false
      zoomPopUpButton.menu?.addItem (
        withTitle:"\(Int (self.actualScale * 100.0)) %",
        action:nil,
        keyEquivalent:""
      )
    //  self.addPopupButtonItemForZoom (50)
      self.addPopupButtonItemForZoom (100)
      self.addPopupButtonItemForZoom (150)
      self.addPopupButtonItemForZoom (200)
      self.addPopupButtonItemForZoom (250)
      self.addPopupButtonItemForZoom (400)
      self.addPopupButtonItemForZoom (500)
      self.addPopupButtonItemForZoom (600)
      self.addPopupButtonItemForZoom (800)
      self.addPopupButtonItemForZoom (1000)
      self.addPopupButtonItemForZoom (1200)
      self.addPopupButtonItemForZoom (1500)
      self.addPopupButtonItemForZoom (1700)
      self.addPopupButtonItemForZoom (2000)
      zoomPopUpButton.menu?.addItem (withTitle:"Fit to Window", action:#selector (EBGraphicView.setZoomFromPopUpButton(_:)), keyEquivalent:"")
      zoomPopUpButton.lastItem?.target = self
      zoomPopUpButton.lastItem?.tag = 0
      inScrollView.addPlacard (zoomPopUpButton)
    }
  }

  //····················································································································

  private func installXYplacards (_ inScrollView : EBScrollView) {
    if self.mXPlacard == nil {
      let r = NSRect (x: 0.0, y: 0.0, width: 90.0, height: 20.0)
      let xPlacard = NSTextField (frame: r)
      xPlacard.isBezeled = false
      xPlacard.isBordered = false
      xPlacard.drawsBackground = false
      xPlacard.isEnabled = true
      xPlacard.isEditable = false
      xPlacard.font = NSFont.systemFont (ofSize: NSFont.smallSystemFontSize)
      inScrollView.addPlacard (xPlacard)
      self.mXPlacard = xPlacard
    }
    if self.mYPlacard == nil {
      let r = NSRect (x: 0.0, y: 0.0, width: 90.0, height: 20.0)
      let yPlacard = NSTextField (frame: r)
      yPlacard.isBezeled = false
      yPlacard.isBordered = false
      yPlacard.drawsBackground = false
      yPlacard.isEnabled = true
      yPlacard.isEditable = false
      yPlacard.font = NSFont.systemFont (ofSize: NSFont.smallSystemFontSize)
      inScrollView.addPlacard (yPlacard)
      self.mYPlacard = yPlacard
    }
  }

  //····················································································································

  internal func updateXYplacards (_ inLocationInView : NSPoint) {
    let x = stringFrom (valueInCocoaUnit: inLocationInView.x, displayUnit: self.mXPlacardUnit)
    let y = stringFrom (valueInCocoaUnit: inLocationInView.y, displayUnit: self.mYPlacardUnit)
    self.mXPlacard?.stringValue = "X = " + x
    self.mYPlacard?.stringValue = "Y = " + y
  }

  //····················································································································

  internal func clearXYplacards () {
    self.mXPlacard?.stringValue = ""
    self.mYPlacard?.stringValue = ""
  }

  //····················································································································

//  internal func removePlacards () {
//    if let scrollView = self.enclosingScrollView as? EBScrollView {
//      scrollView.removePlacard (self.mZoomPopUpButton)
//      self.mZoomPopUpButton = nil
//      scrollView.removePlacard (self.mXPlacard)
//      self.mXPlacard = nil ;
//      scrollView.removePlacard (self.mYPlacard)
//      self.mYPlacard = nil
//    }
//  }

  //····················································································································
  // Live scrolling notification is used for updating XY placards
  //····················································································································

  private func installLiveScrollingNotification () {
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

  @objc private func performLiveScrolling (_ inNotification : Notification) {
    if let myWindow = self.window {
      let mouseLocationInScreen = NSEvent.mouseLocation
    //--- Note: NSWindow.convertPoint (fromScreen:) is available from 10.12
    //   So we use NSWindow.convertFromScreen for NSRect (available from 10.7)
      let rectInScreen = NSRect (origin: mouseLocationInScreen, size: NSSize ())
      let rectInWindow = myWindow.convertFromScreen (rectInScreen)
      let mouseLocationInView = self.convert (rectInWindow.origin, from: nil)
      let locationOnGridInView = mouseLocationInView.aligned (onGrid: canariUnitToCocoa (self.arrowKeyMagnitude))
      self.updateXYplacards (locationOnGridInView)
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————