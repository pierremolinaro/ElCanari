//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------
//    ReadOnlyObject_SymbolSolidRect 
//----------------------------------------------------------------------------------------------------------------------

class ReadOnlyObject_SymbolSolidRect : ReadOnlyAbstractObjectProperty <SymbolSolidRect> {

  //····················································································································

  internal override func notifyModelDidChangeFrom (oldValue inOldValue : SymbolSolidRect?) {
    super.notifyModelDidChangeFrom (oldValue: inOldValue)
  //--- Remove observers from removed objects
    inOldValue?.y_property.removeEBObserver (self.y_property) // Stored property
    inOldValue?.width_property.removeEBObserver (self.width_property) // Stored property
    inOldValue?.height_property.removeEBObserver (self.height_property) // Stored property
    inOldValue?.x_property.removeEBObserver (self.x_property) // Stored property
    inOldValue?.filledBezierPath_property.removeEBObserver (self.filledBezierPath_property) // Transient property
    inOldValue?.objectDisplay_property.removeEBObserver (self.objectDisplay_property) // Transient property
    inOldValue?.selectionDisplay_property.removeEBObserver (self.selectionDisplay_property) // Transient property
    inOldValue?.issues_property.removeEBObserver (self.issues_property) // Transient property
  //--- Add observers to added objects
    self.mInternalValue?.y_property.addEBObserver (self.y_property) // Stored property
    self.mInternalValue?.width_property.addEBObserver (self.width_property) // Stored property
    self.mInternalValue?.height_property.addEBObserver (self.height_property) // Stored property
    self.mInternalValue?.x_property.addEBObserver (self.x_property) // Stored property
    self.mInternalValue?.filledBezierPath_property.addEBObserver (self.filledBezierPath_property) // Transient property
    self.mInternalValue?.objectDisplay_property.addEBObserver (self.objectDisplay_property) // Transient property
    self.mInternalValue?.selectionDisplay_property.addEBObserver (self.selectionDisplay_property) // Transient property
    self.mInternalValue?.issues_property.addEBObserver (self.issues_property) // Transient property
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
    self.x_property.mReadModelFunction = { [weak self] in self?.mInternalValue?.x_property.prop ?? .empty }
    self.x_property.mWriteModelFunction = { [weak self] (inValue : Int) in self?.mInternalValue?.x_property.setProp (inValue) }
    self.filledBezierPath_property.mReadModelFunction = { [weak self] in self?.mInternalValue?.filledBezierPath_property.prop ?? .empty }
    self.objectDisplay_property.mReadModelFunction = { [weak self] in self?.mInternalValue?.objectDisplay_property.prop ?? .empty }
    self.selectionDisplay_property.mReadModelFunction = { [weak self] in self?.mInternalValue?.selectionDisplay_property.prop ?? .empty }
    self.issues_property.mReadModelFunction = { [weak self] in self?.mInternalValue?.issues_property.prop ?? .empty }
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
  //   Observer of 'filledBezierPath' transient property
  //····················································································································

  let filledBezierPath_property = EBTransientProperty_NSBezierPath ()

  var filledBezierPath_property_selection : EBSelection <NSBezierPath> {
    switch (self.filledBezierPath_property.prop) {
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
  //   Observer of 'issues' transient property
  //····················································································································

  let issues_property = EBTransientProperty_CanariIssueArray ()

  var issues_property_selection : EBSelection <CanariIssueArray> {
    switch (self.issues_property.prop) {
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
//    TransientObject SymbolSolidRect
//----------------------------------------------------------------------------------------------------------------------

class TransientObject_SymbolSolidRect : ReadOnlyObject_SymbolSolidRect {

  //····················································································································
  //   Data provider
  //····················································································································

  private var mDataProvider : ReadOnlyObject_SymbolSolidRect? = nil
  private var mTransientKind : PropertyKind = .empty

  //····················································································································

  func setDataProvider (_ inProvider : ReadOnlyObject_SymbolSolidRect?) {
    if self.mDataProvider !== inProvider {
      self.mDataProvider?.detachClient (self)
      self.mDataProvider = inProvider
      self.mDataProvider?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newObject : SymbolSolidRect? 
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

  override var prop : EBSelection < SymbolSolidRect? > {
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

  override var propval : SymbolSolidRect? { return self.mInternalValue }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//    ReadWriteObject_SymbolSolidRect
//----------------------------------------------------------------------------------------------------------------------

class ReadWriteObject_SymbolSolidRect : ReadOnlyObject_SymbolSolidRect {

  //····················································································································
 
  func setProp (_ inValue : SymbolSolidRect?) { } // Abstract method
  
  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//    Proxy: ProxyObject_SymbolSolidRect
//----------------------------------------------------------------------------------------------------------------------

final class ProxyObject_SymbolSolidRect : ReadWriteObject_SymbolSolidRect {

  //····················································································································

  private var mModel : ReadWriteObject_SymbolSolidRect? = nil

  //····················································································································

  func setModel (_ inModel : ReadWriteObject_SymbolSolidRect?) {
    if self.mModel !== inModel {
      self.mModel?.detachClient (self)
      self.mModel = inModel
      self.mModel?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newModel : SymbolSolidRect?
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

  override func setProp (_ inValue : SymbolSolidRect?) {
    self.mModel?.setProp (inValue)
  }

  //····················································································································

  override var prop : EBSelection < SymbolSolidRect? > {
    if let model = self.mModel {
      return model.prop
    }else{
      return .empty
    }
  }

  //····················································································································

  override var propval : SymbolSolidRect? {
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
//    StoredObject_SymbolSolidRect 
//----------------------------------------------------------------------------------------------------------------------

final class StoredObject_SymbolSolidRect : ReadWriteObject_SymbolSolidRect, EBSignatureObserverProtocol, EBObservableObjectProtocol {

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

  private var mSetOppositeRelationship : Optional < (_ inManagedObject : SymbolSolidRect) -> Void > = nil
  private var mResetOppositeRelationship : Optional < (_ inManagedObject : SymbolSolidRect) -> Void > = nil

  //····················································································································

  func setOppositeRelationShipFunctions (setter inSetter : @escaping (_ inManagedObject : SymbolSolidRect) -> Void,
                                         resetter inResetter : @escaping (_ inManagedObject : SymbolSolidRect) -> Void) {
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

  override func notifyModelDidChangeFrom (oldValue inOldValue : SymbolSolidRect?) {
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

  override var prop : EBSelection < SymbolSolidRect? > {
    if let object = self.mInternalValue {
      return .single (object)
    }else{
      return .empty
    }
  }

  //····················································································································

  override func setProp (_ inValue : SymbolSolidRect?) { self.mInternalValue = inValue }

  //····················································································································

  override var propval : SymbolSolidRect? { return self.mInternalValue }

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

