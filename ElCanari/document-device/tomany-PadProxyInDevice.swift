//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    ReadOnlyArrayOf_PadProxyInDevice
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class ReadOnlyArrayOf_PadProxyInDevice : ReadOnlyAbstractArrayProperty <PadProxyInDevice> {

  //····················································································································

  internal override func updateObservers (removedSet inRemovedSet : Set <PadProxyInDevice>, addedSet inAddedSet : Set <PadProxyInDevice>) {
    super.updateObservers (removedSet: inRemovedSet, addedSet: inAddedSet)
  //--- Remove observers from removed objects
    self.removeEBObserversOf_mPinInstanceName_fromElementsOfSet (inRemovedSet) // Stored property
    self.removeEBObserversOf_mPadName_fromElementsOfSet (inRemovedSet) // Stored property
    self.removeEBObserversOf_mIsNC_fromElementsOfSet (inRemovedSet) // Stored property
    self.removeEBObserversOf_isConnected_fromElementsOfSet (inRemovedSet) // Transient property
    self.removeEBObserversOf_symbolName_fromElementsOfSet (inRemovedSet) // Transient property
  //--- Add observers to added objects
    self.addEBObserversOf_mPinInstanceName_toElementsOfSet (inAddedSet) // Stored property
    self.addEBObserversOf_mPadName_toElementsOfSet (inAddedSet) // Stored property
    self.addEBObserversOf_mIsNC_toElementsOfSet (inAddedSet) // Stored property
    self.addEBObserversOf_isConnected_toElementsOfSet (inAddedSet) // Transient property
    self.addEBObserversOf_symbolName_toElementsOfSet (inAddedSet) // Transient property
  }

  //····················································································································
  //   Observers of 'mPinInstanceName' stored property
  //····················································································································

  private var mObserversOf_mPinInstanceName = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_mPinInstanceName (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_mPinInstanceName.insert (inObserver)
    switch self.prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.mPinInstanceName_property.addEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_mPinInstanceName (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_mPinInstanceName.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.mPinInstanceName_property.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_mPinInstanceName_toElementsOfSet (_ inSet : Set<PadProxyInDevice>) {
    for managedObject in inSet {
      self.mObserversOf_mPinInstanceName.apply { (_ observer : EBEvent) in
        managedObject.mPinInstanceName_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_mPinInstanceName_fromElementsOfSet (_ inSet : Set<PadProxyInDevice>) {
    self.mObserversOf_mPinInstanceName.apply { (_ observer : EBEvent) in
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.mPinInstanceName_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'mPadName' stored property
  //····················································································································

  private var mObserversOf_mPadName = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_mPadName (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_mPadName.insert (inObserver)
    switch self.prop {
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

  final func addEBObserversOf_mPadName_toElementsOfSet (_ inSet : Set<PadProxyInDevice>) {
    for managedObject in inSet {
      self.mObserversOf_mPadName.apply { (_ observer : EBEvent) in
        managedObject.mPadName_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_mPadName_fromElementsOfSet (_ inSet : Set<PadProxyInDevice>) {
    self.mObserversOf_mPadName.apply { (_ observer : EBEvent) in
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.mPadName_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'mIsNC' stored property
  //····················································································································

  private var mObserversOf_mIsNC = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_mIsNC (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_mIsNC.insert (inObserver)
    switch self.prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.mIsNC_property.addEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_mIsNC (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_mIsNC.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.mIsNC_property.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_mIsNC_toElementsOfSet (_ inSet : Set<PadProxyInDevice>) {
    for managedObject in inSet {
      self.mObserversOf_mIsNC.apply { (_ observer : EBEvent) in
        managedObject.mIsNC_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_mIsNC_fromElementsOfSet (_ inSet : Set<PadProxyInDevice>) {
    self.mObserversOf_mIsNC.apply { (_ observer : EBEvent) in
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.mIsNC_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'isConnected' transient property
  //····················································································································

  private var mObserversOf_isConnected = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_isConnected (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_isConnected.insert (inObserver)
    switch self.prop {
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
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.isConnected_property.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_isConnected_toElementsOfSet (_ inSet : Set<PadProxyInDevice>) {
    for managedObject in inSet {
      self.mObserversOf_isConnected.apply { (_ observer : EBEvent) in
        managedObject.isConnected_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_isConnected_fromElementsOfSet (_ inSet : Set<PadProxyInDevice>) {
    for managedObject in inSet {
      self.mObserversOf_isConnected.apply { (_ observer : EBEvent) in
        managedObject.isConnected_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'symbolName' transient property
  //····················································································································

  private var mObserversOf_symbolName = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_symbolName (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_symbolName.insert (inObserver)
    switch self.prop {
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
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.symbolName_property.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_symbolName_toElementsOfSet (_ inSet : Set<PadProxyInDevice>) {
    for managedObject in inSet {
      self.mObserversOf_symbolName.apply { (_ observer : EBEvent) in
        managedObject.symbolName_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_symbolName_fromElementsOfSet (_ inSet : Set<PadProxyInDevice>) {
    for managedObject in inSet {
      self.mObserversOf_symbolName.apply { (_ observer : EBEvent) in
        managedObject.symbolName_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    TransientArrayOf PadProxyInDevice
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class TransientArrayOf_PadProxyInDevice : ReadOnlyArrayOf_PadProxyInDevice {

  //····················································································································
  //   Sort
  //····················································································································

  private var mIsOrderedBefore : Optional < (_ left : PadProxyInDevice, _ right : PadProxyInDevice) -> Bool > = nil 
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

  private var mDataProvider : ReadOnlyArrayOf_PadProxyInDevice? = nil
  private var mTransientKind : PropertyKind = .empty
  private var mModelArrayShouldBeComputed = true

  //····················································································································

  func setDataProvider (_ inProvider : ReadOnlyArrayOf_PadProxyInDevice,
                        sortCallback inSortCallBack : Optional < (_ left : PadProxyInDevice, _ right : PadProxyInDevice) -> Bool >,
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
      let newArray : [PadProxyInDevice] 
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

  override var prop : EBSelection < [PadProxyInDevice] > {
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

  override var propval : [PadProxyInDevice] { return self.mInternalArrayValue }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    TransientArrayOfSuperOf PadProxyInDevice
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class TransientArrayOfSuperOf_PadProxyInDevice <SUPER : EBManagedObject> : ReadOnlyArrayOf_PadProxyInDevice {

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
      var newArray = [PadProxyInDevice] ()
      for superObject in newModelArray {
        if let object = superObject as? PadProxyInDevice {
          newArray.append (object)
        }
      }
      self.mInternalArrayValue = newArray
    }
  }

  //····················································································································

  override var prop : EBSelection < [PadProxyInDevice] > {
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

  override var propval : [PadProxyInDevice] { return self.mInternalArrayValue }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    To many relationship read write: PadProxyInDevice
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class ReadWriteArrayOf_PadProxyInDevice : ReadOnlyArrayOf_PadProxyInDevice {

  //····················································································································
 
  func setProp (_ value :  [PadProxyInDevice]) { } // Abstract method
  
  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    Proxy: ProxyArrayOf_PadProxyInDevice
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class ProxyArrayOf_PadProxyInDevice : ReadWriteArrayOf_PadProxyInDevice {

  //····················································································································

  private var mModel : ReadWriteArrayOf_PadProxyInDevice? = nil

  //····················································································································

  func setModel (_ inModel : ReadWriteArrayOf_PadProxyInDevice?) {
    if self.mModel !== inModel {
      self.mModel?.detachClient (self)
      self.mModel = inModel
      self.mModel?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newModelArray : [PadProxyInDevice]
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

  override func setProp (_ inArrayValue : [PadProxyInDevice]) {
    self.mModel?.setProp (inArrayValue)
  }

  //····················································································································

  override var prop : EBSelection < [PadProxyInDevice] > {
    if let model = self.mModel {
      return model.prop
    }else{
      return .empty
    }
  }

  //····················································································································

  override var propval : [PadProxyInDevice] {
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
//    Stored Array: PadProxyInDevice
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class StoredArrayOf_PadProxyInDevice : ReadWriteArrayOf_PadProxyInDevice, EBSignatureObserverProtocol {

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

  private var mSetOppositeRelationship : Optional < (_ inManagedObject : PadProxyInDevice) -> Void > = nil
  private var mResetOppositeRelationship : Optional < (_ inManagedObject : PadProxyInDevice) -> Void > = nil

  //····················································································································

  func setOppositeRelationShipFunctions (setter inSetter : @escaping (_ inManagedObject : PadProxyInDevice) -> Void,
                                         resetter inResetter : @escaping (_ inManagedObject : PadProxyInDevice) -> Void) {
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

  override func notifyModelDidChangeFrom (oldValue inOldValue : [PadProxyInDevice]) {
  //--- Register old value in undo manager
    self.ebUndoManager?.registerUndo (withTarget: self, selector:#selector(performUndo(_:)), object: inOldValue)
  //---
    super.notifyModelDidChangeFrom (oldValue: inOldValue)
  }
 
  //····················································································································

  @objc func performUndo (_ oldValue : [PadProxyInDevice]) {
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

  internal override func updateObservers (removedSet inRemovedSet : Set <PadProxyInDevice>, addedSet inAddedSet : Set <PadProxyInDevice>) {
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

  override var prop : EBSelection < [PadProxyInDevice] > { return .single (self.mInternalArrayValue) }

  //····················································································································

  override func setProp (_ inValue : [PadProxyInDevice]) { self.mInternalArrayValue = inValue }

  //····················································································································

  override var propval : [PadProxyInDevice] { return self.mInternalArrayValue }

  //····················································································································

  func remove (_ object : PadProxyInDevice) {
    if let idx = self.mInternalArrayValue.firstIndex (of: object) {
      self.mInternalArrayValue.remove (at: idx)
    }
  }
  
  //····················································································································

  func add (_ object : PadProxyInDevice) {
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
//    Stand alone Array: PadProxyInDevice
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class StandAloneArrayOf_PadProxyInDevice : ReadWriteArrayOf_PadProxyInDevice {

  //····················································································································

  override var prop : EBSelection < [PadProxyInDevice] > { return .single (self.mInternalArrayValue) }

  //····················································································································

  override func setProp (_ inValue : [PadProxyInDevice]) { self.mInternalArrayValue = inValue }

  //····················································································································

  override var propval : [PadProxyInDevice] { return self.mInternalArrayValue }

  //····················································································································

  override func notifyModelDidChange () {
    self.postEvent ()
    super.notifyModelDidChange ()
  }

  //····················································································································

  func remove (_ object : PadProxyInDevice) {
    if let idx = self.mInternalArrayValue.firstIndex (of: object) {
      self.mInternalArrayValue.remove (at: idx)
    }
  }
  
  //····················································································································

  func add (_ object : PadProxyInDevice) {
    if !self.internalSetValue.contains (object) {
      self.mInternalArrayValue.append (object)
    }
  }
  
  //····················································································································
 
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    Preferences array: PadProxyInDevice
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class PreferencesArrayOf_PadProxyInDevice : StoredArrayOf_PadProxyInDevice {

  //····················································································································

  private let mPrefKey : String
  private let mObserverForWritingPreferences = EBOutletEvent ()
  
  //····················································································································

  init (prefKey : String) {
    self.mPrefKey = prefKey
    super.init (usedForSignature: false)
    if let array = UserDefaults.standard.array (forKey: prefKey) as? [NSDictionary] {
      var objectArray = [PadProxyInDevice] ()
      for dictionary in array {
        if let object = newInstanceOfEntityNamed (self.ebUndoManager, "PadProxyInDevice") as? PadProxyInDevice {
          object.setUpAtomicPropertiesWithDictionary (dictionary)
          objectArray.append (object)
        }
      }
      self.setProp (objectArray)
    }
    self.addEBObserverOf_mPinInstanceName (self.mObserverForWritingPreferences)
    self.addEBObserverOf_mPadName (self.mObserverForWritingPreferences)
    self.addEBObserverOf_mIsNC (self.mObserverForWritingPreferences)
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

