//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------
//    ReadOnlyArrayOf_SegmentEntity
//----------------------------------------------------------------------------------------------------------------------

class ReadOnlyArrayOf_SegmentEntity : ReadOnlyAbstractArrayProperty <SegmentEntity> {

  //····················································································································

  internal override func updateObservers (removedSet inRemovedSet : Set <SegmentEntity>, addedSet inAddedSet : Set <SegmentEntity>) {
    super.updateObservers (removedSet: inRemovedSet, addedSet: inAddedSet)
  //--- Remove observers from removed objects
    self.removeEBObserversOf_y1_fromElementsOfSet (inRemovedSet) // Stored property
    self.removeEBObserversOf_x2_fromElementsOfSet (inRemovedSet) // Stored property
    self.removeEBObserversOf_y2_fromElementsOfSet (inRemovedSet) // Stored property
    self.removeEBObserversOf_width_fromElementsOfSet (inRemovedSet) // Stored property
    self.removeEBObserversOf_x1_fromElementsOfSet (inRemovedSet) // Stored property
  //--- Add observers to added objects
    self.addEBObserversOf_y1_toElementsOfSet (inAddedSet) // Stored property
    self.addEBObserversOf_x2_toElementsOfSet (inAddedSet) // Stored property
    self.addEBObserversOf_y2_toElementsOfSet (inAddedSet) // Stored property
    self.addEBObserversOf_width_toElementsOfSet (inAddedSet) // Stored property
    self.addEBObserversOf_x1_toElementsOfSet (inAddedSet) // Stored property
  }

  //····················································································································
  //   Observers of 'y1' stored property
  //····················································································································

