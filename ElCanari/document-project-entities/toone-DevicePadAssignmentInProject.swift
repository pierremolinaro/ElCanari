//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------
//    ReadOnlyObject_DevicePadAssignmentInProject 
//----------------------------------------------------------------------------------------------------------------------

class ReadOnlyObject_DevicePadAssignmentInProject : ReadOnlyAbstractObjectProperty <DevicePadAssignmentInProject> {

  //····················································································································

  internal override func notifyModelDidChangeFrom (oldValue inOldValue : DevicePadAssignmentInProject?) {
    super.notifyModelDidChangeFrom (oldValue: inOldValue)
  //--- Remove observers from removed objects
    if let oldValue = inOldValue {
      oldValue.mPadName_property.removeEBObserversFrom (&self.mObserversOf_mPadName) // Stored property
      oldValue.pinPadAssignment_property.removeEBObserversFrom (&self.mObserversOf_pinPadAssignment) // Transient property
      oldValue.descriptor_property.removeEBObserversFrom (&self.mObserversOf_descriptor) // Transient property
    }
  //--- Add observers to added objects
    if let newValue = self.mInternalValue {
      newValue.mPadName_property.addEBObserversFrom (&self.mObserversOf_mPadName) // Stored property
      newValue.pinPadAssignment_property.addEBObserversFrom (&self.mObserversOf_pinPadAssignment) // Transient property
      newValue.descriptor_property.addEBObserversFrom (&self.mObserversOf_descriptor) // Transient property
    }
  }

  //····················································································································
  //   Observers of 'mPadName' stored property
  //····················································································································

  private final var mObserversOf_mPadName = EBWeakEventSet ()

  //····················································································································

