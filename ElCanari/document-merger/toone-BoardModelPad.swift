//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------
//    ReadOnlyObject_BoardModelPad 
//----------------------------------------------------------------------------------------------------------------------

class ReadOnlyObject_BoardModelPad : ReadOnlyAbstractObjectProperty <BoardModelPad> {

  //····················································································································

  internal override func notifyModelDidChangeFrom (oldValue inOldValue : BoardModelPad?) {
    super.notifyModelDidChangeFrom (oldValue: inOldValue)
  //--- Remove observers from removed objects
    inOldValue?.y_property.removeEBObserver (self.y_property) // Stored property
    inOldValue?.width_property.removeEBObserver (self.width_property) // Stored property
    inOldValue?.height_property.removeEBObserver (self.height_property) // Stored property
    inOldValue?.shape_property.removeEBObserver (self.shape_property) // Stored property
    inOldValue?.rotation_property.removeEBObserver (self.rotation_property) // Stored property
    inOldValue?.x_property.removeEBObserver (self.x_property) // Stored property
  //--- Add observers to added objects
    self.mInternalValue?.y_property.addEBObserver (self.y_property) // Stored property
    self.mInternalValue?.width_property.addEBObserver (self.width_property) // Stored property
    self.mInternalValue?.height_property.addEBObserver (self.height_property) // Stored property
    self.mInternalValue?.shape_property.addEBObserver (self.shape_property) // Stored property
    self.mInternalValue?.rotation_property.addEBObserver (self.rotation_property) // Stored property
    self.mInternalValue?.x_property.addEBObserver (self.x_property) // Stored property
  }

  //····················································································································
  //   init
  //····················································································································

  override init () {
    super.init ()
    self.y_property.mReadModelFunction = { [weak self] in self?.mInternalValue?.y_property.prop ?? .empty }
    self.y_property.mWriteModelFunction = { [weak self] (inValue : Int) in self?.mInternalValue?.y_property.setProp (inValue) }
    self.width_property.mReadModelFunction = { [weak self] in self?.mInternalValue?.width_property.prop ?? .empty }
    self.width_property.mWriteModelFunction = { [weak self] (inValue : Int) in self?.mInternalValue?.width_property.setProp (inValue) }
    self.height_property.mReadModelFunction = { [weak self] in self?.mInternalValue?.height_property.prop ?? .empty }
    self.height_property.mWriteModelFunction = { [weak self] (inValue : Int) in self?.mInternalValue?.height_property.setProp (inValue) }
    self.shape_property.mReadModelFunction = { [weak self] in self?.mInternalValue?.shape_property.prop ?? .empty }
    self.shape_property.mWriteModelFunction = { [weak self] (inValue : PadShape) in self?.mInternalValue?.shape_property.setProp (inValue) }
    self.rotation_property.mReadModelFunction = { [weak self] in self?.mInternalValue?.rotation_property.prop ?? .empty }
    self.rotation_property.mWriteModelFunction = { [weak self] (inValue : Int) in self?.mInternalValue?.rotation_property.setProp (inValue) }
    self.x_property.mReadModelFunction = { [weak self] in self?.mInternalValue?.x_property.prop ?? .empty }
    self.x_property.mWriteModelFunction = { [weak self] (inValue : Int) in self?.mInternalValue?.x_property.setProp (inValue) }
  }

  //····················································································································
  //   Proxy of 'y' stored property
  //····················································································································

  let y_property = EBPropertyProxy_Int ()

  var y_property_selection : EBSelection <Int> {
    switch (self.y_property.prop) {
    case .empty :
      return .empty
    case .multiple :
      return .multiple
    case .single (let v) :
      return .single (v)
    }
  }

  //····················································································································
  //   Proxy of 'width' stored property
  //····················································································································

  let width_property = EBPropertyProxy_Int ()

  var width_property_selection : EBSelection <Int> {
    switch (self.width_property.prop) {
    case .empty :
      return .empty
    case .multiple :
      return .multiple
    case .single (let v) :
      return .single (v)
    }
  }

  //····················································································································
  //   Proxy of 'height' stored property
  //····················································································································

  let height_property = EBPropertyProxy_Int ()

  var height_property_selection : EBSelection <Int> {
    switch (self.height_property.prop) {
    case .empty :
      return .empty
    case .multiple :
      return .multiple
    case .single (let v) :
      return .single (v)
    }
  }

