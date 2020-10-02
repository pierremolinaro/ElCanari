//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------
//    ReadOnlyObject_NCInSchematic 
//----------------------------------------------------------------------------------------------------------------------

class ReadOnlyObject_NCInSchematic : ReadOnlyAbstractObjectProperty <NCInSchematic> {

  //····················································································································

  internal override func notifyModelDidChangeFrom (oldValue inOldValue : NCInSchematic?) {
    super.notifyModelDidChangeFrom (oldValue: inOldValue)
  //--- Remove observers from removed objects
    inOldValue?.mOrientation_property.removeEBObserver (self.mOrientation_property) // Stored property
    inOldValue?.objectDisplay_property.removeEBObserver (self.objectDisplay_property) // Transient property
    inOldValue?.selectionDisplay_property.removeEBObserver (self.selectionDisplay_property) // Transient property
  //--- Add observers to added objects
    self.mInternalValue?.mOrientation_property.addEBObserver (self.mOrientation_property) // Stored property
    self.mInternalValue?.objectDisplay_property.addEBObserver (self.objectDisplay_property) // Transient property
    self.mInternalValue?.selectionDisplay_property.addEBObserver (self.selectionDisplay_property) // Transient property
  }

  //····················································································································
  //   init
  //····················································································································

  override init () {
    super.init ()
    self.mOrientation_property.mReadModelFunction = { [weak self] in self?.mInternalValue?.mOrientation_property.prop ?? .empty }
    self.mOrientation_property.mWriteModelFunction = { [weak self] (inValue : QuadrantRotation) in self?.mInternalValue?.mOrientation_property.setProp (inValue) }
    self.objectDisplay_property.mReadModelFunction = { [weak self] in self?.mInternalValue?.objectDisplay_property.prop ?? .empty }
    self.selectionDisplay_property.mReadModelFunction = { [weak self] in self?.mInternalValue?.selectionDisplay_property.prop ?? .empty }
  }

  //····················································································································
  //   Proxy of 'mOrientation' stored property
  //····················································································································

  let mOrientation_property = EBPropertyProxy_QuadrantRotation ()

  var mOrientation_property_selection : EBSelection <QuadrantRotation> {
    switch (self.mOrientation_property.prop) {
    case .empty :
      return .empty
    case .multiple :
      return .multiple
    case .single (let v) :
      return .single (v)
    }
  }

  //····················································································································
  //   Observer of 'objectDisplay' transient property
  //····················································································································

  let objectDisplay_property = EBTransientProperty_EBShape ()

  var objectDisplay_property_selection : EBSelection <EBShape> {
    switch (self.objectDisplay_property.prop) {
    case .empty :
      return .empty
    case .multiple :
      return .multiple
    case .single (let v) :
      return .single (v)
    }
  }

  //····················································································································
  //   Observer of 'selectionDisplay' transient property
  //····················································································································

  let selectionDisplay_property = EBTransientProperty_EBShape ()

  var selectionDisplay_property_selection : EBSelection <EBShape> {
    switch (self.selectionDisplay_property.prop) {
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
//    TransientObject NCInSchematic
//----------------------------------------------------------------------------------------------------------------------

class TransientObject_NCInSchematic : ReadOnlyObject_NCInSchematic {

  //····················································································································
  //   Data provider
  //····················································································································

  private var mDataProvider : ReadOnlyObject_NCInSchematic? = nil
  private var mTransientKind : PropertyKind = .empty

  //····················································································································

  func setDataProvider (_ inProvider : ReadOnlyObject_NCInSchematic?) {
    if self.mDataProvider !== inProvider {
      self.mDataProvider?.detachClient (self)
      self.mDataProvider = inProvider
      self.mDataProvider?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newObject : NCInSchematic? 
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

  override var prop : EBSelection < NCInSchematic? > {
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

  override var propval : NCInSchematic? { return self.mInternalValue }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//    ReadWriteObject_NCInSchematic
//----------------------------------------------------------------------------------------------------------------------

class ReadWriteObject_NCInSchematic : ReadOnlyObject_NCInSchematic {

  //····················································································································
 
  func setProp (_ inValue : NCInSchematic?) { } // Abstract method
  
  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//    Proxy: ProxyObject_NCInSchematic
//----------------------------------------------------------------------------------------------------------------------

final class ProxyObject_NCInSchematic : ReadWriteObject_NCInSchematic {

  //····················································································································

  private var mModel : ReadWriteObject_NCInSchematic? = nil

  //····················································································································

  func setModel (_ inModel : ReadWriteObject_NCInSchematic?) {
    if self.mModel !== inModel {
      self.mModel?.detachClient (self)
      self.mModel = inModel
      self.mModel?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newModel : NCInSchematic?
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

  override func setProp (_ inValue : NCInSchematic?) {
    self.mModel?.setProp (inValue)
  }

  //····················································································································

  override var prop : EBSelection < NCInSchematic? > {
    if let model = self.mModel {
      return model.prop
    }else{
      return .empty
    }
  }

  //····················································································································

  override var propval : NCInSchematic? {
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
//    StoredObject_NCInSchematic 
//----------------------------------------------------------------------------------------------------------------------

final class StoredObject_NCInSchematic : ReadWriteObject_NCInSchematic, EBSignatureObserverProtocol, EBObservableObjectProtocol {

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

  private var mSetOppositeRelationship : Optional < (_ inManagedObject : NCInSchematic) -> Void > = nil
  private var mResetOppositeRelationship : Optional < (_ inManagedObject : NCInSchematic) -> Void > = nil

  //····················································································································

  func setOppositeRelationShipFunctions (setter inSetter : @escaping (_ inManagedObject : NCInSchematic) -> Void,
                                         resetter inResetter : @escaping (_ inManagedObject : NCInSchematic) -> Void) {
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

  override func notifyModelDidChangeFrom (oldValue inOldValue : NCInSchematic?) {
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

  override var prop : EBSelection < NCInSchematic? > {
    if let object = self.mInternalValue {
      return .single (object)
    }else{
      return .empty
    }
  }

  //····················································································································

  override func setProp (_ inValue : NCInSchematic?) { self.mInternalValue = inValue }

  //····················································································································

  override var propval : NCInSchematic? { return self.mInternalValue }

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