  final var mPadName_property_selection : EBSelection <String?> {
    if let model = self.propval {
      switch (model.mPadName_property_selection) {
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

  final func addEBObserverOf_mPadName (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_mPadName.insert (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
       v?.mPadName_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_mPadName (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_mPadName.remove (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.mPadName_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································
  //   Observers of 'pinPadAssignment' transient property
  //····················································································································

  private final var mObserversOf_pinPadAssignment = EBWeakEventSet ()

  //····················································································································

  final var pinPadAssignment_property_selection : EBSelection <ThreeStrings?> {
    if let model = self.propval {
      switch (model.pinPadAssignment_property_selection) {
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

  final func addEBObserverOf_pinPadAssignment (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_pinPadAssignment.insert (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.pinPadAssignment_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_pinPadAssignment (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_pinPadAssignment.remove (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.pinPadAssignment_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································

  final func addEBObserversOf_pinPadAssignment_toElementsOfSet (_ inSet : Set<DevicePadAssignmentInProject>) {
    for managedObject in inSet {
      self.mObserversOf_pinPadAssignment.apply { (_ observer : EBEvent) in
        managedObject.pinPadAssignment_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_pinPadAssignment_fromElementsOfSet (_ inSet : Set<DevicePadAssignmentInProject>) {
    for managedObject in inSet {
      self.mObserversOf_pinPadAssignment.apply { (_ observer : EBEvent) in
        managedObject.pinPadAssignment_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'descriptor' transient property
  //····················································································································

  private final var mObserversOf_descriptor = EBWeakEventSet ()

  //····················································································································

  final var descriptor_property_selection : EBSelection <PinPadAssignmentInProject?> {
    if let model = self.propval {
      switch (model.descriptor_property_selection) {
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

  final func addEBObserverOf_descriptor (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_descriptor.insert (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.descriptor_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_descriptor (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_descriptor.remove (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.descriptor_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································

  final func addEBObserversOf_descriptor_toElementsOfSet (_ inSet : Set<DevicePadAssignmentInProject>) {
    for managedObject in inSet {
      self.mObserversOf_descriptor.apply { (_ observer : EBEvent) in
        managedObject.descriptor_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_descriptor_fromElementsOfSet (_ inSet : Set<DevicePadAssignmentInProject>) {
    for managedObject in inSet {
      self.mObserversOf_descriptor.apply { (_ observer : EBEvent) in
        managedObject.descriptor_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   INIT 
  //····················································································································

 // override init () {
//    super.init ()
  //--- Configure mPadName simple stored property
 /*   self.mPadName_property.mReadModelFunction = { [weak self] in
      if let selection = self?.mInternalValue?.mPadName_property.selection {
        return selection
      }else{
        return .empty
      }
    }
    self.mPadName_property.mWriteModelFunction = { [weak self] in
      self?.mInternalValue?.mPadName_property.setProp ($0)
    }
    self.none_property.addEBObserver (self.mPadName_property) */
 // }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//   TransientObject DevicePadAssignmentInProject
//----------------------------------------------------------------------------------------------------------------------

final class TransientObject_DevicePadAssignmentInProject : ReadOnlyObject_DevicePadAssignmentInProject {

  //····················································································································
  //   Data provider
  //····················································································································

  private var mDataProvider : ReadOnlyObject_DevicePadAssignmentInProject? = nil
  private var mTransientKind : PropertyKind = .empty

  //····················································································································

  func setDataProvider (_ inProvider : ReadOnlyObject_DevicePadAssignmentInProject?) {
    if self.mDataProvider !== inProvider {
      self.mDataProvider?.detachClient (self)
      self.mDataProvider = inProvider
      self.mDataProvider?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newObject : DevicePadAssignmentInProject? 
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

  override var selection : EBSelection < DevicePadAssignmentInProject? > {
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

  override var propval : DevicePadAssignmentInProject? { return self.mInternalValue }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//    ReadWriteObject_DevicePadAssignmentInProject
//----------------------------------------------------------------------------------------------------------------------

class ReadWriteObject_DevicePadAssignmentInProject : ReadOnlyObject_DevicePadAssignmentInProject {

  //····················································································································
 
  func setProp (_ inValue : DevicePadAssignmentInProject?) { } // Abstract method
  
  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//    Proxy: ProxyObject_DevicePadAssignmentInProject
//----------------------------------------------------------------------------------------------------------------------

final class ProxyObject_DevicePadAssignmentInProject : ReadWriteObject_DevicePadAssignmentInProject {

  //····················································································································

  private var mModel : ReadWriteObject_DevicePadAssignmentInProject? = nil

  //····················································································································

  func setModel (_ inModel : ReadWriteObject_DevicePadAssignmentInProject?) {
    if self.mModel !== inModel {
      self.mModel?.detachClient (self)
      self.mModel = inModel
      self.mModel?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newModel : DevicePadAssignmentInProject?
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

  override func setProp (_ inValue : DevicePadAssignmentInProject?) {
    self.mModel?.setProp (inValue)
  }

  //····················································································································

  override var selection : EBSelection < DevicePadAssignmentInProject? > {
    if let model = self.mModel {
      return model.selection
    }else{
      return .empty
    }
  }

  //····················································································································

  override var propval : DevicePadAssignmentInProject? {
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
//    StoredObject_DevicePadAssignmentInProject 
//----------------------------------------------------------------------------------------------------------------------

final class StoredObject_DevicePadAssignmentInProject : ReadWriteObject_DevicePadAssignmentInProject, EBSignatureObserverProtocol, EBObservableObjectProtocol {

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

  private var mSetOppositeRelationship : Optional < (_ inManagedObject : DevicePadAssignmentInProject) -> Void > = nil
  private var mResetOppositeRelationship : Optional < (_ inManagedObject : DevicePadAssignmentInProject) -> Void > = nil

  //····················································································································

  func setOppositeRelationShipFunctions (setter inSetter : @escaping (_ inManagedObject : DevicePadAssignmentInProject) -> Void,
                                         resetter inResetter : @escaping (_ inManagedObject : DevicePadAssignmentInProject) -> Void) {
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

  override func notifyModelDidChangeFrom (oldValue inOldValue : DevicePadAssignmentInProject?) {
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

  override var selection : EBSelection < DevicePadAssignmentInProject? > {
    if let object = self.mInternalValue {
      return .single (object)
    }else{
      return .empty
    }
  }

  //····················································································································

  override func setProp (_ inValue : DevicePadAssignmentInProject?) { self.mInternalValue = inValue }

  //····················································································································

  override var propval : DevicePadAssignmentInProject? { return self.mInternalValue }

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

