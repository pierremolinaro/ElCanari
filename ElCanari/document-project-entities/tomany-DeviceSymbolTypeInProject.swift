//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------
//    ReadOnlyArrayOf_DeviceSymbolTypeInProject
//----------------------------------------------------------------------------------------------------------------------

class ReadOnlyArrayOf_DeviceSymbolTypeInProject : ReadOnlyAbstractArrayProperty <DeviceSymbolTypeInProject> {

  //····················································································································

  internal override func updateObservers (removedSet inRemovedSet : Set <DeviceSymbolTypeInProject>, addedSet inAddedSet : Set <DeviceSymbolTypeInProject>) {
    super.updateObservers (removedSet: inRemovedSet, addedSet: inAddedSet)
  //--- Remove observers from removed objects
    self.removeEBObserversOf_mSymbolTypeName_fromElementsOfSet (inRemovedSet) // Stored property
    self.removeEBObserversOf_mStrokeBezierPath_fromElementsOfSet (inRemovedSet) // Stored property
    self.removeEBObserversOf_mFilledBezierPath_fromElementsOfSet (inRemovedSet) // Stored property
  //--- Add observers to added objects
    self.addEBObserversOf_mSymbolTypeName_toElementsOfSet (inAddedSet) // Stored property
    self.addEBObserversOf_mStrokeBezierPath_toElementsOfSet (inAddedSet) // Stored property
    self.addEBObserversOf_mFilledBezierPath_toElementsOfSet (inAddedSet) // Stored property
  }

  //····················································································································
  //   Observers of 'mSymbolTypeName' stored property
  //····················································································································

  private var mObserversOf_mSymbolTypeName = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_mSymbolTypeName (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_mSymbolTypeName.insert (inObserver)
    switch self.prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.mSymbolTypeName_property.addEBObserver (inObserver)
      }
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
      for managedObject in v {
        managedObject.mSymbolTypeName_property.removeEBObserver (inObserver)
      }
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

  final func addEBObserverOf_mStrokeBezierPath (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_mStrokeBezierPath.insert (inObserver)
    switch self.prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.mStrokeBezierPath_property.addEBObserver (inObserver)
      }
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
      for managedObject in v {
        managedObject.mStrokeBezierPath_property.removeEBObserver (inObserver)
      }
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

  final func addEBObserverOf_mFilledBezierPath (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_mFilledBezierPath.insert (inObserver)
    switch self.prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.mFilledBezierPath_property.addEBObserver (inObserver)
      }
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
      for managedObject in v {
        managedObject.mFilledBezierPath_property.removeEBObserver (inObserver)
      }
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
//    TransientArrayOf DeviceSymbolTypeInProject
//----------------------------------------------------------------------------------------------------------------------

final class TransientArrayOf_DeviceSymbolTypeInProject : ReadOnlyArrayOf_DeviceSymbolTypeInProject {

  //····················································································································
  //   Sort
  //····················································································································

  private var mIsOrderedBefore : Optional < (_ left : DeviceSymbolTypeInProject, _ right : DeviceSymbolTypeInProject) -> Bool > = nil 
  private var mSortObserver : EBModelNotifierEvent? = nil
  private var mModelEvent = EBModelEvent ()

  //····················································································································

  override init () {
    super.init ()
    self.mModelEvent.mEventCallBack = { [weak self] in self?.computeModelArray () }
  }

  //····················································································································
  //   Data provider
  //····················································································································

  private var mDataProvider : ReadOnlyArrayOf_DeviceSymbolTypeInProject? = nil
  private var mTransientKind : PropertyKind = .empty
  private var mModelArrayShouldBeComputed = true

  //····················································································································

  func setDataProvider (_ inProvider : ReadOnlyArrayOf_DeviceSymbolTypeInProject,
                        sortCallback inSortCallBack : Optional < (_ left : DeviceSymbolTypeInProject, _ right : DeviceSymbolTypeInProject) -> Bool >,
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
    self.mModelEvent.postEvent ()
    self.mModelArrayShouldBeComputed = true
    super.notifyModelDidChange ()
  }
 
