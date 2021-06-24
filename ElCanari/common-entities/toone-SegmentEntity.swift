//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------
//    ReadOnlyObject_SegmentEntity 
//----------------------------------------------------------------------------------------------------------------------

class ReadOnlyObject_SegmentEntity : ReadOnlyAbstractObjectProperty <SegmentEntity> {

  //····················································································································

  internal override func notifyModelDidChangeFrom (oldValue inOldValue : SegmentEntity?) {
    super.notifyModelDidChangeFrom (oldValue: inOldValue)
  //--- Remove observers from removed objects
    if let oldValue = inOldValue {
 //     oldValue.y1_property.removeEBObserversFrom (&self.mObserversOf_y1) // Stored property
      oldValue.y1_property.removeEBObserver (self.y1_property) // Stored property
 //     oldValue.x2_property.removeEBObserversFrom (&self.mObserversOf_x2) // Stored property
      oldValue.x2_property.removeEBObserver (self.x2_property) // Stored property
 //     oldValue.y2_property.removeEBObserversFrom (&self.mObserversOf_y2) // Stored property
      oldValue.y2_property.removeEBObserver (self.y2_property) // Stored property
 //     oldValue.width_property.removeEBObserversFrom (&self.mObserversOf_width) // Stored property
      oldValue.width_property.removeEBObserver (self.width_property) // Stored property
 //     oldValue.x1_property.removeEBObserversFrom (&self.mObserversOf_x1) // Stored property
      oldValue.x1_property.removeEBObserver (self.x1_property) // Stored property
    }
  //--- Add observers to added objects
    if let newValue = self.mInternalValue {
 //     newValue.y1_property.addEBObserversFrom (&self.mObserversOf_y1) // Stored property
      newValue.y1_property.addEBObserver (self.y1_property) // Stored property
 //     newValue.x2_property.addEBObserversFrom (&self.mObserversOf_x2) // Stored property
      newValue.x2_property.addEBObserver (self.x2_property) // Stored property
 //     newValue.y2_property.addEBObserversFrom (&self.mObserversOf_y2) // Stored property
      newValue.y2_property.addEBObserver (self.y2_property) // Stored property
 //     newValue.width_property.addEBObserversFrom (&self.mObserversOf_width) // Stored property
      newValue.width_property.addEBObserver (self.width_property) // Stored property
 //     newValue.x1_property.addEBObserversFrom (&self.mObserversOf_x1) // Stored property
      newValue.x1_property.addEBObserver (self.x1_property) // Stored property
    }
  }

  //····················································································································
  //   Observers of 'y1' stored property
  //····················································································································

  final let y1_property = EBGenericTransientProperty <Int?> ()

  //····················································································································

  final func addEBObserverOf_y1 (_ inObserver : EBEvent) {
    self.y1_property.addEBObserver (inObserver)
  }

  //····················································································································

  final func removeEBObserverOf_y1 (_ inObserver : EBEvent) {
    self.y1_property.removeEBObserver (inObserver)
  }

  //····················································································································
  //   Observers of 'x2' stored property
  //····················································································································

  final let x2_property = EBGenericTransientProperty <Int?> ()

  //····················································································································

  final func addEBObserverOf_x2 (_ inObserver : EBEvent) {
    self.x2_property.addEBObserver (inObserver)
  }

  //····················································································································

  final func removeEBObserverOf_x2 (_ inObserver : EBEvent) {
    self.x2_property.removeEBObserver (inObserver)
  }

  //····················································································································
  //   Observers of 'y2' stored property
  //····················································································································

  final let y2_property = EBGenericTransientProperty <Int?> ()

  //····················································································································

  final func addEBObserverOf_y2 (_ inObserver : EBEvent) {
    self.y2_property.addEBObserver (inObserver)
  }

  //····················································································································

  final func removeEBObserverOf_y2 (_ inObserver : EBEvent) {
    self.y2_property.removeEBObserver (inObserver)
  }

  //····················································································································
  //   Observers of 'width' stored property
  //····················································································································

  final let width_property = EBGenericTransientProperty <Int?> ()

  //····················································································································

  final func addEBObserverOf_width (_ inObserver : EBEvent) {
    self.width_property.addEBObserver (inObserver)
  }

  //····················································································································

