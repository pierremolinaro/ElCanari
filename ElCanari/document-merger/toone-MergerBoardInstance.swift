//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------
//    ReadOnlyObject_MergerBoardInstance 
//----------------------------------------------------------------------------------------------------------------------

class ReadOnlyObject_MergerBoardInstance : ReadOnlyAbstractObjectProperty <MergerBoardInstance> {

  //····················································································································

  internal override func notifyModelDidChangeFrom (oldValue inOldValue : MergerBoardInstance?) {
    super.notifyModelDidChangeFrom (oldValue: inOldValue)
  //--- Remove observers from removed objects
    if let oldValue = inOldValue {
      oldValue.x_property.removeEBObserver (self.x_property) // Stored property
      oldValue.y_property.removeEBObserver (self.y_property) // Stored property
      oldValue.instanceRotation_property.removeEBObserver (self.instanceRotation_property) // Stored property
      oldValue.instanceRect_property.removeEBObserver (self.instanceRect_property) // Transient property
      oldValue.modelName_property.removeEBObserver (self.modelName_property) // Transient property
      oldValue.boardLimitWidth_property.removeEBObserver (self.boardLimitWidth_property) // Transient property
      oldValue.selectionDisplay_property.removeEBObserver (self.selectionDisplay_property) // Transient property
      oldValue.objectDisplay_property.removeEBObserver (self.objectDisplay_property) // Transient property
    }
  //--- Add observers to added objects
    if let newValue = self.mInternalValue {
      newValue.x_property.addEBObserver (self.x_property) // Stored property
      newValue.y_property.addEBObserver (self.y_property) // Stored property
      newValue.instanceRotation_property.addEBObserver (self.instanceRotation_property) // Stored property
      newValue.instanceRect_property.addEBObserver (self.instanceRect_property) // Transient property
      newValue.modelName_property.addEBObserver (self.modelName_property) // Transient property
      newValue.boardLimitWidth_property.addEBObserver (self.boardLimitWidth_property) // Transient property
      newValue.selectionDisplay_property.addEBObserver (self.selectionDisplay_property) // Transient property
      newValue.objectDisplay_property.addEBObserver (self.objectDisplay_property) // Transient property
    }
  }

  //····················································································································
  //   Observers of 'x' stored property
  //····················································································································

  final let x_property = EBGenericTransientProperty <Int?> ()

  //····················································································································

  final func removeEBObserverOf_x (_ inObserver : EBEvent) {
    self.x_property.removeEBObserver (inObserver)
  }

  //····················································································································
  //   Observers of 'y' stored property
  //····················································································································

  final let y_property = EBGenericTransientProperty <Int?> ()

  //····················································································································

  final func removeEBObserverOf_y (_ inObserver : EBEvent) {
    self.y_property.removeEBObserver (inObserver)
  }

  //····················································································································
  //   Observers of 'instanceRotation' stored property
  //····················································································································

  final let instanceRotation_property = EBGenericTransientProperty <QuadrantRotation?> ()

  //····················································································································

  final func removeEBObserverOf_instanceRotation (_ inObserver : EBEvent) {
    self.instanceRotation_property.removeEBObserver (inObserver)
  }

  //····················································································································
  //   Observers of 'instanceRect' transient property
  //····················································································································

  final let instanceRect_property = EBGenericTransientProperty <CanariRect?> ()

  //····················································································································

  final func removeEBObserverOf_instanceRect (_ inObserver : EBEvent) {
    self.instanceRect_property.removeEBObserver (inObserver)
  }

  //····················································································································
  //   Observers of 'modelName' transient property
  //····················································································································

  final let modelName_property = EBGenericTransientProperty <String?> ()

  //····················································································································

  final func removeEBObserverOf_modelName (_ inObserver : EBEvent) {
    self.modelName_property.removeEBObserver (inObserver)
  }

  //····················································································································
  //   Observers of 'boardLimitWidth' transient property
  //····················································································································

  final let boardLimitWidth_property = EBGenericTransientProperty <Int?> ()

  //····················································································································