  //····················································································································

  private final func computeModelArray () {
    if self.mModelArrayShouldBeComputed {
      self.mModelArrayShouldBeComputed = false
      let newArray : [DeviceSymbolTypeInProject] 
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
    }
  }

  //····················································································································

  override var prop : EBSelection < [DeviceSymbolTypeInProject] > {
    self.computeModelArray ()
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

  override var propval : [DeviceSymbolTypeInProject] { return self.mInternalArrayValue }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//    TransientArrayOfSuperOf DeviceSymbolTypeInProject
//----------------------------------------------------------------------------------------------------------------------

final class TransientArrayOfSuperOf_DeviceSymbolTypeInProject <SUPER : EBManagedObject> : ReadOnlyArrayOf_DeviceSymbolTypeInProject {

  //····················································································································
  //   Data provider
  //····················································································································

  private var mDataProvider : ReadOnlyAbstractArrayProperty <SUPER>? = nil
  private var mTransientKind : PropertyKind = .empty
  private var mModelArrayShouldBeComputed = true
  private var mModelEvent = EBModelEvent ()

  //····················································································································

  override init () {
    super.init ()
    self.mModelEvent.mEventCallBack = { [weak self] in self?.computeModelArray () }
  }

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
    self.mModelEvent.postEvent ()
    self.mModelArrayShouldBeComputed = true
    super.notifyModelDidChange ()
  }
 
  //····················································································································

  private final func computeModelArray () {
    if self.mModelArrayShouldBeComputed {
      self.mModelArrayShouldBeComputed = false
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
      var newArray = [DeviceSymbolTypeInProject] ()
      for superObject in newModelArray {
        if let object = superObject as? DeviceSymbolTypeInProject {
          newArray.append (object)
        }
      }
      self.mInternalArrayValue = newArray
    }
  }

  //····················································································································

  override var prop : EBSelection < [DeviceSymbolTypeInProject] > {
    self.computeModelArray ()
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

  override var propval : [DeviceSymbolTypeInProject] { return self.mInternalArrayValue }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//    To many relationship read write: DeviceSymbolTypeInProject
//----------------------------------------------------------------------------------------------------------------------

class ReadWriteArrayOf_DeviceSymbolTypeInProject : ReadOnlyArrayOf_DeviceSymbolTypeInProject {

  //····················································································································
 
  func setProp (_ value :  [DeviceSymbolTypeInProject]) { } // Abstract method
  
  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//    Proxy: ProxyArrayOf_DeviceSymbolTypeInProject
//----------------------------------------------------------------------------------------------------------------------

final class ProxyArrayOf_DeviceSymbolTypeInProject : ReadWriteArrayOf_DeviceSymbolTypeInProject {

  //····················································································································

  private var mModel : ReadWriteArrayOf_DeviceSymbolTypeInProject? = nil

  //····················································································································

  func setModel (_ inModel : ReadWriteArrayOf_DeviceSymbolTypeInProject?) {
    if self.mModel !== inModel {
      self.mModel?.detachClient (self)
      self.mModel = inModel
      self.mModel?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newModelArray : [DeviceSymbolTypeInProject]
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

  override func setProp (_ inArrayValue : [DeviceSymbolTypeInProject]) {
    self.mModel?.setProp (inArrayValue)
  }

  //····················································································································

  override var prop : EBSelection < [DeviceSymbolTypeInProject] > {
    if let model = self.mModel {
      return model.prop
    }else{
      return .empty
    }
  }

  //····················································································································

  override var propval : [DeviceSymbolTypeInProject] {
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

//----------------------------------------------------------------------------------------------------------------------
//    Stored Array: DeviceSymbolTypeInProject
//----------------------------------------------------------------------------------------------------------------------

class StoredArrayOf_DeviceSymbolTypeInProject : ReadWriteArrayOf_DeviceSymbolTypeInProject, EBSignatureObserverProtocol {

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

  var mValueExplorer : NSPopUpButton? {
    didSet {
      if let unwrappedExplorer = self.mValueExplorer {
        switch self.prop {
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

  override func notifyModelDidChangeFrom (oldValue inOldValue : [DeviceSymbolTypeInProject]) {
  //--- Register old value in undo manager
    self.ebUndoManager?.registerUndo (withTarget: self) { $0.mInternalArrayValue = inOldValue }
  //---
    super.notifyModelDidChangeFrom (oldValue: inOldValue)
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

  internal override func updateObservers (removedSet inRemovedSet : Set <DeviceSymbolTypeInProject>, addedSet inAddedSet : Set <DeviceSymbolTypeInProject>) {
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

  override var prop : EBSelection < [DeviceSymbolTypeInProject] > { return .single (self.mInternalArrayValue) }

  //····················································································································

  override func setProp (_ inValue : [DeviceSymbolTypeInProject]) { self.mInternalArrayValue = inValue }

  //····················································································································

  override var propval : [DeviceSymbolTypeInProject] { return self.mInternalArrayValue }

  //····················································································································

  func remove (_ object : DeviceSymbolTypeInProject) {
    if let idx = self.mInternalArrayValue.firstIndex (of: object) {
      self.mInternalArrayValue.remove (at: idx)
    }
  }
  
  //····················································································································

  func add (_ object : DeviceSymbolTypeInProject) {
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

//----------------------------------------------------------------------------------------------------------------------
//    Stand alone Array: DeviceSymbolTypeInProject
//----------------------------------------------------------------------------------------------------------------------

final class StandAloneArrayOf_DeviceSymbolTypeInProject : ReadWriteArrayOf_DeviceSymbolTypeInProject {

  //····················································································································

  override var prop : EBSelection < [DeviceSymbolTypeInProject] > { return .single (self.mInternalArrayValue) }

  //····················································································································

  override func setProp (_ inValue : [DeviceSymbolTypeInProject]) { self.mInternalArrayValue = inValue }

  //····················································································································

  override var propval : [DeviceSymbolTypeInProject] { return self.mInternalArrayValue }

  //····················································································································

  override func notifyModelDidChange () {
    self.postEvent ()
    super.notifyModelDidChange ()
  }

  //····················································································································

  func remove (_ object : DeviceSymbolTypeInProject) {
    if let idx = self.mInternalArrayValue.firstIndex (of: object) {
      self.mInternalArrayValue.remove (at: idx)
    }
  }
  
  //····················································································································

  func add (_ object : DeviceSymbolTypeInProject) {
    if !self.internalSetValue.contains (object) {
      self.mInternalArrayValue.append (object)
    }
  }
  
  //····················································································································
 
}

//----------------------------------------------------------------------------------------------------------------------
//    Preferences array: DeviceSymbolTypeInProject
//----------------------------------------------------------------------------------------------------------------------

final class PreferencesArrayOf_DeviceSymbolTypeInProject : StoredArrayOf_DeviceSymbolTypeInProject {

  //····················································································································

  private let mPrefKey : String
  private let mObserverForWritingPreferences = EBOutletEvent ()
  
  //····················································································································

  init (prefKey : String) {
    self.mPrefKey = prefKey
    super.init (usedForSignature: false)
    if let array = UserDefaults.standard.array (forKey: prefKey) as? [NSDictionary] {
      var objectArray = [DeviceSymbolTypeInProject] ()
      for dictionary in array {
        if let object = newInstanceOfEntityNamed (self.ebUndoManager, "DeviceSymbolTypeInProject") as? DeviceSymbolTypeInProject {
          object.setUpAtomicPropertiesWithDictionary (dictionary)
          objectArray.append (object)
        }
      }
      self.setProp (objectArray)
    }
    self.addEBObserverOf_mSymbolTypeName (self.mObserverForWritingPreferences)
    self.addEBObserverOf_mStrokeBezierPath (self.mObserverForWritingPreferences)
    self.addEBObserverOf_mFilledBezierPath (self.mObserverForWritingPreferences)
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

//----------------------------------------------------------------------------------------------------------------------

