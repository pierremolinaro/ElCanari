//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    ReadOnlyObject_ForbiddenPadNumber
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class ReadOnlyObject_ForbiddenPadNumber : ReadOnlyAbstractObjectProperty <ForbiddenPadNumber> {

  //····················································································································

  internal override func notifyModelDidChangeFrom (oldValue inOldValue : ForbiddenPadNumber?) {
    super.notifyModelDidChangeFrom (oldValue: inOldValue)
  //--- Remove observers from removed objects
    if let oldValue = inOldValue {
      oldValue.padNumber_property.removeEBObserver (self.padNumber_property) // Stored property
    }
  //--- Add observers to added objects
    if let newValue = self.mInternalValue {
      newValue.padNumber_property.addEBObserver (self.padNumber_property) // Stored property
    }
  }

  //····················································································································
  //   Observers of 'padNumber' stored property
  //····················································································································

  final let padNumber_property = EBGenericTransientProperty <Int?> ()

  //····················································································································
  //   INIT
  //····················································································································

  override init () {
    super.init ()
  //--- Configure padNumber simple stored property
    self.padNumber_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.padNumber_property.selection {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single (let v) :
          return .single (v)
        }
      }else{
        return .single (nil)
      }
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//   TransientObject ForbiddenPadNumber
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class TransientObject_ForbiddenPadNumber : ReadOnlyObject_ForbiddenPadNumber {

  //····················································································································
  //   Data provider
  //····················································································································

  private var mDataProvider : ReadOnlyObject_ForbiddenPadNumber? = nil
  private var mTransientKind : PropertyKind = .empty

  //····················································································································

  func setDataProvider (_ inProvider : ReadOnlyObject_ForbiddenPadNumber?) {
    if self.mDataProvider !== inProvider {
      self.mDataProvider?.detachClient (self)
      self.mDataProvider = inProvider
      self.mDataProvider?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newObject : ForbiddenPadNumber?
    if let dataProvider = self.mDataProvider {
      switch dataProvider.selection {
      case .empty :
        newObject = nil
        self.mTransientKind = .empty
      case .single (let v) :
        newObject = v
        self.mTransientKind = .single
       case .multiple :
        newObject = nil
        self.mTransientKind = .empty
      }
    }else{
      newObject = nil
      self.mTransientKind = .empty
    }
    self.mInternalValue = newObject
    super.notifyModelDidChange ()
  }

  //····················································································································

  override var selection : EBSelection < ForbiddenPadNumber? > {
    switch self.mTransientKind {
    case .empty :
      return .empty
    case .single :
      if let internalValue = self.mInternalValue {
        return .single (internalValue)
      }else{
        return .empty
      }
    case .multiple :
      return .multiple
    }
  }

  //····················································································································

  override var propval : ForbiddenPadNumber? { return self.mInternalValue }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    ReadWriteObject_ForbiddenPadNumber
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class ReadWriteObject_ForbiddenPadNumber : ReadOnlyObject_ForbiddenPadNumber {

  //····················································································································

  func setProp (_ inValue : ForbiddenPadNumber?) { } // Abstract method

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    Proxy: ProxyObject_ForbiddenPadNumber
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class ProxyObject_ForbiddenPadNumber : ReadWriteObject_ForbiddenPadNumber {

  //····················································································································

  private var mModel : ReadWriteObject_ForbiddenPadNumber? = nil

  //····················································································································

  func setModel (_ inModel : ReadWriteObject_ForbiddenPadNumber?) {
    if self.mModel !== inModel {
      self.mModel?.detachClient (self)
      self.mModel = inModel
      self.mModel?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newModel : ForbiddenPadNumber?
    if let model = self.mModel {
      switch model.selection {
      case .empty :
        newModel = nil
      case .single (let v) :
        newModel = v
       case .multiple :
        newModel = nil
      }
    }else{
      newModel = nil
    }
    self.mInternalValue = newModel
    super.notifyModelDidChange ()
  }

  //····················································································································

  override func setProp (_ inValue : ForbiddenPadNumber?) {
    self.mModel?.setProp (inValue)
  }

  //····················································································································

  override var selection : EBSelection < ForbiddenPadNumber? > {
    if let model = self.mModel {
      return model.selection
    }else{
      return .empty
    }
  }

  //····················································································································

  override var propval : ForbiddenPadNumber? {
    if let model = self.mModel {
      switch model.selection {
      case .empty, .multiple :
        return nil
      case .single (let v) :
        return v
      }
    }else{
      return nil
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    StoredObject_ForbiddenPadNumber
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class StoredObject_ForbiddenPadNumber : ReadWriteObject_ForbiddenPadNumber, EBSignatureObserverProtocol, EBObservableObjectProtocol {

 //····················································································································

  init (usedForSignature inUsedForSignature : Bool) {
    mUsedForSignature = inUsedForSignature
    super.init ()
  }

  //····················································································································
  //   Signature ?
  //····················································································································

  private let mUsedForSignature : Bool

  //····················································································································
  //   Undo manager
  //····················································································································

  weak final var ebUndoManager : EBUndoManager? = nil // SOULD BE WEAK

 //····················································································································
  //   Opposite relationship management
  //····················································································································

  private var mSetOppositeRelationship : Optional < (_ inManagedObject : ForbiddenPadNumber) -> Void > = nil
  private var mResetOppositeRelationship : Optional < (_ inManagedObject : ForbiddenPadNumber) -> Void > = nil

  //····················································································································

  func setOppositeRelationShipFunctions (setter inSetter : @escaping (_ inManagedObject : ForbiddenPadNumber) -> Void,
                                         resetter inResetter : @escaping (_ inManagedObject : ForbiddenPadNumber) -> Void) {
    self.mSetOppositeRelationship = inSetter
    self.mResetOppositeRelationship = inResetter
  }

  //····················································································································

  var mValueExplorer : NSButton? {
    didSet {
      if let unwrappedExplorer = self.mValueExplorer {
        switch self.selection {
        case .empty, .multiple :
          break ;
        case .single (let v) :
          updateManagedObjectToOneRelationshipDisplay (object: v, button: unwrappedExplorer)
        }
      }
    }
  }

 //····················································································································
  // Model will change
  //····················································································································

  override func notifyModelDidChangeFrom (oldValue inOldValue : ForbiddenPadNumber?) {
  //--- Register old value in undo manager
    self.ebUndoManager?.registerUndo (withTarget: self) { $0.mInternalValue = inOldValue }
  //---
    if let object = inOldValue {
      if self.mUsedForSignature {
        object.setSignatureObserver (observer: nil)
      }
      self.mResetOppositeRelationship? (object)
    }
  //---
    if let object = self.mInternalValue {
      if self.mUsedForSignature {
        object.setSignatureObserver (observer: self)
      }
      self.mSetOppositeRelationship? (object)
    }
  //---
    super.notifyModelDidChangeFrom (oldValue: inOldValue)
  }

  //····················································································································
  // Model did change
  //····················································································································

  override func notifyModelDidChange () {
  //--- Update explorer
    if let valueExplorer = self.mValueExplorer {
      updateManagedObjectToOneRelationshipDisplay (object: self.mInternalValue, button: valueExplorer)
    }
  //--- Notify observers
    self.postEvent ()
    self.clearSignatureCache ()
  //---
    super.notifyModelDidChange ()
  }

  //····················································································································

  override var selection : EBSelection < ForbiddenPadNumber? > {
    if let object = self.mInternalValue {
      return .single (object)
    }else{
      return .empty
    }
  }

  //····················································································································

  override func setProp (_ inValue : ForbiddenPadNumber?) { self.mInternalValue = inValue }

  //····················································································································

  override var propval : ForbiddenPadNumber? { return self.mInternalValue }

  //····················································································································
  //   signature
  //····················································································································

  private weak var mSignatureObserver : EBSignatureObserverProtocol? = nil // SOULD BE WEAK

  //····················································································································

  private var mSignatureCache : UInt32? = nil

  //····················································································································

  final func setSignatureObserver (observer inObserver : EBSignatureObserverProtocol?) {
    self.mSignatureObserver?.clearSignatureCache ()
    self.mSignatureObserver = inObserver
    inObserver?.clearSignatureCache ()
    self.clearSignatureCache ()
  }

  //····················································································································

  final func signature () -> UInt32 {
    let computedSignature : UInt32
    if let s = self.mSignatureCache {
      computedSignature = s
    }else{
      computedSignature = self.computeSignature ()
      self.mSignatureCache = computedSignature
    }
    return computedSignature
  }

  //····················································································································

  final private func computeSignature () -> UInt32 {
    var crc : UInt32 = 0
    if let object = self.mInternalValue {
      crc.accumulateUInt32 (object.signature ())
    }
    return crc
  }

  //····················································································································

  final func clearSignatureCache () {
    if self.mSignatureCache != nil {
      self.mSignatureCache = nil
      self.mSignatureObserver?.clearSignatureCache ()
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

