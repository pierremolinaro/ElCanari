//
//  AutoLayoutAngleCircularSlider.swift
//  ElCanari
//
//  Created by Pierre Molinaro on 15/06/2021.
//
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------
//   AutoLayoutAngleCircularSlider
//----------------------------------------------------------------------------------------------------------------------

final class AutoLayoutAngleCircularSlider : NSSlider, EBUserClassNameProtocol {

  //····················································································································

  init () {
    super.init (frame: NSRect ())
    noteObjectAllocation (self)
    self.translatesAutoresizingMaskIntoConstraints = false

    self.minValue = 0.0
    self.maxValue = 360.0

    self.controlSize = .small
    self.sliderType = .circular
  }

  //····················································································································

  required init? (coder inCoder : NSCoder) {
    fatalError ("init(coder:) has not been implemented")
  }

  //····················································································································

  deinit {
    noteObjectDeallocation (self)
  }

  //····················································································································

  override func ebCleanUp () {
    self.mAngleController?.unregister ()
    self.mAngleController = nil
    super.ebCleanUp ()
  }

  //····················································································································

  override func sendAction (_ action : Selector?, to : Any?) -> Bool {
    let value = (450_000 - Int ((self.doubleValue * 1000.0).rounded ())) % 360_000
    _ = self.mAngleController?.updateModel (
      withCandidateValue: value,
      windowForSheet: self.window
    )
    let r = super.sendAction (action, to: to)
    flushOutletEvents ()
    return r
  }

  //····················································································································
  //  doubleValue binding
  //····················································································································

  fileprivate func updateDoubleValue (_ object : EBReadOnlyProperty_Double) {
    switch object.selection {
    case .empty, .multiple :
      self.stringValue = "-"
      self.enable (fromValueBinding: false)
    case .single (let propertyValue) :
      self.doubleValue = propertyValue
      self.enable (fromValueBinding: true)
    }
  }

  //····················································································································
  //  intValue binding
  //····················································································································

  fileprivate func updateAngleValue (_ object : EBReadOnlyProperty_Int) {
    switch object.selection {
    case .empty, .multiple :
      self.enable (fromValueBinding: false)
      self.doubleValue = 0.0
    case .single (let propertyValue) :
      self.doubleValue = Double ((90_000 + 360_000 - propertyValue) % 360_000) / 1000.0
      self.enable (fromValueBinding: true)
    }
  }

  //····················································································································

  private var mAngleController : EBGenericReadWritePropertyController <Int>? = nil

  //····················································································································

  final func bind_angle (_ inObject : EBReadWriteProperty_Int, sendContinously : Bool) -> Self {
    self.mAngleController = EBGenericReadWritePropertyController <Int> (
      observedObject: inObject,
      callBack: { [weak self] in self?.updateAngleValue (inObject) }
    )
    self.isContinuous = sendContinously
    return self
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
