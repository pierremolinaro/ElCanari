//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

extension EBView {

 //····················································································································

  fileprivate func addPopupButtonItemForZoom (_ inZoom : Int) {
    if let zoomPopUpButton = self.mZoomPopUpButton {
      zoomPopUpButton.menu?.addItem (withTitle: ("\(inZoom) %"), action:#selector (EBView.setZoomFromPopUpButton(_:)), keyEquivalent: "")
      zoomPopUpButton.lastItem?.target = self
      zoomPopUpButton.lastItem?.tag = inZoom
    }
  }

  //····················································································································

  @objc func setZoomFromPopUpButton (_ inSender : NSMenuItem) {
    scaleToZoom (inSender.tag, self.horizontalFlip, self.verticalFlip)
    self.mZoom = inSender.tag
    self.mZoomController?.updateModel (self)
  }

  //····················································································································

  internal func installPlacards () {
    if let scrollView = self.enclosingScrollView as? EBScrollViewWithPlacards {
      self.installZoomPopUpButton (scrollView)
      self.installXYplacards (scrollView)
    }
  }

  //····················································································································

  internal func installZoomPopUpButton (_ inScrollView : EBScrollViewWithPlacards) {
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
        withTitle:"\(Int (self.actualScale () * 100.0)) %",
        action:nil,
        keyEquivalent:""
      )
      self.addPopupButtonItemForZoom (50)
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
      zoomPopUpButton.menu?.addItem (withTitle:"Fit to Window", action:#selector (EBView.setZoomFromPopUpButton(_:)), keyEquivalent:"")
      zoomPopUpButton.lastItem?.target = self
      zoomPopUpButton.lastItem?.tag = 0
      inScrollView.addPlacard (zoomPopUpButton)
    }
  }

  //····················································································································

  private func installXYplacards (_ inScrollView : EBScrollViewWithPlacards) {
    if self.mXPlacard == nil {
      let r = NSRect (x: 0.0, y: 0.0, width: 90.0, height: 20.0)
      let xPlacard = NSTextField (frame: r)
      self.mXPlacard = xPlacard
      xPlacard.font = NSFont.systemFont (ofSize: NSFont.smallSystemFontSize)
      xPlacard.isBordered = false
      inScrollView.addPlacard (xPlacard)
    }
    if self.mYPlacard == nil {
      let r = NSRect (x: 0.0, y: 0.0, width: 90.0, height: 20.0)
      let yPlacard = NSTextField (frame: r)
      self.mYPlacard = yPlacard
      yPlacard.font = NSFont.systemFont (ofSize: NSFont.smallSystemFontSize)
      yPlacard.isBordered = false
      inScrollView.addPlacard (yPlacard)
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

  internal func removePlacards () {
    if let scrollView = self.enclosingScrollView as? EBScrollViewWithPlacards {
      scrollView.removePlacard (self.mZoomPopUpButton)
      self.mZoomPopUpButton = nil
      scrollView.removePlacard (self.mXPlacard)
      self.mXPlacard = nil ;
      scrollView.removePlacard (self.mYPlacard)
      self.mYPlacard = nil
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————