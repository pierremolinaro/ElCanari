//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------
//    ReadOnlyObject_DeviceSymbolTypeInProject 
//----------------------------------------------------------------------------------------------------------------------

class ReadOnlyObject_DeviceSymbolTypeInProject : ReadOnlyAbstractObjectProperty <DeviceSymbolTypeInProject> {

  //····················································································································

  internal override func notifyModelDidChangeFrom (oldValue inOldValue : DeviceSymbolTypeInProject?) {
    super.notifyModelDidChangeFrom (oldValue: inOldValue)
  //--- Remove observers from removed objects
    inOldValue?.mSymbolTypeName_property.removeEBObserversFrom (&self.mObserversOf_mSymbolTypeName) // Stored property
    inOldValue?.mStrokeBezierPath_property.removeEBObserversFrom (&self.mObserversOf_mStrokeBezierPath) // Stored property
    inOldValue?.mFilledBezierPath_property.removeEBObserversFrom (&self.mObserversOf_mFilledBezierPath) // Stored property
  //--- Add observers to added objects
    self.mInternalValue?.mSymbolTypeName_property.addEBObserversFrom (&self.mObserversOf_mSymbolTypeName) // Stored property
    self.mInternalValue?.mStrokeBezierPath_property.addEBObserversFrom (&self.mObserversOf_mStrokeBezierPath) // Stored property
    self.mInternalValue?.mFilledBezierPath_property.addEBObserversFrom (&self.mObserversOf_mFilledBezierPath) // Stored property
  }

  //····················································································································
  //   Observers of 'mSymbolTypeName' stored property
  //····················································································································

  private var mObserversOf_mSymbolTypeName = EBWeakEventSet ()

  //····················································································································

