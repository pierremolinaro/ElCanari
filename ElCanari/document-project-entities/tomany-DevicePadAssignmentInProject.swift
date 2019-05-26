//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    ReadOnlyArrayOf_DevicePadAssignmentInProject
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class ReadOnlyArrayOf_DevicePadAssignmentInProject : ReadOnlyAbstractArrayProperty <DevicePadAssignmentInProject> {

  //····················································································································

  internal override func updateObservers (removedSet inRemovedSet : Set <DevicePadAssignmentInProject>, addedSet inAddedSet : Set <DevicePadAssignmentInProject>) {
    super.updateObservers (removedSet: inRemovedSet, addedSet: inAddedSet)
  //--- Remove observers from removed objects
    self.removeEBObserversOf_mPadName_fromElementsOfSet (inRemovedSet) // Stored property
    self.removeEBObserversOf_pinPadAssignment_fromElementsOfSet (inRemovedSet) // Transient property
    self.removeEBObserversOf_descriptor_fromElementsOfSet (inRemovedSet) // Transient property
  //--- Add observers to added objects
    self.addEBObserversOf_mPadName_toElementsOfSet (inAddedSet) // Stored property
    self.addEBObserversOf_pinPadAssignment_toElementsOfSet (inAddedSet) // Transient property
    self.addEBObserversOf_descriptor_toElementsOfSet (inAddedSet) // Transient property
  }

  //····················································································································
  //   Observers of 'mPadName' stored property
  //····················································································································

  private var mObserversOf_mPadName = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_mPadName (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_mPadName.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.mPadName_property.addEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_mPadName (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_mPadName.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.mPadName_property.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_mPadName_toElementsOfSet (_ inSet : Set<DevicePadAssignmentInProject>) {
    for managedObject in inSet {
      self.mObserversOf_mPadName.apply { (_ observer : EBEvent) in
        managedObject.mPadName_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_mPadName_fromElementsOfSet (_ inSet : Set<DevicePadAssignmentInProject>) {
    self.mObserversOf_mPadName.apply { (_ observer : EBEvent) in
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.mPadName_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'pinPadAssignment' transient property
  //····················································································································

  private var mObserversOf_pinPadAssignment = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_pinPadAssignment (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_pinPadAssignment.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.pinPadAssignment_property.addEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_pinPadAssignment (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_pinPadAssignment.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.pinPadAssignment_property.removeEBObserver (inObserver)
      }
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

  private var mObserversOf_descriptor = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_descriptor (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_descriptor.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.descriptor_property.addEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_descriptor (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_descriptor.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.descriptor_property.removeEBObserver (inObserver)
      }
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

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    TransientArrayOf DevicePadAssignmentInProject
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class TransientArrayOf_DevicePadAssignmentInProject : ReadOnlyArrayOf_DevicePadAssignmentInProject {

  //····················································································································
  //   Data provider
  //····················································································································

  private var mDataProvider : ReadOnlyArrayOf_DevicePadAssignmentInProject? = nil
  private var mTransientKind : PropertyKind = .empty

  //····················································································································

  func setDataProvider (_ inProvider : ReadOnlyArrayOf_DevicePadAssignmentInProject?) {
    if self.mDataProvider !== inProvider {
      self.mDataProvider?.detachClient (self)
      self.mDataProvider = inProvider
      self.mDataProvider?.attachClient (self)
      if inProvider == nil {
        self.mInternalArrayValue = []
      }
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newArray : [DevicePadAssignmentInProject] 
    if let dataProvider = self.mDataProvider {
      switch dataProvider.prop {
      case .empty :
        newArray = []
        self.mTransientKind = .empty
      case .single (let v) :
        newArray = v
        self.mTransientKind = .single
       case .multiple :
        newArray = []
        self.mTransientKind = .multiple
      }
    }else{
      newArray = []
      self.mTransientKind = .empty
    }
    self.mInternalArrayValue = newArray
    super.notifyModelDidChange ()
  }

  //····················································································································

  override var prop : EBSelection < [DevicePadAssignmentInProject] > {
    switch self.mTransientKind {
    case .empty :
      return .empty
    case .single :
      return .single (self.mInternalArrayValue)
    case .multiple :
      return .multiple
    }
  }

  //····················································································································

  override var propval : [DevicePadAssignmentInProject] { return self.mInternalArrayValue }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    TransientArrayOfSuperOf DevicePadAssignmentInProject
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class TransientArrayOfSuperOf_DevicePadAssignmentInProject <SUPER : EBManagedObject> : ReadOnlyArrayOf_DevicePadAssignmentInProject {

  //····················································································································
  //   Data provider
  //····················································································································

  private var mDataProvider : ReadOnlyAbstractArrayProperty <SUPER>? = nil
  private var mTransientKind : PropertyKind = .empty

  //····················································································································

  func setDataProvider (_ inProvider : ReadOnlyAbstractArrayProperty <SUPER>?) {
    if self.mDataProvider !== inProvider {
      self.mDataProvider?.detachClient (self)
      self.mDataProvider = inProvider
      self.mDataProvider?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    var newModelArray : [SUPER] 
    if let dataProvider = self.mDataProvider {
      switch dataProvider.prop {
      case .empty :
        newModelArray = []
        self.mTransientKind = .empty
      case .single (let v) :
        newModelArray = v
        self.mTransientKind = .single
       case .multiple :
        newModelArray = []
        self.mTransientKind = .multiple
      }
    }else{
      newModelArray = []
      self.mTransientKind = .empty
    }
    var newArray = [DevicePadAssignmentInProject] ()
    for superObject in newModelArray {
      if let object = superObject as? DevicePadAssignmentInProject {
        newArray.append (object)
      }
    }
    self.mInternalArrayValue = newArray
    super.notifyModelDidChange ()
  }

  //····················································································································

  override var prop : EBSelection < [DevicePadAssignmentInProject] > {
    switch self.mTransientKind {
    case .empty :
      return .empty
    case .single :
      return .single (self.mInternalArrayValue)
    case .multiple :
      return .multiple
    }
  }

  //····················································································································

  override var propval : [DevicePadAssignmentInProject] { return self.mInternalArrayValue }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    To many relationship read write: DevicePadAssignmentInProject
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class ReadWriteArrayOf_DevicePadAssignmentInProject : ReadOnlyArrayOf_DevicePadAssignmentInProject {

  //····················································································································
 
  func setProp (_ value :  [DevicePadAssignmentInProject]) { } // Abstract method
  
  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    Proxy: ProxyArrayOf_DevicePadAssignmentInProject
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class ProxyArrayOf_DevicePadAssignmentInProject : ReadWriteArrayOf_DevicePadAssignmentInProject {

  //····················································································································

  private var mModel : ReadWriteArrayOf_DevicePadAssignmentInProject? = nil

  //····················································································································

  func setModel (_ inModel : ReadWriteArrayOf_DevicePadAssignmentInProject?) {
    if self.mModel !== inModel {
      self.mModel?.detachClient (self)
      self.mModel = inModel
      self.mModel?.attachClient (self)
      /* if inModel == nil {
        self.mInternalArrayValue = []
      } */
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newModelArray : [DevicePadAssignmentInProject]
    if let model = self.mModel {
      switch model.prop {
      case .empty :
        newModelArray = []
      case .single (let v) :
        newModelArray = v
       case .multiple :
        newModelArray = []
      }
    }else{
      newModelArray = []
    }
    self.mInternalArrayValue = newModelArray
    super.notifyModelDidChange ()
  }

  //····················································································································

  override func setProp (_ inArrayValue : [DevicePadAssignmentInProject]) {
    self.mModel?.setProp (inArrayValue)
  }

  //····················································································································

  override var prop : EBSelection < [DevicePadAssignmentInProject] > {
    if let model = self.mModel {
      return model.prop
    }else{
      return .empty
    }
  }

  //····················································································································

  override var propval : [DevicePadAssignmentInProject] {
    if let model = self.mModel {
      switch model.prop {
      case .empty, .multiple :
        return []
      case .single (let v) :
        return v
      }
    }else{
      return []
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    To many relationship: DevicePadAssignmentInProject
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class StoredArrayOf_DevicePadAssignmentInProject : ReadWriteArrayOf_DevicePadAssignmentInProject, EBSignatureObserverProtocol {

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

  private var mPrefKey : String? = nil

  //····················································································································

  var mValueExplorer : NSPopUpButton? {
    didSet {
      if let unwrappedExplorer = self.mValueExplorer {
        switch prop {
        case .empty, .multiple :
          break ;
        case .single (let v) :
          updateManagedObjectToManyRelationshipDisplay (objectArray: v, popUpButton: unwrappedExplorer)
        }
      }
    }
  }

  //····················································································································
  //  Init
  //····················································································································

  convenience init (prefKey : String) {
    self.init ()
    self.mPrefKey = prefKey
    if let array = UserDefaults.standard.array (forKey: prefKey) as? [NSDictionary] {
      var objectArray = [DevicePadAssignmentInProject] ()
      for dictionary in array {
        if let object = newInstanceOfEntityNamed (self.ebUndoManager, "DevicePadAssignmentInProject") as? DevicePadAssignmentInProject {
          object.setUpAtomicPropertiesWithDictionary (dictionary)
          objectArray.append (object)
        }
      }
      self.setProp (objectArray)
    }
  }

  //····················································································································
  // Model will change 
  //····················································································································

  override func notifyModelDidChangeFrom (oldValue inOldValue : [DevicePadAssignmentInProject]) {
  //--- Register old value in undo manager
    self.ebUndoManager?.registerUndo (withTarget: self, selector:#selector(performUndo(_:)), object: inOldValue)
  //---
    super.notifyModelDidChangeFrom (oldValue: inOldValue)
  }
 
  //····················································································································

  @objc func performUndo (_ oldValue : [DevicePadAssignmentInProject]) {
    self.mInternalArrayValue = oldValue
  }
 
  //····················································································································
  // Model did change 
  //····················································································································

  override func notifyModelDidChange () {
  //--- Update explorer
    if let valueExplorer = self.mValueExplorer {
      updateManagedObjectToManyRelationshipDisplay (objectArray: self.mInternalArrayValue, popUpButton: valueExplorer)
    }
  //--- Notify observers
    self.postEvent ()
    self.clearSignatureCache ()
  //--- Write in preferences ?
    self.writeInPreferences ()
  //---
    super.notifyModelDidChange ()
  }

  //····················································································································
  // Update observers 
  //····················································································································

  internal override func updateObservers (removedSet inRemovedSet : Set <DevicePadAssignmentInProject>, addedSet inAddedSet : Set <DevicePadAssignmentInProject>) {
    for managedObject in inRemovedSet {
      managedObject.setSignatureObserver (observer: nil)
      self.mResetOppositeRelationship? (managedObject)
    }
  //---
    for managedObject in inAddedSet {
      managedObject.setSignatureObserver (observer: self)
      self.mSetOppositeRelationship? (managedObject)
    }
  //---
    super.updateObservers (removedSet: inRemovedSet, addedSet: inAddedSet)
 }
 
  //····················································································································

  override var prop : EBSelection < [DevicePadAssignmentInProject] > { return .single (self.mInternalArrayValue) }

  //····················································································································

  override func setProp (_ inValue : [DevicePadAssignmentInProject]) { self.mInternalArrayValue = inValue }

  //····················································································································

  override var propval : [DevicePadAssignmentInProject] { return self.mInternalArrayValue }

  //····················································································································

  private func writeInPreferences () {
    if let prefKey = self.mPrefKey {
      var dictionaryArray = [NSDictionary] ()
      for object in self.mInternalArrayValue {
        let d = NSMutableDictionary ()
        object.saveIntoDictionary (d)
        d [ENTITY_KEY] = nil // Remove entity key, not used in preferences
        dictionaryArray.append (d)
      }
      UserDefaults.standard.set (dictionaryArray, forKey: prefKey)
    }
  }

  //····················································································································

  func remove (_ object : DevicePadAssignmentInProject) {
    if let idx = self.mInternalArrayValue.firstIndex (of: object) {
      self.mInternalArrayValue.remove (at: idx)
    }
  }
  
  //····················································································································

  func add (_ object : DevicePadAssignmentInProject) {
    if !self.internalSetValue.contains (object) {
      self.mInternalArrayValue.append (object)
    }
  }
  
  //····················································································································
  //   signature
  //····················································································································

  private weak var mSignatureObserver : EBSignatureObserverProtocol? = nil // SOULD BE WEAK

  //····················································································································

  private var mSignatureCache : UInt32? = nil

  //····················································································································

  final func setSignatureObserver (observer : EBSignatureObserverProtocol?) {
    self.mSignatureObserver = observer
    for object in self.mInternalArrayValue {
      object.setSignatureObserver (observer: observer)
    }
  }

  //····················································································································

  final func signature () -> UInt32 {
    let computedSignature : UInt32
    if let s = self.mSignatureCache {
      computedSignature = s
    }else{
      computedSignature = computeSignature ()
      self.mSignatureCache = computedSignature
    }
    return computedSignature
  }
  
  //····················································································································

  final func computeSignature () -> UInt32 {
    var crc : UInt32 = 0
    for object in self.mInternalArrayValue {
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

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

