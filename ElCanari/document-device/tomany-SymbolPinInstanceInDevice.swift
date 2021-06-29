//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------
//    ReadOnlyArrayOf_SymbolPinInstanceInDevice
//----------------------------------------------------------------------------------------------------------------------

class ReadOnlyArrayOf_SymbolPinInstanceInDevice : ReadOnlyAbstractArrayProperty <SymbolPinInstanceInDevice> {

  //····················································································································

  internal override func updateObservers (removedSet inRemovedSet : Set <SymbolPinInstanceInDevice>, addedSet inAddedSet : Set <SymbolPinInstanceInDevice>) {
    super.updateObservers (removedSet: inRemovedSet, addedSet: inAddedSet)
  //--- Remove observers from removed objects
    self.removeEBObserversOf_pinName_fromElementsOfSet (inRemovedSet) // Transient property
    self.removeEBObserversOf_symbolName_fromElementsOfSet (inRemovedSet) // Transient property
    self.removeEBObserversOf_pinQualifiedName_fromElementsOfSet (inRemovedSet) // Transient property
    self.removeEBObserversOf_isConnected_fromElementsOfSet (inRemovedSet) // Transient property
    self.removeEBObserversOf_numberShape_fromElementsOfSet (inRemovedSet) // Transient property
  //--- Add observers to added objects
    self.addEBObserversOf_pinName_toElementsOfSet (inAddedSet) // Transient property
    self.addEBObserversOf_symbolName_toElementsOfSet (inAddedSet) // Transient property
    self.addEBObserversOf_pinQualifiedName_toElementsOfSet (inAddedSet) // Transient property
    self.addEBObserversOf_isConnected_toElementsOfSet (inAddedSet) // Transient property
    self.addEBObserversOf_numberShape_toElementsOfSet (inAddedSet) // Transient property
  }

  //····················································································································
  //   Observers of 'pinName' transient property
  //····················································································································