  var mSymbolTypeName_property_selection : EBSelection <String?> {
    if let model = self.propval {
      switch (model.mSymbolTypeName_property_selection) {
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

  final func addEBObserverOf_mSymbolTypeName (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_mSymbolTypeName.insert (inObserver)
    switch self.prop {
    case .empty, .multiple :
      break
    case .single (let v) :
       v?.mSymbolTypeName_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_mSymbolTypeName (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_mSymbolTypeName.remove (inObserver)
    switch self.prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.mSymbolTypeName_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································

  final func addEBObserversOf_mSymbolTypeName_toElementsOfSet (_ inSet : Set<DeviceSymbolTypeInProject>) {
    for managedObject in inSet {
      self.mObserversOf_mSymbolTypeName.apply { (_ observer : EBEvent) in
        managedObject.mSymbolTypeName_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_mSymbolTypeName_fromElementsOfSet (_ inSet : Set<DeviceSymbolTypeInProject>) {
    self.mObserversOf_mSymbolTypeName.apply { (_ observer : EBEvent) in
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.mSymbolTypeName_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'mStrokeBezierPath' stored property
  //····················································································································

  private var mObserversOf_mStrokeBezierPath = EBWeakEventSet ()

  //····················································································································

  var mStrokeBezierPath_property_selection : EBSelection <NSBezierPath?> {
    if let model = self.propval {
      switch (model.mStrokeBezierPath_property_selection) {
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

  final func addEBObserverOf_mStrokeBezierPath (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_mStrokeBezierPath.insert (inObserver)
    switch self.prop {
    case .empty, .multiple :
      break
    case .single (let v) :
       v?.mStrokeBezierPath_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_mStrokeBezierPath (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_mStrokeBezierPath.remove (inObserver)
    switch self.prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.mStrokeBezierPath_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································

  final func addEBObserversOf_mStrokeBezierPath_toElementsOfSet (_ inSet : Set<DeviceSymbolTypeInProject>) {
    for managedObject in inSet {
      self.mObserversOf_mStrokeBezierPath.apply { (_ observer : EBEvent) in
        managedObject.mStrokeBezierPath_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_mStrokeBezierPath_fromElementsOfSet (_ inSet : Set<DeviceSymbolTypeInProject>) {
    self.mObserversOf_mStrokeBezierPath.apply { (_ observer : EBEvent) in
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.mStrokeBezierPath_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'mFilledBezierPath' stored property
  //····················································································································

  private var mObserversOf_mFilledBezierPath = EBWeakEventSet ()

  //····················································································································

  var mFilledBezierPath_property_selection : EBSelection <NSBezierPath?> {
    if let model = self.propval {
      switch (model.mFilledBezierPath_property_selection) {
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

  final func addEBObserverOf_mFilledBezierPath (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_mFilledBezierPath.insert (inObserver)
    switch self.prop {
    case .empty, .multiple :
      break
    case .single (let v) :
       v?.mFilledBezierPath_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_mFilledBezierPath (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_mFilledBezierPath.remove (inObserver)
    switch self.prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.mFilledBezierPath_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································

  final func addEBObserversOf_mFilledBezierPath_toElementsOfSet (_ inSet : Set<DeviceSymbolTypeInProject>) {
    for managedObject in inSet {
      self.mObserversOf_mFilledBezierPath.apply { (_ observer : EBEvent) in
        managedObject.mFilledBezierPath_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_mFilledBezierPath_fromElementsOfSet (_ inSet : Set<DeviceSymbolTypeInProject>) {
    self.mObserversOf_mFilledBezierPath.apply { (_ observer : EBEvent) in
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.mFilledBezierPath_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//    TransientObject DeviceSymbolTypeInProject
//----------------------------------------------------------------------------------------------------------------------

class TransientObject_DeviceSymbolTypeInProject : ReadOnlyObject_DeviceSymbolTypeInProject {

  //····················································································································
  //   Data provider
  //····················································································································

  private var mDataProvider : ReadOnlyObject_DeviceSymbolTypeInProject? = nil
  private var mTransientKind : PropertyKind = .empty

  //····················································································································

  func setDataProvider (_ inProvider : ReadOnlyObject_DeviceSymbolTypeInProject?) {
    if self.mDataProvider !== inProvider {
      self.mDataProvider?.detachClient (self)
      self.mDataProvider = inProvider
      self.mDataProvider?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newObject : DeviceSymbolTypeInProject? 
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

  override var prop : EBSelection < DeviceSymbolTypeInProject? > {
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

  override var propval : DeviceSymbolTypeInProject? { return self.mInternalValue }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//    ReadWriteObject_DeviceSymbolTypeInProject
//----------------------------------------------------------------------------------------------------------------------

class ReadWriteObject_DeviceSymbolTypeInProject : ReadOnlyObject_DeviceSymbolTypeInProject {

  //····················································································································
 
  func setProp (_ inValue : DeviceSymbolTypeInProject?) { } // Abstract method
  
  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//    Proxy: ProxyObject_DeviceSymbolTypeInProject
//----------------------------------------------------------------------------------------------------------------------

final class ProxyObject_DeviceSymbolTypeInProject : ReadWriteObject_DeviceSymbolTypeInProject {

  //····················································································································

  private var mModel : ReadWriteObject_DeviceSymbolTypeInProject? = nil

  //····················································································································

  func setModel (_ inModel : ReadWriteObject_DeviceSymbolTypeInProject?) {
    if self.mModel !== inModel {
      self.mModel?.detachClient (self)
      self.mModel = inModel
      self.mModel?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newModel : DeviceSymbolTypeInProject?
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

  override func setProp (_ inValue : DeviceSymbolTypeInProject?) {
    self.mModel?.setProp (inValue)
  }

  //····················································································································

  override var prop : EBSelection < DeviceSymbolTypeInProject? > {
    if let model = self.mModel {
      return model.prop
    }else{
      return .empty
    }
  }

  //····················································································································

  override var propval : DeviceSymbolTypeInProject? {
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
//    StoredObject_DeviceSymbolTypeInProject 
//----------------------------------------------------------------------------------------------------------------------

final class StoredObject_DeviceSymbolTypeInProject : ReadWriteObject_DeviceSymbolTypeInProject, EBSignatureObserverProtocol, EBObservableObjectProtocol {

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

  private var mSetOppositeRelationship : Optional < (_ inManagedObject : DeviceSymbolTypeInProject) -> Void > = nil
  private var mResetOppositeRelationship : Optional < (_ inManagedObject : DeviceSymbolTypeInProject) -> Void > = nil

  //····················································································································

  func setOppositeRelationShipFunctions (setter inSetter : @escaping (_ inManagedObject : DeviceSymbolTypeInProject) -> Void,
                                         resetter inResetter : @escaping (_ inManagedObject : DeviceSymbolTypeInProject) -> Void) {
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

  override func notifyModelDidChangeFrom (oldValue inOldValue : DeviceSymbolTypeInProject?) {
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

  override var prop : EBSelection < DeviceSymbolTypeInProject? > {
    if let object = self.mInternalValue {
      return .single (object)
    }else{
      return .empty
    }
  }

  //····················································································································

  override func setProp (_ inValue : DeviceSymbolTypeInProject?) { self.mInternalValue = inValue }

  //····················································································································

  override var propval : DeviceSymbolTypeInProject? { return self.mInternalValue }

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

