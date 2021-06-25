//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------
//    ReadOnlyArrayOf_ForbiddenPadNumber
//----------------------------------------------------------------------------------------------------------------------

class ReadOnlyArrayOf_ForbiddenPadNumber : ReadOnlyAbstractArrayProperty <ForbiddenPadNumber> {

  //····················································································································

  internal override func updateObservers (removedSet inRemovedSet : Set <ForbiddenPadNumber>, addedSet inAddedSet : Set <ForbiddenPadNumber>) {
    super.updateObservers (removedSet: inRemovedSet, addedSet: inAddedSet)
  //--- Remove observers from removed objects
    self.removeEBObserversOf_padNumber_fromElementsOfSet (inRemovedSet) // Stored property
  //--- Add observers to added objects
    self.addEBObserversOf_padNumber_toElementsOfSet (inAddedSet) // Stored property
  }

  //····················································································································
  //   Observers of 'padNumber' stored property
  //····················································································································

  private final var mObserversOf_padNumber = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_padNumber (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_padNumber.insert (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.padNumber_property.addEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_padNumber (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_padNumber.remove (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.padNumber_property.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_padNumber_toElementsOfSet (_ inSet : Set <ForbiddenPadNumber>) {
    if !self.mObserversOf_padNumber.isEmpty {
      for managedObject in inSet {
        self.mObserversOf_padNumber.apply { (_ observer : EBEvent) in
          managedObject.padNumber_property.addEBObserver (observer)
        }
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_padNumber_fromElementsOfSet (_ inSet : Set <ForbiddenPadNumber>) {
    self.mObserversOf_padNumber.apply { (_ observer : EBEvent) in
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.padNumber_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//    TransientArrayOf ForbiddenPadNumber
//----------------------------------------------------------------------------------------------------------------------

final class TransientArrayOf_ForbiddenPadNumber : ReadOnlyArrayOf_ForbiddenPadNumber {

  //····················································································································
  //   Sort
  //····················································································································

  private var mIsOrderedBefore : Optional < (_ left : ForbiddenPadNumber, _ right : ForbiddenPadNumber) -> Bool > = nil 
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

  private var mDataProvider : ReadOnlyArrayOf_ForbiddenPadNumber? = nil
  private var mTransientKind : PropertyKind = .empty
  private var mModelArrayShouldBeComputed = true

  //····················································································································

  func setDataProvider (_ inProvider : ReadOnlyArrayOf_ForbiddenPadNumber,
                        sortCallback inSortCallBack : Optional < (_ left : ForbiddenPadNumber, _ right : ForbiddenPadNumber) -> Bool >,
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
      let newArray : [ForbiddenPadNumber] 
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

  override var selection : EBSelection < [ForbiddenPadNumber] > {
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

  override var propval : [ForbiddenPadNumber] {
    self.computeModelArray ()
    return self.mInternalArrayValue
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//    TransientArrayOfSuperOf ForbiddenPadNumber
//----------------------------------------------------------------------------------------------------------------------

final class TransientArrayOfSuperOf_ForbiddenPadNumber <SUPER : EBManagedObject> : ReadOnlyArrayOf_ForbiddenPadNumber {

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
      var newArray = [ForbiddenPadNumber] ()
      for superObject in newModelArray {
        if let object = superObject as? ForbiddenPadNumber {
          newArray.append (object)
        }
      }
      self.mInternalArrayValue = newArray
    }
  }

  //····················································································································

  override var selection : EBSelection < [ForbiddenPadNumber] > {
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

  override var propval : [ForbiddenPadNumber] { return self.mInternalArrayValue }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//    To many relationship read write: ForbiddenPadNumber
//----------------------------------------------------------------------------------------------------------------------

class ReadWriteArrayOf_ForbiddenPadNumber : ReadOnlyArrayOf_ForbiddenPadNumber {

  //····················································································································
 
  func setProp (_ value :  [ForbiddenPadNumber]) { } // Abstract method
  
  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//    Proxy: ProxyArrayOf_ForbiddenPadNumber
//----------------------------------------------------------------------------------------------------------------------

final class ProxyArrayOf_ForbiddenPadNumber : ReadWriteArrayOf_ForbiddenPadNumber {

  //····················································································································

  private var mModel : ReadWriteArrayOf_ForbiddenPadNumber? = nil

  //····················································································································

  func setModel (_ inModel : ReadWriteArrayOf_ForbiddenPadNumber?) {
    if self.mModel !== inModel {
      self.mModel?.detachClient (self)
      self.mModel = inModel
      self.mModel?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newModelArray : [ForbiddenPadNumber]
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

  override func setProp (_ inArrayValue : [ForbiddenPadNumber]) {
    self.mModel?.setProp (inArrayValue)
  }

  //····················································································································

  override var selection : EBSelection < [ForbiddenPadNumber] > {
    if let model = self.mModel {
      return model.selection
    }else{
      return .empty
    }
  }

  //····················································································································

  override var propval : [ForbiddenPadNumber] {
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
//    Stored Array: ForbiddenPadNumber
//----------------------------------------------------------------------------------------------------------------------

class StoredArrayOf_ForbiddenPadNumber : ReadWriteArrayOf_ForbiddenPadNumber, EBSignatureObserverProtocol {

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

  private final var mSetOppositeRelationship : Optional < (_ inManagedObject : ForbiddenPadNumber) -> Void > = nil
  private final var mResetOppositeRelationship : Optional < (_ inManagedObject : ForbiddenPadNumber) -> Void > = nil

  //····················································································································

  final func setOppositeRelationShipFunctions (setter inSetter : @escaping (_ inManagedObject : ForbiddenPadNumber) -> Void,
                                               resetter inResetter : @escaping (_ inManagedObject : ForbiddenPadNumber) -> Void) {
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

  override func notifyModelDidChangeFrom (oldValue inOldValue : [ForbiddenPadNumber]) {
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

  override func updateObservers (removedSet inRemovedSet : Set <ForbiddenPadNumber>, addedSet inAddedSet : Set <ForbiddenPadNumber>) {
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

  override final var selection : EBSelection < [ForbiddenPadNumber] > { return .single (self.mInternalArrayValue) }

  //····················································································································

  override func setProp (_ inValue : [ForbiddenPadNumber]) { self.mInternalArrayValue = inValue }

  //····················································································································

  override final var propval : [ForbiddenPadNumber] { return self.mInternalArrayValue }

  //····················································································································

  final func remove (_ object : ForbiddenPadNumber) {
    if let idx = self.mInternalArrayValue.firstIndex (of: object) {
      self.mInternalArrayValue.remove (at: idx)
    }
  }
  
  //····················································································································

  final func add (_ object : ForbiddenPadNumber) {
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
//    Stand alone Array: ForbiddenPadNumber
//----------------------------------------------------------------------------------------------------------------------

final class StandAloneArrayOf_ForbiddenPadNumber : ReadWriteArrayOf_ForbiddenPadNumber {

  //····················································································································

  override var selection : EBSelection < [ForbiddenPadNumber] > { return .single (self.mInternalArrayValue) }

  //····················································································································

  override func setProp (_ inValue : [ForbiddenPadNumber]) { self.mInternalArrayValue = inValue }

  //····················································································································

  override var propval : [ForbiddenPadNumber] { return self.mInternalArrayValue }

  //····················································································································

  override func notifyModelDidChange () {
    self.postEvent ()
    super.notifyModelDidChange ()
  }

  //····················································································································

  func remove (_ object : ForbiddenPadNumber) {
    if let idx = self.mInternalArrayValue.firstIndex (of: object) {
      self.mInternalArrayValue.remove (at: idx)
    }
  }
  
  //····················································································································

  func add (_ object : ForbiddenPadNumber) {
    if !self.internalSetValue.contains (object) {
      self.mInternalArrayValue.append (object)
    }
  }
  
  //····················································································································
 
}

//----------------------------------------------------------------------------------------------------------------------
//    Preferences array: ForbiddenPadNumber
//----------------------------------------------------------------------------------------------------------------------

final class PreferencesArrayOf_ForbiddenPadNumber : StoredArrayOf_ForbiddenPadNumber {

  //····················································································································

  private let mPrefKey : String
  private let mObserverForWritingPreferences = EBOutletEvent ()
  
  //····················································································································

  init (prefKey : String) {
    self.mPrefKey = prefKey
    super.init (usedForSignature: false)
    if let array = UserDefaults.standard.array (forKey: prefKey) as? [NSDictionary] {
      var objectArray = [ForbiddenPadNumber] ()
      for dictionary in array {
        if let object = newInstanceOfEntityNamed (self.ebUndoManager, "ForbiddenPadNumber") as? ForbiddenPadNumber {
          object.setUpAtomicPropertiesWithDictionary (dictionary)
          objectArray.append (object)
        }
      }
      self.setProp (objectArray)
    }
    self.addEBObserverOf_padNumber (self.mObserverForWritingPreferences)
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