  private final var mObserversOf_pinName = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_pinName (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_pinName.insert (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.pinName_property.addEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_pinName (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_pinName.remove (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.pinName_property.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_pinName_toElementsOfSet (_ inSet : Set <SymbolPinInstanceInDevice>) {
    for managedObject in inSet {
      self.mObserversOf_pinName.apply { (_ observer : EBEvent) in
        managedObject.pinName_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_pinName_fromElementsOfSet (_ inSet : Set <SymbolPinInstanceInDevice>) {
    for managedObject in inSet {
      self.mObserversOf_pinName.apply { (_ observer : EBEvent) in
        managedObject.pinName_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'symbolName' transient property
  //····················································································································

  private final var mObserversOf_symbolName = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_symbolName (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_symbolName.insert (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.symbolName_property.addEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_symbolName (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_symbolName.remove (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.symbolName_property.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_symbolName_toElementsOfSet (_ inSet : Set <SymbolPinInstanceInDevice>) {
    for managedObject in inSet {
      self.mObserversOf_symbolName.apply { (_ observer : EBEvent) in
        managedObject.symbolName_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_symbolName_fromElementsOfSet (_ inSet : Set <SymbolPinInstanceInDevice>) {
    for managedObject in inSet {
      self.mObserversOf_symbolName.apply { (_ observer : EBEvent) in
        managedObject.symbolName_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'pinQualifiedName' transient property
  //····················································································································

  private final var mObserversOf_pinQualifiedName = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_pinQualifiedName (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_pinQualifiedName.insert (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.pinQualifiedName_property.addEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_pinQualifiedName (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_pinQualifiedName.remove (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.pinQualifiedName_property.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_pinQualifiedName_toElementsOfSet (_ inSet : Set <SymbolPinInstanceInDevice>) {
    for managedObject in inSet {
      self.mObserversOf_pinQualifiedName.apply { (_ observer : EBEvent) in
        managedObject.pinQualifiedName_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_pinQualifiedName_fromElementsOfSet (_ inSet : Set <SymbolPinInstanceInDevice>) {
    for managedObject in inSet {
      self.mObserversOf_pinQualifiedName.apply { (_ observer : EBEvent) in
        managedObject.pinQualifiedName_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'isConnected' transient property
  //····················································································································

  private final var mObserversOf_isConnected = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_isConnected (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_isConnected.insert (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.isConnected_property.addEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_isConnected (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_isConnected.remove (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.isConnected_property.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_isConnected_toElementsOfSet (_ inSet : Set <SymbolPinInstanceInDevice>) {
    for managedObject in inSet {
      self.mObserversOf_isConnected.apply { (_ observer : EBEvent) in
        managedObject.isConnected_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_isConnected_fromElementsOfSet (_ inSet : Set <SymbolPinInstanceInDevice>) {
    for managedObject in inSet {
      self.mObserversOf_isConnected.apply { (_ observer : EBEvent) in
        managedObject.isConnected_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'numberShape' transient property
  //····················································································································

  private final var mObserversOf_numberShape = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_numberShape (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_numberShape.insert (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.numberShape_property.addEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_numberShape (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_numberShape.remove (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.numberShape_property.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_numberShape_toElementsOfSet (_ inSet : Set <SymbolPinInstanceInDevice>) {
    for managedObject in inSet {
      self.mObserversOf_numberShape.apply { (_ observer : EBEvent) in
        managedObject.numberShape_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_numberShape_fromElementsOfSet (_ inSet : Set <SymbolPinInstanceInDevice>) {
    for managedObject in inSet {
      self.mObserversOf_numberShape.apply { (_ observer : EBEvent) in
        managedObject.numberShape_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//    TransientArrayOf SymbolPinInstanceInDevice
//----------------------------------------------------------------------------------------------------------------------

final class TransientArrayOf_SymbolPinInstanceInDevice : ReadOnlyArrayOf_SymbolPinInstanceInDevice {

  //····················································································································
  //   Sort
  //····················································································································

  private var mIsOrderedBefore : Optional < (_ left : SymbolPinInstanceInDevice, _ right : SymbolPinInstanceInDevice) -> Bool > = nil 
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

  private var mDataProvider : ReadOnlyArrayOf_SymbolPinInstanceInDevice? = nil
  private var mTransientKind : PropertyKind = .empty
  private var mModelArrayShouldBeComputed = true

  //····················································································································

  func setDataProvider (_ inProvider : ReadOnlyArrayOf_SymbolPinInstanceInDevice,
                        sortCallback inSortCallBack : Optional < (_ left : SymbolPinInstanceInDevice, _ right : SymbolPinInstanceInDevice) -> Bool >,
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
      let newArray : [SymbolPinInstanceInDevice] 
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

  override var selection : EBSelection < [SymbolPinInstanceInDevice] > {
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

  override var propval : [SymbolPinInstanceInDevice] {
    self.computeModelArray ()
    return self.mInternalArrayValue
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//    TransientArrayOfSuperOf SymbolPinInstanceInDevice
//----------------------------------------------------------------------------------------------------------------------

final class TransientArrayOfSuperOf_SymbolPinInstanceInDevice <SUPER : EBManagedObject> : ReadOnlyArrayOf_SymbolPinInstanceInDevice {

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
      var newArray = [SymbolPinInstanceInDevice] ()
      for superObject in newModelArray {
        if let object = superObject as? SymbolPinInstanceInDevice {
          newArray.append (object)
        }
      }
      self.mInternalArrayValue = newArray
    }
  }

  //····················································································································

  override var selection : EBSelection < [SymbolPinInstanceInDevice] > {
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

  override var propval : [SymbolPinInstanceInDevice] {
    self.computeModelArray ()
    return self.mInternalArrayValue
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//    To many relationship read write: SymbolPinInstanceInDevice
//----------------------------------------------------------------------------------------------------------------------

class ReadWriteArrayOf_SymbolPinInstanceInDevice : ReadOnlyArrayOf_SymbolPinInstanceInDevice {

  //····················································································································
 
  func setProp (_ value :  [SymbolPinInstanceInDevice]) { } // Abstract method
  
  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//    Proxy: ProxyArrayOf_SymbolPinInstanceInDevice
//----------------------------------------------------------------------------------------------------------------------

final class ProxyArrayOf_SymbolPinInstanceInDevice : ReadWriteArrayOf_SymbolPinInstanceInDevice {

  //····················································································································

  private var mModel : ReadWriteArrayOf_SymbolPinInstanceInDevice? = nil

  //····················································································································

  func setModel (_ inModel : ReadWriteArrayOf_SymbolPinInstanceInDevice?) {
    if self.mModel !== inModel {
      self.mModel?.detachClient (self)
      self.mModel = inModel
      self.mModel?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newModelArray : [SymbolPinInstanceInDevice]
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

  override func setProp (_ inArrayValue : [SymbolPinInstanceInDevice]) {
    self.mModel?.setProp (inArrayValue)
  }

  //····················································································································

  override var selection : EBSelection < [SymbolPinInstanceInDevice] > {
    if let model = self.mModel {
      return model.selection
    }else{
      return .empty
    }
  }

  //····················································································································

  override var propval : [SymbolPinInstanceInDevice] {
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
//    Stored Array: SymbolPinInstanceInDevice
//----------------------------------------------------------------------------------------------------------------------

class StoredArrayOf_SymbolPinInstanceInDevice : ReadWriteArrayOf_SymbolPinInstanceInDevice, EBSignatureObserverProtocol {

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

  private final var mSetOppositeRelationship : Optional < (_ inManagedObject : SymbolPinInstanceInDevice) -> Void > = nil
  private final var mResetOppositeRelationship : Optional < (_ inManagedObject : SymbolPinInstanceInDevice) -> Void > = nil

  //····················································································································

  final func setOppositeRelationShipFunctions (setter inSetter : @escaping (_ inManagedObject : SymbolPinInstanceInDevice) -> Void,
                                               resetter inResetter : @escaping (_ inManagedObject : SymbolPinInstanceInDevice) -> Void) {
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

  override func notifyModelDidChangeFrom (oldValue inOldValue : [SymbolPinInstanceInDevice]) {
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

  override func updateObservers (removedSet inRemovedSet : Set <SymbolPinInstanceInDevice>, addedSet inAddedSet : Set <SymbolPinInstanceInDevice>) {
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

  override final var selection : EBSelection < [SymbolPinInstanceInDevice] > { return .single (self.mInternalArrayValue) }

  //····················································································································

  override func setProp (_ inValue : [SymbolPinInstanceInDevice]) { self.mInternalArrayValue = inValue }

  //····················································································································

  override final var propval : [SymbolPinInstanceInDevice] { return self.mInternalArrayValue }

  //····················································································································

  final func remove (_ object : SymbolPinInstanceInDevice) {
    if let idx = self.mInternalArrayValue.firstIndex (of: object) {
      self.mInternalArrayValue.remove (at: idx)
    }
  }
  
  //····················································································································

  final func add (_ object : SymbolPinInstanceInDevice) {
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
//    Stand alone Array: SymbolPinInstanceInDevice
//----------------------------------------------------------------------------------------------------------------------

final class StandAloneArrayOf_SymbolPinInstanceInDevice : ReadWriteArrayOf_SymbolPinInstanceInDevice {

  //····················································································································

  override var selection : EBSelection < [SymbolPinInstanceInDevice] > { return .single (self.mInternalArrayValue) }

  //····················································································································

  override func setProp (_ inValue : [SymbolPinInstanceInDevice]) { self.mInternalArrayValue = inValue }

  //····················································································································

  override var propval : [SymbolPinInstanceInDevice] { return self.mInternalArrayValue }

  //····················································································································

  override func notifyModelDidChange () {
    self.postEvent ()
    super.notifyModelDidChange ()
  }

  //····················································································································

  func remove (_ object : SymbolPinInstanceInDevice) {
    if let idx = self.mInternalArrayValue.firstIndex (of: object) {
      self.mInternalArrayValue.remove (at: idx)
    }
  }
  
  //····················································································································

  func add (_ object : SymbolPinInstanceInDevice) {
    if !self.internalSetValue.contains (object) {
      self.mInternalArrayValue.append (object)
    }
  }
  
  //····················································································································
 
}

//----------------------------------------------------------------------------------------------------------------------
//    Preferences array: SymbolPinInstanceInDevice
//----------------------------------------------------------------------------------------------------------------------

final class PreferencesArrayOf_SymbolPinInstanceInDevice : StoredArrayOf_SymbolPinInstanceInDevice {

  //····················································································································

  private let mPrefKey : String
  private let mObserverForWritingPreferences = EBOutletEvent ()
  
  //····················································································································

  init (prefKey : String) {
    self.mPrefKey = prefKey
    super.init (usedForSignature: false)
    if let array = UserDefaults.standard.array (forKey: prefKey) as? [NSDictionary] {
      var objectArray = [SymbolPinInstanceInDevice] ()
      for dictionary in array {
        if let object = newInstanceOfEntityNamed (self.ebUndoManager, "SymbolPinInstanceInDevice") as? SymbolPinInstanceInDevice {
          object.setUpAtomicPropertiesWithDictionary (dictionary)
          objectArray.append (object)
        }
      }
      self.setProp (objectArray)
    }
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

