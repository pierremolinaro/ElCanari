//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------
//    ReadOnlyObject_PackageModelImageDoublePoint 
//----------------------------------------------------------------------------------------------------------------------

class ReadOnlyObject_PackageModelImageDoublePoint : ReadOnlyAbstractObjectProperty <PackageModelImageDoublePoint> {

  //····················································································································

  internal override func notifyModelDidChangeFrom (oldValue inOldValue : PackageModelImageDoublePoint?) {
    super.notifyModelDidChangeFrom (oldValue: inOldValue)
  //--- Remove observers from removed objects
    if let oldValue = inOldValue {
      oldValue.mFirstX_property.removeEBObserver (self.mFirstX_property) // Stored property
      oldValue.mFirstY_property.removeEBObserver (self.mFirstY_property) // Stored property
      oldValue.mFirstColor_property.removeEBObserver (self.mFirstColor_property) // Stored property
      oldValue.mSecondDx_property.removeEBObserver (self.mSecondDx_property) // Stored property
      oldValue.mSecondDy_property.removeEBObserver (self.mSecondDy_property) // Stored property
      oldValue.mSecondColor_property.removeEBObserver (self.mSecondColor_property) // Stored property
      oldValue.objectDisplay_property.removeEBObserver (self.objectDisplay_property) // Transient property
      oldValue.selectionDisplay_property.removeEBObserver (self.selectionDisplay_property) // Transient property
    }
  //--- Add observers to added objects
    if let newValue = self.mInternalValue {
      newValue.mFirstX_property.addEBObserver (self.mFirstX_property) // Stored property
      newValue.mFirstY_property.addEBObserver (self.mFirstY_property) // Stored property
      newValue.mFirstColor_property.addEBObserver (self.mFirstColor_property) // Stored property
      newValue.mSecondDx_property.addEBObserver (self.mSecondDx_property) // Stored property
      newValue.mSecondDy_property.addEBObserver (self.mSecondDy_property) // Stored property
      newValue.mSecondColor_property.addEBObserver (self.mSecondColor_property) // Stored property
      newValue.objectDisplay_property.addEBObserver (self.objectDisplay_property) // Transient property
      newValue.selectionDisplay_property.addEBObserver (self.selectionDisplay_property) // Transient property
    }
  }

  //····················································································································
  //   Observers of 'mFirstX' stored property
  //····················································································································

  final let mFirstX_property = EBGenericTransientProperty <Int?> ()

  //····················································································································

  final func removeEBObserverOf_mFirstX (_ inObserver : EBEvent) {
    self.mFirstX_property.removeEBObserver (inObserver)
  }

  //····················································································································
  //   Observers of 'mFirstY' stored property
  //····················································································································

  final let mFirstY_property = EBGenericTransientProperty <Int?> ()

  //····················································································································

  final func removeEBObserverOf_mFirstY (_ inObserver : EBEvent) {
    self.mFirstY_property.removeEBObserver (inObserver)
  }

  //····················································································································
  //   Observers of 'mFirstColor' stored property
  //····················································································································

  final let mFirstColor_property = EBGenericTransientProperty <NSColor?> ()

  //····················································································································

  final func removeEBObserverOf_mFirstColor (_ inObserver : EBEvent) {
    self.mFirstColor_property.removeEBObserver (inObserver)
  }

  //····················································································································
  //   Observers of 'mSecondDx' stored property
  //····················································································································

  final let mSecondDx_property = EBGenericTransientProperty <Int?> ()

  //····················································································································

  final func removeEBObserverOf_mSecondDx (_ inObserver : EBEvent) {
    self.mSecondDx_property.removeEBObserver (inObserver)
  }

  //····················································································································
  //   Observers of 'mSecondDy' stored property
  //····················································································································

  final let mSecondDy_property = EBGenericTransientProperty <Int?> ()

  //····················································································································

  final func removeEBObserverOf_mSecondDy (_ inObserver : EBEvent) {
    self.mSecondDy_property.removeEBObserver (inObserver)
  }

  //····················································································································
  //   Observers of 'mSecondColor' stored property
  //····················································································································

  final let mSecondColor_property = EBGenericTransientProperty <NSColor?> ()

  //····················································································································

  final func removeEBObserverOf_mSecondColor (_ inObserver : EBEvent) {
    self.mSecondColor_property.removeEBObserver (inObserver)
  }

  //····················································································································
  //   Observers of 'objectDisplay' transient property
  //····················································································································

  final let objectDisplay_property = EBGenericTransientProperty <EBShape?> ()

  //····················································································································

  final func removeEBObserverOf_objectDisplay (_ inObserver : EBEvent) {
    self.objectDisplay_property.removeEBObserver (inObserver)
  }

  //····················································································································
  //   Observers of 'selectionDisplay' transient property
  //····················································································································

