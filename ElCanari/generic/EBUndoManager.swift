//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

// http://nshipster.com/nsundomanager/

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class EBUndoManager : UndoManager, EBUserClassNameProtocol {

  //····················································································································
  //    init
  //····················································································································

  override init () {
    super.init ()
    noteObjectAllocation (self)
  }

  //····················································································································
  //    deinit
  //····················································································································

  deinit {
    noteObjectDeallocation (String (describing: type(of: self)))
  }

  //····················································································································
  //    registerUndoWithTarget
  //····················································································································

  override func registerUndo (withTarget target:Any, selector:Selector, object anObject:Any!) {
    super.registerUndo (withTarget: target, selector:selector, object:anObject)
    if logEvents () {
      appendToTransientEventLog ("registerUndoWithTarget (\(isUndoRegistrationEnabled), target \(target), selector \"\(selector)\", object \"\(String(describing: anObject))\"\n")
    }
  }

  //····················································································································
  //    beginUndoGrouping
  //····················································································································

  override func beginUndoGrouping () {
    if logEvents () {
      appendToTransientEventLog ("beginUndoGrouping\n")
    }
    super.beginUndoGrouping ()
  }

  //····················································································································
  //    endUndoGrouping
  //····················································································································

  override func endUndoGrouping () {
    super.endUndoGrouping ()
    if logEvents () {
      appendToTransientEventLog ("endUndoGrouping\n")
    }
  }

  //····················································································································
  //    disableUndoRegistration
  //····················································································································

  override func disableUndoRegistration () {
    if logEvents () {
      appendToTransientEventLog ("disableUndoRegistration\n")
    }
    super.disableUndoRegistration ()
  }

  //····················································································································
  //    enableUndoRegistration
  //····················································································································

  override func enableUndoRegistration () {
    super.enableUndoRegistration ()
    if logEvents () {
      appendToTransientEventLog ("enableUndoRegistration\n")
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
