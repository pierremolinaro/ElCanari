//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------
//    ReadOnlyObject_SymbolPinInstanceInDevice 
//----------------------------------------------------------------------------------------------------------------------

class ReadOnlyObject_SymbolPinInstanceInDevice : ReadOnlyAbstractObjectProperty <SymbolPinInstanceInDevice> {

  //····················································································································

  internal override func notifyModelDidChangeFrom (oldValue inOldValue : SymbolPinInstanceInDevice?) {
    super.notifyModelDidChangeFrom (oldValue: inOldValue)
  //--- Remove observers from removed objects
    inOldValue?.pinName_property.removeEBObserver (self.pinName_property) // Transient property
    inOldValue?.symbolName_property.removeEBObserver (self.symbolName_property) // Transient property
    inOldValue?.pinQualifiedName_property.removeEBObserver (self.pinQualifiedName_property) // Transient property
    inOldValue?.isConnected_property.removeEBObserver (self.isConnected_property) // Transient property
    inOldValue?.numberShape_property.removeEBObserver (self.numberShape_property) // Transient property
  //--- Add observers to added objects
    self.mInternalValue?.pinName_property.addEBObserver (self.pinName_property) // Transient property
    self.mInternalValue?.symbolName_property.addEBObserver (self.symbolName_property) // Transient property
    self.mInternalValue?.pinQualifiedName_property.addEBObserver (self.pinQualifiedName_property) // Transient property
    self.mInternalValue?.isConnected_property.addEBObserver (self.isConnected_property) // Transient property
    self.mInternalValue?.numberShape_property.addEBObserver (self.numberShape_property) // Transient property
  }

  //····················································································································
  //   init
  //····················································································································

  override init () {
    super.init ()
    self.pinName_property.mReadModelFunction = { [weak self] in self?.mInternalValue?.pinName_property.prop ?? .empty }
    self.symbolName_property.mReadModelFunction = { [weak self] in self?.mInternalValue?.symbolName_property.prop ?? .empty }
    self.pinQualifiedName_property.mReadModelFunction = { [weak self] in self?.mInternalValue?.pinQualifiedName_property.prop ?? .empty }
    self.isConnected_property.mReadModelFunction = { [weak self] in self?.mInternalValue?.isConnected_property.prop ?? .empty }
    self.numberShape_property.mReadModelFunction = { [weak self] in self?.mInternalValue?.numberShape_property.prop ?? .empty }
  }

  //····················································································································
  //   Observer of 'pinName' transient property
  //····················································································································

  let pinName_property = EBTransientProperty_String ()

  var pinName_property_selection : EBSelection <String> {
    switch (self.pinName_property.prop) {
    case .empty :
      return .empty
    case .multiple :
      return .multiple
    case .single (let v) :
      return .single (v)
    }
  }

  //····················································································································
  //   Observer of 'symbolName' transient property
  //····················································································································

  let symbolName_property = EBTransientProperty_String ()

  var symbolName_property_selection : EBSelection <String> {
    switch (self.symbolName_property.prop) {
    case .empty :
      return .empty
    case .multiple :
      return .multiple
    case .single (let v) :
      return .single (v)
    }
  }

  //····················································································································
  //   Observer of 'pinQualifiedName' transient property
  //····················································································································

  let pinQualifiedName_property = EBTransientProperty_PinQualifiedNameStruct ()

  var pinQualifiedName_property_selection : EBSelection <PinQualifiedNameStruct> {
    switch (self.pinQualifiedName_property.prop) {
    case .empty :
      return .empty
    case .multiple :
      return .multiple
    case .single (let v) :
      return .single (v)
    }
  }

  //····················································································································
  //   Observer of 'isConnected' transient property
  //····················································································································

  let isConnected_property = EBTransientProperty_Bool ()

  var isConnected_property_selection : EBSelection <Bool> {
    switch (self.isConnected_property.prop) {
    case .empty :
      return .empty
    case .multiple :
      return .multiple
    case .single (let v) :
      return .single (v)
    }
  }

  //····················································································································
  //   Observer of 'numberShape' transient property
  //····················································································································

  let numberShape_property = EBTransientProperty_EBShape ()

