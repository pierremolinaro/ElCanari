//----------------------------------------------------------------------------------------------------------------------
//
//  AutoLayoutColorWell.swift
//
//  Created by Pierre Molinaro on 10/02/2021.
//
//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------

class AutoLayoutColorWell : NSColorWell, EBUserClassNameProtocol {

  //····················································································································

  init () {
    super.init (frame: NSRect ())
    noteObjectAllocation (self)
    self.target = self
    self.action = #selector (Self.action(_:))
  }

  //····················································································································

  required init? (coder : NSCoder) {
    super.init (coder:coder)
    noteObjectAllocation (self)
  }

  //····················································································································

  deinit {
    noteObjectDeallocation (self)
  }

  //····················································································································

  override func ebCleanUp () {
    self.mColorController?.unregister ()
    self.mColorController = nil
    super.ebCleanUp ()
  }

  //····················································································································

  @objc func action (_ sender : AutoLayoutColorWell) {
    _ = self.mColorController?.updateModel(withCandidateValue: self.color, windowForSheet: self.window)
  }


  //····················································································································

  override var intrinsicContentSize : NSSize {
    return NSSize (width: 40, height: 20)
  }

  //····················································································································
  //  color binding
  //····················································································································

  fileprivate func updateColor (from inObject : EBReadOnlyProperty_NSColor) {
    switch inObject.selection {
    case .empty, .multiple :
      self.enable (fromValueBinding: false)
    case .single (let v) :
      self.enable (fromValueBinding: true)
      self.color = v
    }
  }

  //····················································································································

  private var mColorController : EBGenericReadWritePropertyController <NSColor>? = nil
  var mSendContinously = false

  //····················································································································

  func bind_color (_ inObject : EBReadWriteProperty_NSColor, sendContinously : Bool) -> Self {
    NSColorPanel.shared.showsAlpha = true
    self.mSendContinously = sendContinously
//    self.mColorController = Controller_EBColorWell_color (object:object, outlet:self)
    self.mColorController = EBGenericReadWritePropertyController <NSColor> (
      observedObject: inObject,
      callBack: { [weak self] in self?.updateColor (from: inObject)  }
    )
    return self
  }

//  func unbind_color () {
//    self.mColorController?.unregister ()
//    self.mColorController = nil
//  }

}

//----------------------------------------------------------------------------------------------------------------------
//   Controller_EBColorWell_color
//----------------------------------------------------------------------------------------------------------------------

//final class Controller_EBColorWell_color : EBReadOnlyPropertyController {
//
//  private let mObject : EBReadWriteProperty_NSColor
//  private let mOutlet : AutoLayoutColorWell
//
//  //····················································································································
//
//  init (object : EBReadWriteProperty_NSColor, outlet : AutoLayoutColorWell) {
//    mObject = object
//    mOutlet = outlet
//    super.init (observedObjects:[object], callBack: { outlet.updateColor (object) } )
//    self.mOutlet.target = self
//    self.mOutlet.action = #selector(Controller_EBColorWell_color.action(_:))
//  }
//
//  //····················································································································
//
//  override func unregister () {
//    super.unregister ()
//    self.mOutlet.target = nil
//    self.mOutlet.action = nil
//  }
//
//  //····················································································································
//
//  @objc func action (_ sender : AutoLayoutColorWell) {
//    _ = self.mObject.validateAndSetProp (self.mOutlet.color, windowForSheet: sender.window)
//  }
//
//  //····················································································································
//}

//----------------------------------------------------------------------------------------------------------------------