  final func removeEBObserverOf_boardLimitWidth (_ inObserver : EBEvent) {
    self.boardLimitWidth_property.removeEBObserver (inObserver)
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
  //   Observers of 'objectDisplay' transient property
  //····················································································································

  final let objectDisplay_property = EBGenericTransientProperty <EBShape?> ()

  //····················································································································

  final func removeEBObserverOf_objectDisplay (_ inObserver : EBEvent) {
    self.objectDisplay_property.removeEBObserver (inObserver)
  }

  //····················································································································
  //   INIT 
  //····················································································································

  override init () {
    super.init ()
  //--- Configure x simple stored property
    self.x_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.x_property.selection {
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
  //--- Configure y simple stored property
    self.y_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.y_property.selection {
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
  //--- Configure instanceRotation simple stored property
    self.instanceRotation_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.instanceRotation_property.selection {
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
  //--- Configure instanceRect transient property
    self.instanceRect_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.instanceRect_property.selection {
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
  //--- Configure modelName transient property
    self.modelName_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.modelName_property.selection {
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
  //--- Configure boardLimitWidth transient property
    self.boardLimitWidth_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.boardLimitWidth_property.selection {
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
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//   TransientObject MergerBoardInstance
//----------------------------------------------------------------------------------------------------------------------

final class TransientObject_MergerBoardInstance : ReadOnlyObject_MergerBoardInstance {

  //····················································································································
  //   Data provider
  //····················································································································

  private var mDataProvider : ReadOnlyObject_MergerBoardInstance? = nil
  private var mTransientKind : PropertyKind = .empty

  //····················································································································

  func setDataProvider (_ inProvider : ReadOnlyObject_MergerBoardInstance?) {
    if self.mDataProvider !== inProvider {
      self.mDataProvider?.detachClient (self)
      self.mDataProvider = inProvider
      self.mDataProvider?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newObject : MergerBoardInstance? 
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

  override var selection : EBSelection < MergerBoardInstance? > {
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

  override var propval : MergerBoardInstance? { return self.mInternalValue }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//    ReadWriteObject_MergerBoardInstance
//----------------------------------------------------------------------------------------------------------------------

class ReadWriteObject_MergerBoardInstance : ReadOnlyObject_MergerBoardInstance {

  //····················································································································
 
  func setProp (_ inValue : MergerBoardInstance?) { } // Abstract method
  
  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//    Proxy: ProxyObject_MergerBoardInstance
//----------------------------------------------------------------------------------------------------------------------

final class ProxyObject_MergerBoardInstance : ReadWriteObject_MergerBoardInstance {

  //····················································································································

  private var mModel : ReadWriteObject_MergerBoardInstance? = nil

  //····················································································································

  func setModel (_ inModel : ReadWriteObject_MergerBoardInstance?) {
    if self.mModel !== inModel {
      self.mModel?.detachClient (self)
      self.mModel = inModel
      self.mModel?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newModel : MergerBoardInstance?
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

  override func setProp (_ inValue : MergerBoardInstance?) {
    self.mModel?.setProp (inValue)
  }

  //····················································································································

  override var selection : EBSelection < MergerBoardInstance? > {
    if let model = self.mModel {
      return model.selection
    }else{
      return .empty
    }
  }

  //····················································································································

  override var propval : MergerBoardInstance? {
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
//    StoredObject_MergerBoardInstance 
//----------------------------------------------------------------------------------------------------------------------

final class StoredObject_MergerBoardInstance : ReadWriteObject_MergerBoardInstance, EBSignatureObserverProtocol, EBObservableObjectProtocol {

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

  private var mSetOppositeRelationship : Optional < (_ inManagedObject : MergerBoardInstance) -> Void > = nil
  private var mResetOppositeRelationship : Optional < (_ inManagedObject : MergerBoardInstance) -> Void > = nil

  //····················································································································

  func setOppositeRelationShipFunctions (setter inSetter : @escaping (_ inManagedObject : MergerBoardInstance) -> Void,
                                         resetter inResetter : @escaping (_ inManagedObject : MergerBoardInstance) -> Void) {
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

  override func notifyModelDidChangeFrom (oldValue inOldValue : MergerBoardInstance?) {
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

  override var selection : EBSelection < MergerBoardInstance? > {
    if let object = self.mInternalValue {
      return .single (object)
    }else{
      return .empty
    }
  }

  //····················································································································

  override func setProp (_ inValue : MergerBoardInstance?) { self.mInternalValue = inValue }

  //····················································································································

  override var propval : MergerBoardInstance? { return self.mInternalValue }

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

