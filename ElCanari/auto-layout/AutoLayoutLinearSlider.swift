//
//  AutoLayoutLinearSlider.swift
//  ElCanari
//
//  Created by Pierre Molinaro on 06/02/2021.
//
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   AutoLayoutLinearSlider
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class AutoLayoutLinearSlider : NSSlider, EBUserClassNameProtocol {

  //····················································································································

  init (min inMin : Int, max inMax : Int, ticks inMarkCount : Int) {
    super.init (frame: NSRect ())
    noteObjectAllocation (self)
    self.translatesAutoresizingMaskIntoConstraints = false

    self.minValue = Double (inMin)
    self.maxValue = Double (inMax)
    self.numberOfTickMarks = inMarkCount
    self.controlSize = .small
    self.font = NSFont.systemFont (ofSize: NSFont.systemFontSize (for: self.controlSize))
    self.sliderType = .linear
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
    self.mDoubleValueController?.unregister ()
    self.mDoubleValueController = nil
    self.mIntValueController?.unregister ()
    self.mIntValueController = nil
    super.ebCleanUp ()
  }

  //····················································································································

  override func sendAction (_ action : Selector?, to : Any?) -> Bool {
    _ = self.mDoubleValueController?.updateModel (
      withCandidateValue: self.doubleValue,
      windowForSheet: self.window
    )
    _ = self.mIntValueController?.updateModel (
      withCandidateValue: Int (self.doubleValue.rounded ()),
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

  private var mDoubleValueController : EBGenericReadWritePropertyController <Double>? = nil

  //····················································································································

  final func bind_doubleValue (_ inObject : EBReadWriteProperty_Double, sendContinously : Bool) -> Self {
    self.mDoubleValueController = EBGenericReadWritePropertyController <Double> (
      observedObject: inObject,
      callBack: { [weak self] in self?.updateDoubleValue (inObject) }
    )
    self.isContinuous = sendContinously
    return self
  }

  //····················································································································
  //  intValue binding
  //····················································································································

  fileprivate func updateIntValue (_ object : EBReadOnlyProperty_Int) {
    switch object.selection {
    case .empty, .multiple :
      self.stringValue = "-"
      self.enable (fromValueBinding: false)
    case .single (let propertyValue) :
      self.doubleValue = Double (propertyValue)
      self.enable (fromValueBinding: true)
    }
  }

  //····················································································································

  private var mIntValueController : EBGenericReadWritePropertyController <Int>? = nil

  //····················································································································

  final func bind_intValue (_ inObject : EBReadWriteProperty_Int, sendContinously : Bool) -> Self {
    self.mIntValueController = EBGenericReadWritePropertyController <Int> (
      observedObject: inObject,
      callBack: { [weak self] in self?.updateIntValue (inObject) }
    )
    self.isContinuous = sendContinously
    return self
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