  final let selectionDisplay_property = EBGenericTransientProperty <EBShape?> ()

  //····················································································································

  final func removeEBObserverOf_selectionDisplay (_ inObserver : EBEvent) {
    self.selectionDisplay_property.removeEBObserver (inObserver)
  }

  //····················································································································
  //   INIT 
  //····················································································································

  override init () {
    super.init ()
  //--- Configure mFirstX simple stored property
    self.mFirstX_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.mFirstX_property.selection {
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
  //--- Configure mFirstY simple stored property
    self.mFirstY_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.mFirstY_property.selection {
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
  //--- Configure mFirstColor simple stored property
    self.mFirstColor_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.mFirstColor_property.selection {
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
  //--- Configure mSecondDx simple stored property
    self.mSecondDx_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.mSecondDx_property.selection {
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
  //--- Configure mSecondDy simple stored property
    self.mSecondDy_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.mSecondDy_property.selection {
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
  //--- Configure mSecondColor simple stored property
    self.mSecondColor_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.mSecondColor_property.selection {
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
//   TransientObject PackageModelImageDoublePoint
//----------------------------------------------------------------------------------------------------------------------

final class TransientObject_PackageModelImageDoublePoint : ReadOnlyObject_PackageModelImageDoublePoint {

  //····················································································································
  //   Data provider
  //····················································································································

  private var mDataProvider : ReadOnlyObject_PackageModelImageDoublePoint? = nil
  private var mTransientKind : PropertyKind = .empty

  //····················································································································

  func setDataProvider (_ inProvider : ReadOnlyObject_PackageModelImageDoublePoint?) {
    if self.mDataProvider !== inProvider {
      self.mDataProvider?.detachClient (self)
      self.mDataProvider = inProvider
      self.mDataProvider?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newObject : PackageModelImageDoublePoint? 
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

  override var selection : EBSelection < PackageModelImageDoublePoint? > {
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

  override var propval : PackageModelImageDoublePoint? { return self.mInternalValue }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//    ReadWriteObject_PackageModelImageDoublePoint
//----------------------------------------------------------------------------------------------------------------------

class ReadWriteObject_PackageModelImageDoublePoint : ReadOnlyObject_PackageModelImageDoublePoint {

  //····················································································································
 
  func setProp (_ inValue : PackageModelImageDoublePoint?) { } // Abstract method
  
  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//    Proxy: ProxyObject_PackageModelImageDoublePoint
//----------------------------------------------------------------------------------------------------------------------

final class ProxyObject_PackageModelImageDoublePoint : ReadWriteObject_PackageModelImageDoublePoint {

  //····················································································································

  private var mModel : ReadWriteObject_PackageModelImageDoublePoint? = nil

  //····················································································································

  func setModel (_ inModel : ReadWriteObject_PackageModelImageDoublePoint?) {
    if self.mModel !== inModel {
      self.mModel?.detachClient (self)
      self.mModel = inModel
      self.mModel?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newModel : PackageModelImageDoublePoint?
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

  override func setProp (_ inValue : PackageModelImageDoublePoint?) {
    self.mModel?.setProp (inValue)
  }

  //····················································································································

  override var selection : EBSelection < PackageModelImageDoublePoint? > {
    if let model = self.mModel {
      return model.selection
    }else{
      return .empty
    }
  }

  //····················································································································

  override var propval : PackageModelImageDoublePoint? {
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
//    StoredObject_PackageModelImageDoublePoint 
//----------------------------------------------------------------------------------------------------------------------

final class StoredObject_PackageModelImageDoublePoint : ReadWriteObject_PackageModelImageDoublePoint, EBSignatureObserverProtocol, EBObservableObjectProtocol {

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

  private var mSetOppositeRelationship : Optional < (_ inManagedObject : PackageModelImageDoublePoint) -> Void > = nil
  private var mResetOppositeRelationship : Optional < (_ inManagedObject : PackageModelImageDoublePoint) -> Void > = nil

  //····················································································································

  func setOppositeRelationShipFunctions (setter inSetter : @escaping (_ inManagedObject : PackageModelImageDoublePoint) -> Void,
                                         resetter inResetter : @escaping (_ inManagedObject : PackageModelImageDoublePoint) -> Void) {
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

  override func notifyModelDidChangeFrom (oldValue inOldValue : PackageModelImageDoublePoint?) {
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

  override var selection : EBSelection < PackageModelImageDoublePoint? > {
    if let object = self.mInternalValue {
      return .single (object)
    }else{
      return .empty
    }
  }

  //····················································································································

  override func setProp (_ inValue : PackageModelImageDoublePoint?) { self.mInternalValue = inValue }

  //····················································································································

  override var propval : PackageModelImageDoublePoint? { return self.mInternalValue }

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