  private final var mObserversOf_y1 = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_y1 (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_y1.insert (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.y1_property.addEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_y1 (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_y1.remove (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.y1_property.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_y1_toElementsOfSet (_ inSet : Set <SegmentEntity>) {
    if !self.mObserversOf_y1.isEmpty {
      for managedObject in inSet {
        self.mObserversOf_y1.apply { (_ observer : EBEvent) in
          managedObject.y1_property.addEBObserver (observer)
        }
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_y1_fromElementsOfSet (_ inSet : Set <SegmentEntity>) {
    self.mObserversOf_y1.apply { (_ observer : EBEvent) in
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.y1_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'x2' stored property
  //····················································································································

  private final var mObserversOf_x2 = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_x2 (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_x2.insert (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.x2_property.addEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_x2 (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_x2.remove (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.x2_property.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_x2_toElementsOfSet (_ inSet : Set <SegmentEntity>) {
    if !self.mObserversOf_x2.isEmpty {
      for managedObject in inSet {
        self.mObserversOf_x2.apply { (_ observer : EBEvent) in
          managedObject.x2_property.addEBObserver (observer)
        }
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_x2_fromElementsOfSet (_ inSet : Set <SegmentEntity>) {
    self.mObserversOf_x2.apply { (_ observer : EBEvent) in
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.x2_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'y2' stored property
  //····················································································································

  private final var mObserversOf_y2 = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_y2 (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_y2.insert (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.y2_property.addEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_y2 (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_y2.remove (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.y2_property.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_y2_toElementsOfSet (_ inSet : Set <SegmentEntity>) {
    if !self.mObserversOf_y2.isEmpty {
      for managedObject in inSet {
        self.mObserversOf_y2.apply { (_ observer : EBEvent) in
          managedObject.y2_property.addEBObserver (observer)
        }
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_y2_fromElementsOfSet (_ inSet : Set <SegmentEntity>) {
    self.mObserversOf_y2.apply { (_ observer : EBEvent) in
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.y2_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'width' stored property
  //····················································································································

  private final var mObserversOf_width = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_width (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_width.insert (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.width_property.addEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_width (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_width.remove (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.width_property.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_width_toElementsOfSet (_ inSet : Set <SegmentEntity>) {
    if !self.mObserversOf_width.isEmpty {
      for managedObject in inSet {
        self.mObserversOf_width.apply { (_ observer : EBEvent) in
          managedObject.width_property.addEBObserver (observer)
        }
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_width_fromElementsOfSet (_ inSet : Set <SegmentEntity>) {
    self.mObserversOf_width.apply { (_ observer : EBEvent) in
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.width_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'x1' stored property
  //····················································································································

  private final var mObserversOf_x1 = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_x1 (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_x1.insert (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.x1_property.addEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_x1 (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_x1.remove (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.x1_property.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_x1_toElementsOfSet (_ inSet : Set <SegmentEntity>) {
    if !self.mObserversOf_x1.isEmpty {
      for managedObject in inSet {
        self.mObserversOf_x1.apply { (_ observer : EBEvent) in
          managedObject.x1_property.addEBObserver (observer)
        }
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_x1_fromElementsOfSet (_ inSet : Set <SegmentEntity>) {
    self.mObserversOf_x1.apply { (_ observer : EBEvent) in
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.x1_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//    TransientArrayOf SegmentEntity
//----------------------------------------------------------------------------------------------------------------------

final class TransientArrayOf_SegmentEntity : ReadOnlyArrayOf_SegmentEntity {

  //····················································································································
  //   Sort
  //····················································································································

  private var mIsOrderedBefore : Optional < (_ left : SegmentEntity, _ right : SegmentEntity) -> Bool > = nil 
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

  private var mDataProvider : ReadOnlyArrayOf_SegmentEntity? = nil
  private var mTransientKind : PropertyKind = .empty
  private var mModelArrayShouldBeComputed = true

  //····················································································································

  func setDataProvider (_ inProvider : ReadOnlyArrayOf_SegmentEntity,
                        sortCallback inSortCallBack : Optional < (_ left : SegmentEntity, _ right : SegmentEntity) -> Bool >,
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
      let newArray : [SegmentEntity] 
      if let dataProvider = self.mDataProvider {
        switch dataProvider.selection {
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

  override var selection : EBSelection < [SegmentEntity] > {
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

  override var propval : [SegmentEntity] {
    self.computeModelArray ()
    return self.mInternalArrayValue
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//    TransientArrayOfSuperOf SegmentEntity
//----------------------------------------------------------------------------------------------------------------------

final class TransientArrayOfSuperOf_SegmentEntity <SUPER : EBManagedObject> : ReadOnlyArrayOf_SegmentEntity {

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
        switch dataProvider.selection {
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
      var newArray = [SegmentEntity] ()
      for superObject in newModelArray {
        if let object = superObject as? SegmentEntity {
          newArray.append (object)
        }
      }
      self.mInternalArrayValue = newArray
    }
  }

  //····················································································································

  override var selection : EBSelection < [SegmentEntity] > {
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

  override var propval : [SegmentEntity] { return self.mInternalArrayValue }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//    To many relationship read write: SegmentEntity
//----------------------------------------------------------------------------------------------------------------------

class ReadWriteArrayOf_SegmentEntity : ReadOnlyArrayOf_SegmentEntity {

  //····················································································································
 
  func setProp (_ value :  [SegmentEntity]) { } // Abstract method
  
  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//    Proxy: ProxyArrayOf_SegmentEntity
//----------------------------------------------------------------------------------------------------------------------

final class ProxyArrayOf_SegmentEntity : ReadWriteArrayOf_SegmentEntity {

  //····················································································································

  private var mModel : ReadWriteArrayOf_SegmentEntity? = nil

  //····················································································································

  func setModel (_ inModel : ReadWriteArrayOf_SegmentEntity?) {
    if self.mModel !== inModel {
      self.mModel?.detachClient (self)
      self.mModel = inModel
      self.mModel?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newModelArray : [SegmentEntity]
    if let model = self.mModel {
      switch model.selection {
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

  override func setProp (_ inArrayValue : [SegmentEntity]) {
    self.mModel?.setProp (inArrayValue)
  }

  //····················································································································

  override var selection : EBSelection < [SegmentEntity] > {
    if let model = self.mModel {
      return model.selection
    }else{
      return .empty
    }
  }

  //····················································································································

  override var propval : [SegmentEntity] {
    if let model = self.mModel {
      switch model.selection {
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
//    Stored Array: SegmentEntity
//----------------------------------------------------------------------------------------------------------------------

class StoredArrayOf_SegmentEntity : ReadWriteArrayOf_SegmentEntity, EBSignatureObserverProtocol {

  //····················································································································

  init (usedForSignature inUsedForSignature : Bool) {
    self.mUsedForSignature = inUsedForSignature
    super.init ()
  }

  //····················································································································
  //   Signature ?
  //····················································································································

  private final let mUsedForSignature : Bool
  
  //····················································································································
  //   Undo manager
  //····················································································································

  weak final var ebUndoManager : EBUndoManager? = nil // SOULD BE WEAK

  //····················································································································
  //   Opposite relationship management
  //····················································································································

  private final var mSetOppositeRelationship : Optional < (_ inManagedObject : SegmentEntity) -> Void > = nil
  private final var mResetOppositeRelationship : Optional < (_ inManagedObject : SegmentEntity) -> Void > = nil

  //····················································································································

  final func setOppositeRelationShipFunctions (setter inSetter : @escaping (_ inManagedObject : SegmentEntity) -> Void,
                                               resetter inResetter : @escaping (_ inManagedObject : SegmentEntity) -> Void) {
    self.mSetOppositeRelationship = inSetter
    self.mResetOppositeRelationship = inResetter
  }
  
  //····················································································································

  final var mValueExplorer : NSPopUpButton? {
    didSet {
      if let unwrappedExplorer = self.mValueExplorer {
        switch self.selection {
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

  override func notifyModelDidChangeFrom (oldValue inOldValue : [SegmentEntity]) {
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

  override func updateObservers (removedSet inRemovedSet : Set <SegmentEntity>, addedSet inAddedSet : Set <SegmentEntity>) {
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

  override final var selection : EBSelection < [SegmentEntity] > { return .single (self.mInternalArrayValue) }

  //····················································································································

  override func setProp (_ inValue : [SegmentEntity]) { self.mInternalArrayValue = inValue }

  //····················································································································

  override final var propval : [SegmentEntity] { return self.mInternalArrayValue }

  //····················································································································

  final func remove (_ object : SegmentEntity) {
    if let idx = self.mInternalArrayValue.firstIndex (of: object) {
      self.mInternalArrayValue.remove (at: idx)
    }
  }
  
  //····················································································································

  final func add (_ object : SegmentEntity) {
    if !self.internalSetValue.contains (object) {
      self.mInternalArrayValue.append (object)
    }
  }
  
  //····················································································································
  //   signature
  //····················································································································

  private weak final var mSignatureObserver : EBSignatureObserverProtocol? = nil // SOULD BE WEAK

  //····················································································································

  private final var mSignatureCache : UInt32? = nil

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
//    Stand alone Array: SegmentEntity
//----------------------------------------------------------------------------------------------------------------------

final class StandAloneArrayOf_SegmentEntity : ReadWriteArrayOf_SegmentEntity {

  //····················································································································

  override var selection : EBSelection < [SegmentEntity] > { return .single (self.mInternalArrayValue) }

  //····················································································································

  override func setProp (_ inValue : [SegmentEntity]) { self.mInternalArrayValue = inValue }

  //····················································································································

  override var propval : [SegmentEntity] { return self.mInternalArrayValue }

  //····················································································································

  override func notifyModelDidChange () {
    self.postEvent ()
    super.notifyModelDidChange ()
  }

  //····················································································································

  func remove (_ object : SegmentEntity) {
    if let idx = self.mInternalArrayValue.firstIndex (of: object) {
      self.mInternalArrayValue.remove (at: idx)
    }
  }
  
  //····················································································································

  func add (_ object : SegmentEntity) {
    if !self.internalSetValue.contains (object) {
      self.mInternalArrayValue.append (object)
    }
  }
  
  //····················································································································
 
}

//----------------------------------------------------------------------------------------------------------------------
//    Preferences array: SegmentEntity
//----------------------------------------------------------------------------------------------------------------------

final class PreferencesArrayOf_SegmentEntity : StoredArrayOf_SegmentEntity {

  //····················································································································

  private let mPrefKey : String
  private let mObserverForWritingPreferences = EBOutletEvent ()
  
  //····················································································································

  init (prefKey : String) {
    self.mPrefKey = prefKey
    super.init (usedForSignature: false)
    if let array = UserDefaults.standard.array (forKey: prefKey) as? [NSDictionary] {
      var objectArray = [SegmentEntity] ()
      for dictionary in array {
        if let object = newInstanceOfEntityNamed (self.ebUndoManager, "SegmentEntity") as? SegmentEntity {
          object.setUpAtomicPropertiesWithDictionary (dictionary)
          objectArray.append (object)
        }
      }
      self.setProp (objectArray)
    }
    self.addEBObserverOf_y1 (self.mObserverForWritingPreferences)
    self.addEBObserverOf_x2 (self.mObserverForWritingPreferences)
    self.addEBObserverOf_y2 (self.mObserverForWritingPreferences)
    self.addEBObserverOf_width (self.mObserverForWritingPreferences)
    self.addEBObserverOf_x1 (self.mObserverForWritingPreferences)
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

