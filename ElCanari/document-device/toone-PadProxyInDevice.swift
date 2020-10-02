//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------
//    ReadOnlyObject_PadProxyInDevice 
//----------------------------------------------------------------------------------------------------------------------

class ReadOnlyObject_PadProxyInDevice : ReadOnlyAbstractObjectProperty <PadProxyInDevice> {

  //····················································································································

  internal override func notifyModelDidChangeFrom (oldValue inOldValue : PadProxyInDevice?) {
    super.notifyModelDidChangeFrom (oldValue: inOldValue)
  //--- Remove observers from removed objects
    inOldValue?.mPinInstanceName_property.removeEBObserver (self.mPinInstanceName_property) // Stored property
    inOldValue?.mPadName_property.removeEBObserver (self.mPadName_property) // Stored property
    inOldValue?.mIsNC_property.removeEBObserver (self.mIsNC_property) // Stored property
    inOldValue?.isConnected_property.removeEBObserver (self.isConnected_property) // Transient property
    inOldValue?.symbolName_property.removeEBObserver (self.symbolName_property) // Transient property
  //--- Add observers to added objects
    self.mInternalValue?.mPinInstanceName_property.addEBObserver (self.mPinInstanceName_property) // Stored property
    self.mInternalValue?.mPadName_property.addEBObserver (self.mPadName_property) // Stored property
    self.mInternalValue?.mIsNC_property.addEBObserver (self.mIsNC_property) // Stored property
    self.mInternalValue?.isConnected_property.addEBObserver (self.isConnected_property) // Transient property
    self.mInternalValue?.symbolName_property.addEBObserver (self.symbolName_property) // Transient property
  }

  //····················································································································
  //   init
  //····················································································································

  override init () {
    super.init ()
    self.mPinInstanceName_property.mReadModelFunction = { [weak self] in self?.mInternalValue?.mPinInstanceName_property.prop ?? .empty }
    self.mPinInstanceName_property.mWriteModelFunction = { [weak self] (inValue : String) in self?.mInternalValue?.mPinInstanceName_property.setProp (inValue) }
    self.mPadName_property.mReadModelFunction = { [weak self] in self?.mInternalValue?.mPadName_property.prop ?? .empty }
    self.mPadName_property.mWriteModelFunction = { [weak self] (inValue : String) in self?.mInternalValue?.mPadName_property.setProp (inValue) }
    self.mIsNC_property.mReadModelFunction = { [weak self] in self?.mInternalValue?.mIsNC_property.prop ?? .empty }
    self.mIsNC_property.mWriteModelFunction = { [weak self] (inValue : Bool) in self?.mInternalValue?.mIsNC_property.setProp (inValue) }
    self.isConnected_property.mReadModelFunction = { [weak self] in self?.mInternalValue?.isConnected_property.prop ?? .empty }
    self.symbolName_property.mReadModelFunction = { [weak self] in self?.mInternalValue?.symbolName_property.prop ?? .empty }
  }

  //····················································································································
  //   Proxy of 'mPinInstanceName' stored property
  //····················································································································

  let mPinInstanceName_property = EBPropertyProxy_String ()

  var mPinInstanceName_property_selection : EBSelection <String> {
    switch (self.mPinInstanceName_property.prop) {
    case .empty :
      return .empty
    case .multiple :
      return .multiple
    case .single (let v) :
      return .single (v)
    }
  }

  //····················································································································
  //   Proxy of 'mPadName' stored property
  //····················································································································

  let mPadName_property = EBPropertyProxy_String ()

  var mPadName_property_selection : EBSelection <String> {
    switch (self.mPadName_property.prop) {
    case .empty :
      return .empty
    case .multiple :
      return .multiple
    case .single (let v) :
      return .single (v)
    }
  }

  //····················································································································
  //   Proxy of 'mIsNC' stored property
  //····················································································································

  let mIsNC_property = EBPropertyProxy_Bool ()

  var mIsNC_property_selection : EBSelection <Bool> {
    switch (self.mIsNC_property.prop) {
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

}

//----------------------------------------------------------------------------------------------------------------------
//    TransientObject PadProxyInDevice
//----------------------------------------------------------------------------------------------------------------------

class TransientObject_PadProxyInDevice : ReadOnlyObject_PadProxyInDevice {

  //····················································································································
  //   Data provider
  //····················································································································

  private var mDataProvider : ReadOnlyObject_PadProxyInDevice? = nil
  private var mTransientKind : PropertyKind = .empty

  //····················································································································

  func setDataProvider (_ inProvider : ReadOnlyObject_PadProxyInDevice?) {
    if self.mDataProvider !== inProvider {
      self.mDataProvider?.detachClient (self)
      self.mDataProvider = inProvider
      self.mDataProvider?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newObject : PadProxyInDevice? 
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

  override var prop : EBSelection < PadProxyInDevice? > {
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

  override var propval : PadProxyInDevice? { return self.mInternalValue }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//    ReadWriteObject_PadProxyInDevice
//----------------------------------------------------------------------------------------------------------------------

class ReadWriteObject_PadProxyInDevice : ReadOnlyObject_PadProxyInDevice {

  //····················································································································
 
  func setProp (_ inValue : PadProxyInDevice?) { } // Abstract method
  
  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//    Proxy: ProxyObject_PadProxyInDevice
//----------------------------------------------------------------------------------------------------------------------

final class ProxyObject_PadProxyInDevice : ReadWriteObject_PadProxyInDevice {

  //····················································································································

  private var mModel : ReadWriteObject_PadProxyInDevice? = nil

  //····················································································································

  func setModel (_ inModel : ReadWriteObject_PadProxyInDevice?) {
    if self.mModel !== inModel {
      self.mModel?.detachClient (self)
      self.mModel = inModel
      self.mModel?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newModel : PadProxyInDevice?
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

  override func setProp (_ inValue : PadProxyInDevice?) {
    self.mModel?.setProp (inValue)
  }

  //····················································································································

  override var prop : EBSelection < PadProxyInDevice? > {
    if let model = self.mModel {
      return model.prop
    }else{
      return .empty
    }
  }

  //····················································································································

  override var propval : PadProxyInDevice? {
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
//    StoredObject_PadProxyInDevice 
//----------------------------------------------------------------------------------------------------------------------

final class StoredObject_PadProxyInDevice : ReadWriteObject_PadProxyInDevice, EBSignatureObserverProtocol, EBObservableObjectProtocol {

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

  private var mSetOppositeRelationship : Optional < (_ inManagedObject : PadProxyInDevice) -> Void > = nil
  private var mResetOppositeRelationship : Optional < (_ inManagedObject : PadProxyInDevice) -> Void > = nil

  //····················································································································

  func setOppositeRelationShipFunctions (setter inSetter : @escaping (_ inManagedObject : PadProxyInDevice) -> Void,
                                         resetter inResetter : @escaping (_ inManagedObject : PadProxyInDevice) -> Void) {
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

  override func notifyModelDidChangeFrom (oldValue inOldValue : PadProxyInDevice?) {
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

  override var prop : EBSelection < PadProxyInDevice? > {
    if let object = self.mInternalValue {
      return .single (object)
    }else{
      return .empty
    }
  }

  //····················································································································

  override func setProp (_ inValue : PadProxyInDevice?) { self.mInternalValue = inValue }

  //····················································································································

  override var propval : PadProxyInDevice? { return self.mInternalValue }

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

