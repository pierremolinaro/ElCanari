//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    ReadOnlyArrayOf_DeviceDocumentation
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class ReadOnlyArrayOf_DeviceDocumentation : ReadOnlyAbstractArrayProperty <DeviceDocumentation> {

  //····················································································································

  internal override func updateObservers (removedSet inRemovedSet : Set <DeviceDocumentation>, addedSet inAddedSet : Set <DeviceDocumentation>) {
    super.updateObservers (removedSet: inRemovedSet, addedSet: inAddedSet)
  //--- Remove observers from removed objects
    self.removeEBObserversOf_mFileName_fromElementsOfSet (inRemovedSet) // Stored property
    self.removeEBObserversOf_mFileData_fromElementsOfSet (inRemovedSet) // Stored property
    self.removeEBObserversOf_fileSize_fromElementsOfSet (inRemovedSet) // Transient property
  //--- Add observers to added objects
    self.addEBObserversOf_mFileName_toElementsOfSet (inAddedSet) // Stored property
    self.addEBObserversOf_mFileData_toElementsOfSet (inAddedSet) // Stored property
    self.addEBObserversOf_fileSize_toElementsOfSet (inAddedSet) // Transient property
  }

  //····················································································································
  //   Observers of 'mFileName' stored property
  //····················································································································

  private var mObserversOf_mFileName = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_mFileName (_ inObserver : EBEvent, postEvent inPostEvent : Bool) {
    self.addEBObserver (inObserver)
    self.mObserversOf_mFileName.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.mFileName_property.addEBObserver (inObserver, postEvent: inPostEvent)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_mFileName (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_mFileName.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.mFileName_property.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_mFileName_toElementsOfSet (_ inSet : Set<DeviceDocumentation>) {
    for managedObject in inSet {
      self.mObserversOf_mFileName.apply { (_ observer : EBEvent) in
        managedObject.mFileName_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_mFileName_fromElementsOfSet (_ inSet : Set<DeviceDocumentation>) {
    self.mObserversOf_mFileName.apply { (_ observer : EBEvent) in
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.mFileName_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'mFileData' stored property
  //····················································································································

  private var mObserversOf_mFileData = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_mFileData (_ inObserver : EBEvent, postEvent inPostEvent : Bool) {
    self.addEBObserver (inObserver)
    self.mObserversOf_mFileData.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.mFileData_property.addEBObserver (inObserver, postEvent: inPostEvent)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_mFileData (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_mFileData.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.mFileData_property.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_mFileData_toElementsOfSet (_ inSet : Set<DeviceDocumentation>) {
    for managedObject in inSet {
      self.mObserversOf_mFileData.apply { (_ observer : EBEvent) in
        managedObject.mFileData_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_mFileData_fromElementsOfSet (_ inSet : Set<DeviceDocumentation>) {
    self.mObserversOf_mFileData.apply { (_ observer : EBEvent) in
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.mFileData_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'fileSize' transient property
  //····················································································································

  private var mObserversOf_fileSize = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_fileSize (_ inObserver : EBEvent, postEvent inPostEvent : Bool) {
    self.addEBObserver (inObserver)
    self.mObserversOf_fileSize.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.fileSize_property.addEBObserver (inObserver, postEvent: inPostEvent)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_fileSize (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_fileSize.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.fileSize_property.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_fileSize_toElementsOfSet (_ inSet : Set<DeviceDocumentation>) {
    for managedObject in inSet {
      self.mObserversOf_fileSize.apply { (_ observer : EBEvent) in
        managedObject.fileSize_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_fileSize_fromElementsOfSet (_ inSet : Set<DeviceDocumentation>) {
    for managedObject in inSet {
      self.mObserversOf_fileSize.apply { (_ observer : EBEvent) in
        managedObject.fileSize_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    TransientArrayOf DeviceDocumentation
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class TransientArrayOf_DeviceDocumentation : ReadOnlyArrayOf_DeviceDocumentation {

  //····················································································································
  //   Sort
  //····················································································································

  private var mIsOrderedBefore : Optional < (_ left : DeviceDocumentation, _ right : DeviceDocumentation) -> Bool > = nil 
  private var mSortObserver : EBModelNotifierEvent? = nil

  //····················································································································
  //   Data provider
  //····················································································································

  private var mDataProvider : ReadOnlyArrayOf_DeviceDocumentation? = nil
  private var mTransientKind : PropertyKind = .empty

 
  func setDataProvider (_ inProvider : ReadOnlyArrayOf_DeviceDocumentation,
                        sortCallback inSortCallBack : Optional < (_ left : DeviceDocumentation, _ right : DeviceDocumentation) -> Bool >,
                        addSortObserversCallback inAddSortObserversCallback : (EBModelNotifierEvent) -> Void,
                        removeSortObserversCallback inRemoveSortObserversCallback : @escaping (EBModelNotifierEvent) -> Void) {
    if self.mDataProvider !== inProvider {
      self.mSortObserver?.removeSortObservers ()
      self.mSortObserver = nil
      self.mDataProvider?.detachClient (self)
      self.mDataProvider = inProvider
      self.mIsOrderedBefore = inSortCallBack
      self.mDataProvider?.attachClient (self)
      if inSortCallBack != nil {
        self.mSortObserver = EBModelNotifierEvent (
          self,
          addSortObserversCallback: inAddSortObserversCallback,
          removeSortObserversCallback: inRemoveSortObserversCallback
        )
      }else{
        self.mInternalArrayValue = []
      }
    }
  }

  //····················································································································

  func resetDataProvider () {
    if self.mDataProvider != nil {
      self.mSortObserver = nil
      self.mDataProvider?.detachClient (self)
      self.mDataProvider = nil
      self.mIsOrderedBefore = nil
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newArray : [DeviceDocumentation] 
    if let dataProvider = self.mDataProvider {
      switch dataProvider.prop {
      case .empty :
        newArray = []
        self.mTransientKind = .empty
      case .single (let v) :
        if let sortFunction = self.mIsOrderedBefore {
          newArray = v.sorted { sortFunction ($0, $1) }
        }else{
          newArray = v
        }
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

  override var prop : EBSelection < [DeviceDocumentation] > {
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

  override var propval : [DeviceDocumentation] { return self.mInternalArrayValue }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    TransientArrayOfSuperOf DeviceDocumentation
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class TransientArrayOfSuperOf_DeviceDocumentation <SUPER : EBManagedObject> : ReadOnlyArrayOf_DeviceDocumentation {

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
    var newArray = [DeviceDocumentation] ()
    for superObject in newModelArray {
      if let object = superObject as? DeviceDocumentation {
        newArray.append (object)
      }
    }
    self.mInternalArrayValue = newArray
    super.notifyModelDidChange ()
  }

  //····················································································································

  override var prop : EBSelection < [DeviceDocumentation] > {
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

  override var propval : [DeviceDocumentation] { return self.mInternalArrayValue }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    To many relationship read write: DeviceDocumentation
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class ReadWriteArrayOf_DeviceDocumentation : ReadOnlyArrayOf_DeviceDocumentation {

  //····················································································································
 
  func setProp (_ value :  [DeviceDocumentation]) { } // Abstract method
  
  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    Proxy: ProxyArrayOf_DeviceDocumentation
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class ProxyArrayOf_DeviceDocumentation : ReadWriteArrayOf_DeviceDocumentation {

  //····················································································································

  private var mModel : ReadWriteArrayOf_DeviceDocumentation? = nil

  //····················································································································

  func setModel (_ inModel : ReadWriteArrayOf_DeviceDocumentation?) {
    if self.mModel !== inModel {
      self.mModel?.detachClient (self)
      self.mModel = inModel
      self.mModel?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newModelArray : [DeviceDocumentation]
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

  override func setProp (_ inArrayValue : [DeviceDocumentation]) {
    self.mModel?.setProp (inArrayValue)
  }

  //····················································································································

  override var prop : EBSelection < [DeviceDocumentation] > {
    if let model = self.mModel {
      return model.prop
    }else{
      return .empty
    }
  }

  //····················································································································

  override var propval : [DeviceDocumentation] {
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
//    Stored Array: DeviceDocumentation
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class StoredArrayOf_DeviceDocumentation : ReadWriteArrayOf_DeviceDocumentation, EBSignatureObserverProtocol {

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

  private var mSetOppositeRelationship : Optional < (_ inManagedObject : DeviceDocumentation) -> Void > = nil
  private var mResetOppositeRelationship : Optional < (_ inManagedObject : DeviceDocumentation) -> Void > = nil

  //····················································································································

  func setOppositeRelationShipFunctions (setter inSetter : @escaping (_ inManagedObject : DeviceDocumentation) -> Void,
                                         resetter inResetter : @escaping (_ inManagedObject : DeviceDocumentation) -> Void) {
    self.mSetOppositeRelationship = inSetter
    self.mResetOppositeRelationship = inResetter
  }
  
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
  // Model will change 
  //····················································································································

  override func notifyModelDidChangeFrom (oldValue inOldValue : [DeviceDocumentation]) {
  //--- Register old value in undo manager
    self.ebUndoManager?.registerUndo (withTarget: self, selector:#selector(performUndo(_:)), object: inOldValue)
  //---
    super.notifyModelDidChangeFrom (oldValue: inOldValue)
  }
 
  //····················································································································

  @objc func performUndo (_ oldValue : [DeviceDocumentation]) {
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
  //---
    super.notifyModelDidChange ()
  }

  //····················································································································
  // Update observers 
  //····················································································································

  internal override func updateObservers (removedSet inRemovedSet : Set <DeviceDocumentation>, addedSet inAddedSet : Set <DeviceDocumentation>) {
    for managedObject in inRemovedSet {
      if self.mUsedForSignature {
        managedObject.setSignatureObserver (observer: nil)
      }
      self.mResetOppositeRelationship? (managedObject)
   }
  //---
    for managedObject in inAddedSet {
      if self.mUsedForSignature {
        managedObject.setSignatureObserver (observer: self)
      }
      self.mSetOppositeRelationship? (managedObject)
    }
  //---
    super.updateObservers (removedSet: inRemovedSet, addedSet: inAddedSet)
 }
 
  //····················································································································

  override var prop : EBSelection < [DeviceDocumentation] > { return .single (self.mInternalArrayValue) }

  //····················································································································

  override func setProp (_ inValue : [DeviceDocumentation]) { self.mInternalArrayValue = inValue }

  //····················································································································

  override var propval : [DeviceDocumentation] { return self.mInternalArrayValue }

  //····················································································································

  func remove (_ object : DeviceDocumentation) {
    if let idx = self.mInternalArrayValue.firstIndex (of: object) {
      self.mInternalArrayValue.remove (at: idx)
    }
  }
  
  //····················································································································

  func add (_ object : DeviceDocumentation) {
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
    self.mSignatureObserver?.clearSignatureCache ()
    self.mSignatureObserver = observer
    observer?.clearSignatureCache ()
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
//    Stand alone Array: DeviceDocumentation
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class StandAloneArrayOf_DeviceDocumentation : ReadWriteArrayOf_DeviceDocumentation {

  //····················································································································

  override var prop : EBSelection < [DeviceDocumentation] > { return .single (self.mInternalArrayValue) }

  //····················································································································

  override func setProp (_ inValue : [DeviceDocumentation]) { self.mInternalArrayValue = inValue }

  //····················································································································

  override var propval : [DeviceDocumentation] { return self.mInternalArrayValue }

  //····················································································································

  override func notifyModelDidChange () {
    self.postEvent ()
    super.notifyModelDidChange ()
  }

  //····················································································································

  func remove (_ object : DeviceDocumentation) {
    if let idx = self.mInternalArrayValue.firstIndex (of: object) {
      self.mInternalArrayValue.remove (at: idx)
    }
  }
  
  //····················································································································

  func add (_ object : DeviceDocumentation) {
    if !self.internalSetValue.contains (object) {
      self.mInternalArrayValue.append (object)
    }
  }
  
  //····················································································································
 
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    Preferences array: DeviceDocumentation
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class PreferencesArrayOf_DeviceDocumentation : StoredArrayOf_DeviceDocumentation {

  //····················································································································

  private let mPrefKey : String
  private let mObserverForWritingPreferences = EBOutletEvent ()
  
  //····················································································································

  init (prefKey : String) {
    self.mPrefKey = prefKey
    super.init (usedForSignature: false)
    if let array = UserDefaults.standard.array (forKey: prefKey) as? [NSDictionary] {
      var objectArray = [DeviceDocumentation] ()
      for dictionary in array {
        if let object = newInstanceOfEntityNamed (self.ebUndoManager, "DeviceDocumentation") as? DeviceDocumentation {
          object.setUpAtomicPropertiesWithDictionary (dictionary)
          objectArray.append (object)
        }
      }
      self.setProp (objectArray)
    }
    self.addEBObserverOf_mFileName (self.mObserverForWritingPreferences, postEvent: true)
    self.addEBObserverOf_mFileData (self.mObserverForWritingPreferences, postEvent: true)
    self.mObserverForWritingPreferences.mEventCallBack = { self.writeInPreferences () }
 }

  //····················································································································
 
  private func writeInPreferences () {
    var dictionaryArray = [NSDictionary] ()
    for object in self.mInternalArrayValue {
      let d = NSMutableDictionary ()
      object.saveIntoDictionary (d)
      d [ENTITY_KEY] = nil // Remove entity key, not used in preferences
      dictionaryArray.append (d)
    }
    UserDefaults.standard.set (dictionaryArray, forKey: self.mPrefKey)
  }

  //····················································································································
 
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

