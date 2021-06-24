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
    if let oldValue = inOldValue {
      oldValue.mOrientation_property.removeEBObserver (self.mOrientation_property) // Stored property
      oldValue.objectDisplay_property.removeEBObserver (self.objectDisplay_property) // Transient property
      oldValue.selectionDisplay_property.removeEBObserver (self.selectionDisplay_property) // Transient property
    }
  //--- Add observers to added objects
    if let newValue = self.mInternalValue {
      newValue.mOrientation_property.addEBObserver (self.mOrientation_property) // Stored property
      newValue.objectDisplay_property.addEBObserver (self.objectDisplay_property) // Transient property
      newValue.selectionDisplay_property.addEBObserver (self.selectionDisplay_property) // Transient property
    }
  }

  //····················································································································
  //   Observers of 'mOrientation' stored property
  //····················································································································

  final let mOrientation_property = EBGenericTransientProperty <QuadrantRotation?> ()

  //····················································································································
  //   Observers of 'objectDisplay' transient property
  //····················································································································

  final let objectDisplay_property = EBGenericTransientProperty <EBShape?> ()

  //····················································································································
  //   Observers of 'selectionDisplay' transient property
  //····················································································································

  final let selectionDisplay_property = EBGenericTransientProperty <EBShape?> ()

  //····················································································································
  //   INIT 
  //····················································································································

  override init () {
    super.init ()
  //--- Configure mOrientation simple stored property
    self.mOrientation_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.mOrientation_property.selection {
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
  //--- Configure objectDisplay transient property
    self.objectDisplay_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.objectDisplay_property.selection {
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
  //--- Configure selectionDisplay transient property
    self.selectionDisplay_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.selectionDisplay_property.selection {
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

//----------------------------------------------------------------------------------------------------------------------
//   TransientObject NCInSchematic
//----------------------------------------------------------------------------------------------------------------------

final class TransientObject_NCInSchematic : ReadOnlyObject_NCInSchematic {

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

  override var selection : EBSelection < NCInSchematic? > {
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

  override func setProp (_ inValue : NCInSchematic?) {
    self.mModel?.setProp (inValue)
  }

  //····················································································································

  override var selection : EBSelection < NCInSchematic? > {
    if let model = self.mModel {
      return model.selection
    }else{
      return .empty
    }
  }

  //····················································································································

  override var propval : NCInSchematic? {
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

  weak final var ebUndoManager : EBUndoManager? = nil // SOULD BE WEAK

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

  override var selection : EBSelection < NCInSchematic? > {
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

