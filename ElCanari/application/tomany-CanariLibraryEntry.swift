//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    ReadOnlyArrayOf_CanariLibraryEntry
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class ReadOnlyArrayOf_CanariLibraryEntry : ReadOnlyAbstractArrayProperty <CanariLibraryEntry> {

  //····················································································································

  internal override func updateObservers (removedSet inRemovedSet : Set <CanariLibraryEntry>, addedSet inAddedSet : Set <CanariLibraryEntry>) {
    super.updateObservers (removedSet: inRemovedSet, addedSet: inAddedSet)
  //--- Remove observers from removed objects
    self.removeEBObserversOf_mPath_fromElementsOfSet (inRemovedSet) // Stored property
    self.removeEBObserversOf_mUses_fromElementsOfSet (inRemovedSet) // Stored property
    self.removeEBObserversOf_mLibraryRepositoryURL_fromElementsOfSet (inRemovedSet) // Stored property
    self.removeEBObserversOf_mUserAndPasswordTag_fromElementsOfSet (inRemovedSet) // Stored property
    self.removeEBObserversOf_mStatusImage_fromElementsOfSet (inRemovedSet) // Transient property
  //--- Add observers to added objects
    self.addEBObserversOf_mPath_toElementsOfSet (inAddedSet) // Stored property
    self.addEBObserversOf_mUses_toElementsOfSet (inAddedSet) // Stored property
    self.addEBObserversOf_mLibraryRepositoryURL_toElementsOfSet (inAddedSet) // Stored property
    self.addEBObserversOf_mUserAndPasswordTag_toElementsOfSet (inAddedSet) // Stored property
    self.addEBObserversOf_mStatusImage_toElementsOfSet (inAddedSet) // Transient property
  }

  //····················································································································
  //   Observers of 'mPath' stored property
  //····················································································································

  private final var mObserversOf_mPath = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_mPath (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_mPath.insert (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.mPath_property.addEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_mPath (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_mPath.remove (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.mPath_property.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_mPath_toElementsOfSet (_ inSet : Set <CanariLibraryEntry>) {
    if !self.mObserversOf_mPath.isEmpty {
      for managedObject in inSet {
        self.mObserversOf_mPath.apply { (_ observer : EBEvent) in
          managedObject.mPath_property.addEBObserver (observer)
        }
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_mPath_fromElementsOfSet (_ inSet : Set <CanariLibraryEntry>) {
    self.mObserversOf_mPath.apply { (_ observer : EBEvent) in
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.mPath_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'mUses' stored property
  //····················································································································

  private final var mObserversOf_mUses = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_mUses (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_mUses.insert (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.mUses_property.addEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_mUses (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_mUses.remove (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.mUses_property.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_mUses_toElementsOfSet (_ inSet : Set <CanariLibraryEntry>) {
    if !self.mObserversOf_mUses.isEmpty {
      for managedObject in inSet {
        self.mObserversOf_mUses.apply { (_ observer : EBEvent) in
          managedObject.mUses_property.addEBObserver (observer)
        }
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_mUses_fromElementsOfSet (_ inSet : Set <CanariLibraryEntry>) {
    self.mObserversOf_mUses.apply { (_ observer : EBEvent) in
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.mUses_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'mLibraryRepositoryURL' stored property
  //····················································································································

  private final var mObserversOf_mLibraryRepositoryURL = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_mLibraryRepositoryURL (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_mLibraryRepositoryURL.insert (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.mLibraryRepositoryURL_property.addEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_mLibraryRepositoryURL (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_mLibraryRepositoryURL.remove (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.mLibraryRepositoryURL_property.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_mLibraryRepositoryURL_toElementsOfSet (_ inSet : Set <CanariLibraryEntry>) {
    if !self.mObserversOf_mLibraryRepositoryURL.isEmpty {
      for managedObject in inSet {
        self.mObserversOf_mLibraryRepositoryURL.apply { (_ observer : EBEvent) in
          managedObject.mLibraryRepositoryURL_property.addEBObserver (observer)
        }
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_mLibraryRepositoryURL_fromElementsOfSet (_ inSet : Set <CanariLibraryEntry>) {
    self.mObserversOf_mLibraryRepositoryURL.apply { (_ observer : EBEvent) in
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.mLibraryRepositoryURL_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'mUserAndPasswordTag' stored property
  //····················································································································

  private final var mObserversOf_mUserAndPasswordTag = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_mUserAndPasswordTag (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_mUserAndPasswordTag.insert (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.mUserAndPasswordTag_property.addEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_mUserAndPasswordTag (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_mUserAndPasswordTag.remove (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.mUserAndPasswordTag_property.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_mUserAndPasswordTag_toElementsOfSet (_ inSet : Set <CanariLibraryEntry>) {
    if !self.mObserversOf_mUserAndPasswordTag.isEmpty {
      for managedObject in inSet {
        self.mObserversOf_mUserAndPasswordTag.apply { (_ observer : EBEvent) in
          managedObject.mUserAndPasswordTag_property.addEBObserver (observer)
        }
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_mUserAndPasswordTag_fromElementsOfSet (_ inSet : Set <CanariLibraryEntry>) {
    self.mObserversOf_mUserAndPasswordTag.apply { (_ observer : EBEvent) in
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.mUserAndPasswordTag_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'mStatusImage' transient property
  //····················································································································

  private final var mObserversOf_mStatusImage = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_mStatusImage (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_mStatusImage.insert (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.mStatusImage_property.addEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_mStatusImage (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_mStatusImage.remove (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.mStatusImage_property.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_mStatusImage_toElementsOfSet (_ inSet : Set <CanariLibraryEntry>) {
    for managedObject in inSet {
      self.mObserversOf_mStatusImage.apply { (_ observer : EBEvent) in
        managedObject.mStatusImage_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_mStatusImage_fromElementsOfSet (_ inSet : Set <CanariLibraryEntry>) {
    for managedObject in inSet {
      self.mObserversOf_mStatusImage.apply { (_ observer : EBEvent) in
        managedObject.mStatusImage_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    TransientArrayOf CanariLibraryEntry
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class TransientArrayOf_CanariLibraryEntry : ReadOnlyArrayOf_CanariLibraryEntry {

  //····················································································································
  //   Sort
  //····················································································································

  private var mIsOrderedBefore : Optional < (_ left : CanariLibraryEntry, _ right : CanariLibraryEntry) -> Bool > = nil
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

  private var mDataProvider : ReadOnlyArrayOf_CanariLibraryEntry? = nil
  private var mTransientKind : PropertyKind = .empty
  private var mModelArrayShouldBeComputed = true

  //····················································································································

  func setDataProvider (_ inProvider : ReadOnlyArrayOf_CanariLibraryEntry,
                        sortCallback inSortCallBack : Optional < (_ left : CanariLibraryEntry, _ right : CanariLibraryEntry) -> Bool >,
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
      let newArray : [CanariLibraryEntry]
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

  override var selection : EBSelection < [CanariLibraryEntry] > {
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

  override var propval : [CanariLibraryEntry] {
    self.computeModelArray ()
    return self.mInternalArrayValue
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    TransientArrayOfSuperOf CanariLibraryEntry
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class TransientArrayOfSuperOf_CanariLibraryEntry <SUPER : EBManagedObject> : ReadOnlyArrayOf_CanariLibraryEntry {

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
      var newArray = [CanariLibraryEntry] ()
      for superObject in newModelArray {
        if let object = superObject as? CanariLibraryEntry {
          newArray.append (object)
        }
      }
      self.mInternalArrayValue = newArray
    }
  }

  //····················································································································

  override var selection : EBSelection < [CanariLibraryEntry] > {
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

  override var propval : [CanariLibraryEntry] {
    self.computeModelArray ()
    return self.mInternalArrayValue
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    To many relationship read write: CanariLibraryEntry
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class ReadWriteArrayOf_CanariLibraryEntry : ReadOnlyArrayOf_CanariLibraryEntry {

  //····················································································································

  func setProp (_ value :  [CanariLibraryEntry]) { } // Abstract method

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    Proxy: ProxyArrayOf_CanariLibraryEntry
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class ProxyArrayOf_CanariLibraryEntry : ReadWriteArrayOf_CanariLibraryEntry {

  //····················································································································

  private var mModel : ReadWriteArrayOf_CanariLibraryEntry? = nil

  //····················································································································

  func setModel (_ inModel : ReadWriteArrayOf_CanariLibraryEntry?) {
    if self.mModel !== inModel {
      self.mModel?.detachClient (self)
      self.mModel = inModel
      self.mModel?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newModelArray : [CanariLibraryEntry]
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

  override func setProp (_ inArrayValue : [CanariLibraryEntry]) {
    self.mModel?.setProp (inArrayValue)
  }

  //····················································································································

  override var selection : EBSelection < [CanariLibraryEntry] > {
    if let model = self.mModel {
      return model.selection
    }else{
      return .empty
    }
  }

  //····················································································································

  override var propval : [CanariLibraryEntry] {
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

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    Stored Array: CanariLibraryEntry
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class StoredArrayOf_CanariLibraryEntry : ReadWriteArrayOf_CanariLibraryEntry, EBSignatureObserverProtocol {

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

  private final var mSetOppositeRelationship : Optional < (_ inManagedObject : CanariLibraryEntry) -> Void > = nil
  private final var mResetOppositeRelationship : Optional < (_ inManagedObject : CanariLibraryEntry) -> Void > = nil

  //····················································································································

  final func setOppositeRelationShipFunctions (setter inSetter : @escaping (_ inManagedObject : CanariLibraryEntry) -> Void,
                                               resetter inResetter : @escaping (_ inManagedObject : CanariLibraryEntry) -> Void) {
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

  override func notifyModelDidChangeFrom (oldValue inOldValue : [CanariLibraryEntry]) {
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

  override func updateObservers (removedSet inRemovedSet : Set <CanariLibraryEntry>, addedSet inAddedSet : Set <CanariLibraryEntry>) {
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

  override final var selection : EBSelection < [CanariLibraryEntry] > { return .single (self.mInternalArrayValue) }

  //····················································································································

  override func setProp (_ inValue : [CanariLibraryEntry]) { self.mInternalArrayValue = inValue }

  //····················································································································

  override final var propval : [CanariLibraryEntry] { return self.mInternalArrayValue }

  //····················································································································

  final func remove (_ object : CanariLibraryEntry) {
    if let idx = self.mInternalArrayValue.firstIndex (of: object) {
      self.mInternalArrayValue.remove (at: idx)
    }
  }

  //····················································································································

  final func add (_ object : CanariLibraryEntry) {
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

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    Stand alone Array: CanariLibraryEntry
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class StandAloneArrayOf_CanariLibraryEntry : ReadWriteArrayOf_CanariLibraryEntry {

  //····················································································································

  override var selection : EBSelection < [CanariLibraryEntry] > { return .single (self.mInternalArrayValue) }

  //····················································································································

  override func setProp (_ inValue : [CanariLibraryEntry]) { self.mInternalArrayValue = inValue }

  //····················································································································

  override var propval : [CanariLibraryEntry] { return self.mInternalArrayValue }

  //····················································································································

  override func notifyModelDidChange () {
    self.postEvent ()
    super.notifyModelDidChange ()
  }

  //····················································································································

  func remove (_ object : CanariLibraryEntry) {
    if let idx = self.mInternalArrayValue.firstIndex (of: object) {
      self.mInternalArrayValue.remove (at: idx)
    }
  }

  //····················································································································

  func add (_ object : CanariLibraryEntry) {
    if !self.internalSetValue.contains (object) {
      self.mInternalArrayValue.append (object)
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    Preferences array: CanariLibraryEntry
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class PreferencesArrayOf_CanariLibraryEntry : StoredArrayOf_CanariLibraryEntry {

  //····················································································································

  private let mPrefKey : String
  private let mObserverForWritingPreferences = EBOutletEvent ()

  //····················································································································

  init (prefKey : String) {
    self.mPrefKey = prefKey
    super.init (usedForSignature: false)
    if let array = UserDefaults.standard.array (forKey: prefKey) as? [NSDictionary] {
      var objectArray = [CanariLibraryEntry] ()
      for dictionary in array {
        if let object = newInstanceOfEntityNamed (self.ebUndoManager, "CanariLibraryEntry") as? CanariLibraryEntry {
          object.setUpAtomicPropertiesWithDictionary (dictionary)
          objectArray.append (object)
        }
      }
      self.setProp (objectArray)
    }
    self.addEBObserverOf_mPath (self.mObserverForWritingPreferences)
    self.addEBObserverOf_mUses (self.mObserverForWritingPreferences)
    self.addEBObserverOf_mLibraryRepositoryURL (self.mObserverForWritingPreferences)
    self.addEBObserverOf_mUserAndPasswordTag (self.mObserverForWritingPreferences)
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

