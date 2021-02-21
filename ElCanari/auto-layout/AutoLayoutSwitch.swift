//
//  AutoLayoutSwitch.swift
//  ElCanari
//
//  Created by Pierre Molinaro on 06/02/2021.
//
//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------

class AutoLayoutSwitch : NSButton, EBUserClassNameProtocol {

  //····················································································································

  init (title inTitle : String) {
    super.init (frame: NSRect ())
    noteObjectAllocation (self)
    self.translatesAutoresizingMaskIntoConstraints = false
    self.setButtonType (.switch)
    self.title = inTitle
    self.controlSize = .small
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
    self.mValueController?.unregister ()
    self.mValueController = nil
    super.ebCleanUp ()
  }

  //····················································································································

  override func sendAction (_ action : Selector?, to : Any?) -> Bool {
    _ = self.mValueController?.updateModel (withCandidateValue: self.state == NSControl.StateValue.on, windowForSheet: self.window)
    return super.sendAction (action, to: to)
  }

  //····················································································································
  //  value binding
  //····················································································································

  fileprivate func updateValue (from inObject : EBReadOnlyProperty_Bool) {
    switch inObject.selection {
    case .empty :
      self.state = NSControl.StateValue.off
      self.enable (fromValueBinding: false)
    case .multiple :
      self.allowsMixedState = true
      self.state = NSControl.StateValue.mixed
      self.enable (fromValueBinding: true)
    case .single (let v) :
      self.allowsMixedState = false
      self.state = v ? NSControl.StateValue.on : NSControl.StateValue.off
      self.enable (fromValueBinding: true)
    }
  }

  //····················································································································

  fileprivate var mValueController : EBGenericReadWritePropertyController <Bool>? = nil

  //····················································································································

  func bind_value (_ inObject : EBReadWriteProperty_Bool) -> Self {
    self.mValueController = EBGenericReadWritePropertyController <Bool> (
      observedObject: inObject,
      callBack: { [weak self] in self?.updateValue (from: inObject) }
    )
    return self
  }

  //····················································································································
}

//----------------------------------------------------------------------------------------------------------------------