  var numberShape_property_selection : EBSelection <EBShape> {
    switch (self.numberShape_property.prop) {
    case .empty :
      return .empty
    case .multiple :
      return .multiple
    case .single (let v) :
      return .single (v)
    }
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//    TransientObject SymbolPinInstanceInDevice
//----------------------------------------------------------------------------------------------------------------------

class TransientObject_SymbolPinInstanceInDevice : ReadOnlyObject_SymbolPinInstanceInDevice {

  //····················································································································
  //   Data provider
  //····················································································································

  private var mDataProvider : ReadOnlyObject_SymbolPinInstanceInDevice? = nil
  private var mTransientKind : PropertyKind = .empty

  //····················································································································

  func setDataProvider (_ inProvider : ReadOnlyObject_SymbolPinInstanceInDevice?) {
    if self.mDataProvider !== inProvider {
      self.mDataProvider?.detachClient (self)
      self.mDataProvider = inProvider
      self.mDataProvider?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newObject : SymbolPinInstanceInDevice? 
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

  override var prop : EBSelection < SymbolPinInstanceInDevice? > {
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

  override var propval : SymbolPinInstanceInDevice? { return self.mInternalValue }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//    ReadWriteObject_SymbolPinInstanceInDevice
//----------------------------------------------------------------------------------------------------------------------

class ReadWriteObject_SymbolPinInstanceInDevice : ReadOnlyObject_SymbolPinInstanceInDevice {

  //····················································································································
 
  func setProp (_ inValue : SymbolPinInstanceInDevice?) { } // Abstract method
  
  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//    Proxy: ProxyObject_SymbolPinInstanceInDevice
//----------------------------------------------------------------------------------------------------------------------

final class ProxyObject_SymbolPinInstanceInDevice : ReadWriteObject_SymbolPinInstanceInDevice {

  //····················································································································

  private var mModel : ReadWriteObject_SymbolPinInstanceInDevice? = nil

  //····················································································································

  func setModel (_ inModel : ReadWriteObject_SymbolPinInstanceInDevice?) {
    if self.mModel !== inModel {
      self.mModel?.detachClient (self)
      self.mModel = inModel
      self.mModel?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newModel : SymbolPinInstanceInDevice?
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

  override func setProp (_ inValue : SymbolPinInstanceInDevice?) {
    self.mModel?.setProp (inValue)
  }

  //····················································································································

  override var prop : EBSelection < SymbolPinInstanceInDevice? > {
    if let model = self.mModel {
      return model.prop
    }else{
      return .empty
    }
  }

  //····················································································································

  override var propval : SymbolPinInstanceInDevice? {
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

//----------------------------------------------------------------------------------------------------------------------
//    StoredObject_SymbolPinInstanceInDevice 
//----------------------------------------------------------------------------------------------------------------------

final class StoredObject_SymbolPinInstanceInDevice : ReadWriteObject_SymbolPinInstanceInDevice, EBSignatureObserverProtocol, EBObservableObjectProtocol {

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

  private var mSetOppositeRelationship : Optional < (_ inManagedObject : SymbolPinInstanceInDevice) -> Void > = nil
  private var mResetOppositeRelationship : Optional < (_ inManagedObject : SymbolPinInstanceInDevice) -> Void > = nil

  //····················································································································

  func setOppositeRelationShipFunctions (setter inSetter : @escaping (_ inManagedObject : SymbolPinInstanceInDevice) -> Void,
                                         resetter inResetter : @escaping (_ inManagedObject : SymbolPinInstanceInDevice) -> Void) {
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

  override func notifyModelDidChangeFrom (oldValue inOldValue : SymbolPinInstanceInDevice?) {
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

  override var prop : EBSelection < SymbolPinInstanceInDevice? > {
    if let object = self.mInternalValue {
      return .single (object)
    }else{
      return .empty
    }
  }

  //····················································································································

  override func setProp (_ inValue : SymbolPinInstanceInDevice?) { self.mInternalValue = inValue }

  //····················································································································

  override var propval : SymbolPinInstanceInDevice? { return self.mInternalValue }

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

//----------------------------------------------------------------------------------------------------------------------

