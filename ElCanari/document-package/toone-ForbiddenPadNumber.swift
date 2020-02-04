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
    inOldValue?.padNumber_property.removeEBObserversFrom (&self.mObserversOf_padNumber) // Stored property
  //--- Add observers to added objects
    self.mInternalValue?.padNumber_property.addEBObserversFrom (&self.mObserversOf_padNumber) // Stored property
  }

  //····················································································································
  //   Observers of 'padNumber' stored property
  //····················································································································

  private var mObserversOf_padNumber = EBWeakEventSet ()

  //····················································································································

  var padNumber_property_selection : EBSelection <Int?> {
    if let model = self.propval {
      switch (model.padNumber_property_selection) {
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

  //····················································································································

  final func addEBObserverOf_padNumber (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_padNumber.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
       v?.padNumber_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_padNumber (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_padNumber.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.padNumber_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································

  final func addEBObserversOf_padNumber_toElementsOfSet (_ inSet : Set<ForbiddenPadNumber>) {
    for managedObject in inSet {
      self.mObserversOf_padNumber.apply { (_ observer : EBEvent) in
        managedObject.padNumber_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_padNumber_fromElementsOfSet (_ inSet : Set<ForbiddenPadNumber>) {
    self.mObserversOf_padNumber.apply { (_ observer : EBEvent) in
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.padNumber_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    TransientObject ForbiddenPadNumber
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class TransientObject_ForbiddenPadNumber : ReadOnlyObject_ForbiddenPadNumber {

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
      switch dataProvider.prop {
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

  override var prop : EBSelection < ForbiddenPadNumber? > {
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
      switch model.prop {
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

  override var prop : EBSelection < ForbiddenPadNumber? > {
    if let model = self.mModel {
      return model.prop
    }else{
      return .empty
    }
  }

  //····················································································································

  override var propval : ForbiddenPadNumber? {
    if let model = self.mModel {
      switch model.prop {
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

final class StoredObject_ForbiddenPadNumber : ReadWriteObject_ForbiddenPadNumber, EBSignatureObserverProtocol {

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

  weak var ebUndoManager : EBUndoManager? = nil // SOULD BE WEAK

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
        switch self.prop {
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
    self.ebUndoManager?.registerUndo (withTarget: self, selector:#selector(performUndo(_:)), object: inOldValue)
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

  @objc func performUndo (_ oldValue : ForbiddenPadNumber?) {
    self.mInternalValue = oldValue
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

  override var prop : EBSelection < ForbiddenPadNumber? > {
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