  //····················································································································
  //   Proxy of 'shape' stored property
  //····················································································································

  let shape_property = EBPropertyProxy_PadShape ()

  var shape_property_selection : EBSelection <PadShape> {
    switch (self.shape_property.prop) {
    case .empty :
      return .empty
    case .multiple :
      return .multiple
    case .single (let v) :
      return .single (v)
    }
  }

  //····················································································································
  //   Proxy of 'rotation' stored property
  //····················································································································

  let rotation_property = EBPropertyProxy_Int ()

  var rotation_property_selection : EBSelection <Int> {
    switch (self.rotation_property.prop) {
    case .empty :
      return .empty
    case .multiple :
      return .multiple
    case .single (let v) :
      return .single (v)
    }
  }

  //····················································································································
  //   Proxy of 'x' stored property
  //····················································································································

  let x_property = EBPropertyProxy_Int ()

  var x_property_selection : EBSelection <Int> {
    switch (self.x_property.prop) {
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
//    TransientObject BoardModelPad
//----------------------------------------------------------------------------------------------------------------------

class TransientObject_BoardModelPad : ReadOnlyObject_BoardModelPad {

  //····················································································································
  //   Data provider
  //····················································································································

  private var mDataProvider : ReadOnlyObject_BoardModelPad? = nil
  private var mTransientKind : PropertyKind = .empty

  //····················································································································

  func setDataProvider (_ inProvider : ReadOnlyObject_BoardModelPad?) {
    if self.mDataProvider !== inProvider {
      self.mDataProvider?.detachClient (self)
      self.mDataProvider = inProvider
      self.mDataProvider?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newObject : BoardModelPad? 
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

  override var prop : EBSelection < BoardModelPad? > {
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

  override var propval : BoardModelPad? { return self.mInternalValue }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//    ReadWriteObject_BoardModelPad
//----------------------------------------------------------------------------------------------------------------------

class ReadWriteObject_BoardModelPad : ReadOnlyObject_BoardModelPad {

  //····················································································································
 
  func setProp (_ inValue : BoardModelPad?) { } // Abstract method
  
  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//    Proxy: ProxyObject_BoardModelPad
//----------------------------------------------------------------------------------------------------------------------

final class ProxyObject_BoardModelPad : ReadWriteObject_BoardModelPad {

  //····················································································································

  private var mModel : ReadWriteObject_BoardModelPad? = nil

  //····················································································································

  func setModel (_ inModel : ReadWriteObject_BoardModelPad?) {
    if self.mModel !== inModel {
      self.mModel?.detachClient (self)
      self.mModel = inModel
      self.mModel?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newModel : BoardModelPad?
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

  override func setProp (_ inValue : BoardModelPad?) {
    self.mModel?.setProp (inValue)
  }

  //····················································································································

  override var prop : EBSelection < BoardModelPad? > {
    if let model = self.mModel {
      return model.prop
    }else{
      return .empty
    }
  }

  //····················································································································

  override var propval : BoardModelPad? {
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
//    StoredObject_BoardModelPad 
//----------------------------------------------------------------------------------------------------------------------

final class StoredObject_BoardModelPad : ReadWriteObject_BoardModelPad, EBSignatureObserverProtocol, EBObservableObjectProtocol {

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

  private var mSetOppositeRelationship : Optional < (_ inManagedObject : BoardModelPad) -> Void > = nil
  private var mResetOppositeRelationship : Optional < (_ inManagedObject : BoardModelPad) -> Void > = nil

  //····················································································································

  func setOppositeRelationShipFunctions (setter inSetter : @escaping (_ inManagedObject : BoardModelPad) -> Void,
                                         resetter inResetter : @escaping (_ inManagedObject : BoardModelPad) -> Void) {
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

  override func notifyModelDidChangeFrom (oldValue inOldValue : BoardModelPad?) {
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

  override var prop : EBSelection < BoardModelPad? > {
    if let object = self.mInternalValue {
      return .single (object)
    }else{
      return .empty
    }
  }

  //····················································································································

  override func setProp (_ inValue : BoardModelPad?) { self.mInternalValue = inValue }

  //····················································································································

  override var propval : BoardModelPad? { return self.mInternalValue }

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