  final func removeEBObserverOf_width (_ inObserver : EBEvent) {
    self.width_property.removeEBObserver (inObserver)
  }

  //····················································································································
  //   Observers of 'x1' stored property
  //····················································································································

  final let x1_property = EBGenericTransientProperty <Int?> ()

  //····················································································································

  final func addEBObserverOf_x1 (_ inObserver : EBEvent) {
    self.x1_property.addEBObserver (inObserver)
  }

  //····················································································································

  final func removeEBObserverOf_x1 (_ inObserver : EBEvent) {
    self.x1_property.removeEBObserver (inObserver)
  }

  //····················································································································
  //   INIT 
  //····················································································································

  override init () {
    super.init ()
  //--- Configure y1 simple stored property
    self.y1_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.y1_property.selection {
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
  //--- Configure x2 simple stored property
    self.x2_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.x2_property.selection {
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
  //--- Configure y2 simple stored property
    self.y2_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.y2_property.selection {
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
  //--- Configure width simple stored property
    self.width_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.width_property.selection {
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
  //--- Configure x1 simple stored property
    self.x1_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.x1_property.selection {
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
//   TransientObject SegmentEntity
//----------------------------------------------------------------------------------------------------------------------

final class TransientObject_SegmentEntity : ReadOnlyObject_SegmentEntity {

  //····················································································································
  //   Data provider
  //····················································································································

  private var mDataProvider : ReadOnlyObject_SegmentEntity? = nil
  private var mTransientKind : PropertyKind = .empty

  //····················································································································

  func setDataProvider (_ inProvider : ReadOnlyObject_SegmentEntity?) {
    if self.mDataProvider !== inProvider {
      self.mDataProvider?.detachClient (self)
      self.mDataProvider = inProvider
      self.mDataProvider?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newObject : SegmentEntity? 
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

  override var selection : EBSelection < SegmentEntity? > {
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

  override var propval : SegmentEntity? { return self.mInternalValue }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//    ReadWriteObject_SegmentEntity
//----------------------------------------------------------------------------------------------------------------------

class ReadWriteObject_SegmentEntity : ReadOnlyObject_SegmentEntity {

  //····················································································································
 
  func setProp (_ inValue : SegmentEntity?) { } // Abstract method
  
  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//    Proxy: ProxyObject_SegmentEntity
//----------------------------------------------------------------------------------------------------------------------

final class ProxyObject_SegmentEntity : ReadWriteObject_SegmentEntity {

  //····················································································································

  private var mModel : ReadWriteObject_SegmentEntity? = nil

  //····················································································································

  func setModel (_ inModel : ReadWriteObject_SegmentEntity?) {
    if self.mModel !== inModel {
      self.mModel?.detachClient (self)
      self.mModel = inModel
      self.mModel?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newModel : SegmentEntity?
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

  override func setProp (_ inValue : SegmentEntity?) {
    self.mModel?.setProp (inValue)
  }

  //····················································································································

  override var selection : EBSelection < SegmentEntity? > {
    if let model = self.mModel {
      return model.selection
    }else{
      return .empty
    }
  }

  //····················································································································

  override var propval : SegmentEntity? {
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
//    StoredObject_SegmentEntity 
//----------------------------------------------------------------------------------------------------------------------

final class StoredObject_SegmentEntity : ReadWriteObject_SegmentEntity, EBSignatureObserverProtocol, EBObservableObjectProtocol {

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

  private var mSetOppositeRelationship : Optional < (_ inManagedObject : SegmentEntity) -> Void > = nil
  private var mResetOppositeRelationship : Optional < (_ inManagedObject : SegmentEntity) -> Void > = nil

  //····················································································································

  func setOppositeRelationShipFunctions (setter inSetter : @escaping (_ inManagedObject : SegmentEntity) -> Void,
                                         resetter inResetter : @escaping (_ inManagedObject : SegmentEntity) -> Void) {
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

  override func notifyModelDidChangeFrom (oldValue inOldValue : SegmentEntity?) {
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

  override var selection : EBSelection < SegmentEntity? > {
    if let object = self.mInternalValue {
      return .single (object)
    }else{
      return .empty
    }
  }

  //····················································································································

  override func setProp (_ inValue : SegmentEntity?) { self.mInternalValue = inValue }

  //····················································································································

  override var propval : SegmentEntity? { return self.mInternalValue }

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

