//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    ReadOnlyArrayOf_LabelInSchematic
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class ReadOnlyArrayOf_LabelInSchematic : ReadOnlyAbstractArrayProperty <LabelInSchematic> {

  //····················································································································

  internal override func updateObservers (removedSet inRemovedSet : Set <LabelInSchematic>, addedSet inAddedSet : Set <LabelInSchematic>) {
    super.updateObservers (removedSet: inRemovedSet, addedSet: inAddedSet)
  //--- Remove observers from removed objects
    self.removeEBObserversOf_mOrientation_fromElementsOfSet (inRemovedSet) // Stored property
    self.removeEBObserversOf_location_fromElementsOfSet (inRemovedSet) // Transient property
    self.removeEBObserversOf_netName_fromElementsOfSet (inRemovedSet) // Transient property
    self.removeEBObserversOf_selectionDisplay_fromElementsOfSet (inRemovedSet) // Transient property
    self.removeEBObserversOf_netClassName_fromElementsOfSet (inRemovedSet) // Transient property
    self.removeEBObserversOf_objectDisplay_fromElementsOfSet (inRemovedSet) // Transient property
  //--- Add observers to added objects
    self.addEBObserversOf_mOrientation_toElementsOfSet (inAddedSet) // Stored property
    self.addEBObserversOf_location_toElementsOfSet (inAddedSet) // Transient property
    self.addEBObserversOf_netName_toElementsOfSet (inAddedSet) // Transient property
    self.addEBObserversOf_selectionDisplay_toElementsOfSet (inAddedSet) // Transient property
    self.addEBObserversOf_netClassName_toElementsOfSet (inAddedSet) // Transient property
    self.addEBObserversOf_objectDisplay_toElementsOfSet (inAddedSet) // Transient property
  }

  //····················································································································
  //   Observers of 'mOrientation' stored property
  //····················································································································

  private var mObserversOf_mOrientation = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_mOrientation (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_mOrientation.insert (inObserver)
    switch self.prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.mOrientation_property.addEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_mOrientation (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_mOrientation.remove (inObserver)
    switch self.prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.mOrientation_property.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_mOrientation_toElementsOfSet (_ inSet : Set<LabelInSchematic>) {
    for managedObject in inSet {
      self.mObserversOf_mOrientation.apply { (_ observer : EBEvent) in
        managedObject.mOrientation_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_mOrientation_fromElementsOfSet (_ inSet : Set<LabelInSchematic>) {
    self.mObserversOf_mOrientation.apply { (_ observer : EBEvent) in
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.mOrientation_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'location' transient property
  //····················································································································

  private var mObserversOf_location = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_location (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_location.insert (inObserver)
    switch self.prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.location_property.addEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_location (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_location.remove (inObserver)
    switch self.prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.location_property.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_location_toElementsOfSet (_ inSet : Set<LabelInSchematic>) {
    for managedObject in inSet {
      self.mObserversOf_location.apply { (_ observer : EBEvent) in
        managedObject.location_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_location_fromElementsOfSet (_ inSet : Set<LabelInSchematic>) {
    for managedObject in inSet {
      self.mObserversOf_location.apply { (_ observer : EBEvent) in
        managedObject.location_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'netName' transient property
  //····················································································································

  private var mObserversOf_netName = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_netName (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_netName.insert (inObserver)
    switch self.prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.netName_property.addEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_netName (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_netName.remove (inObserver)
    switch self.prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.netName_property.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_netName_toElementsOfSet (_ inSet : Set<LabelInSchematic>) {
    for managedObject in inSet {
      self.mObserversOf_netName.apply { (_ observer : EBEvent) in
        managedObject.netName_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_netName_fromElementsOfSet (_ inSet : Set<LabelInSchematic>) {
    for managedObject in inSet {
      self.mObserversOf_netName.apply { (_ observer : EBEvent) in
        managedObject.netName_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'selectionDisplay' transient property
  //····················································································································

  private var mObserversOf_selectionDisplay = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_selectionDisplay (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_selectionDisplay.insert (inObserver)
    switch self.prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.selectionDisplay_property.addEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_selectionDisplay (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_selectionDisplay.remove (inObserver)
    switch self.prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.selectionDisplay_property.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_selectionDisplay_toElementsOfSet (_ inSet : Set<LabelInSchematic>) {
    for managedObject in inSet {
      self.mObserversOf_selectionDisplay.apply { (_ observer : EBEvent) in
        managedObject.selectionDisplay_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_selectionDisplay_fromElementsOfSet (_ inSet : Set<LabelInSchematic>) {
    for managedObject in inSet {
      self.mObserversOf_selectionDisplay.apply { (_ observer : EBEvent) in
        managedObject.selectionDisplay_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'netClassName' transient property
  //····················································································································

  private var mObserversOf_netClassName = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_netClassName (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_netClassName.insert (inObserver)
    switch self.prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.netClassName_property.addEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_netClassName (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_netClassName.remove (inObserver)
    switch self.prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.netClassName_property.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_netClassName_toElementsOfSet (_ inSet : Set<LabelInSchematic>) {
    for managedObject in inSet {
      self.mObserversOf_netClassName.apply { (_ observer : EBEvent) in
        managedObject.netClassName_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_netClassName_fromElementsOfSet (_ inSet : Set<LabelInSchematic>) {
    for managedObject in inSet {
      self.mObserversOf_netClassName.apply { (_ observer : EBEvent) in
        managedObject.netClassName_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'objectDisplay' transient property
  //····················································································································

  private var mObserversOf_objectDisplay = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_objectDisplay (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_objectDisplay.insert (inObserver)
    switch self.prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.objectDisplay_property.addEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_objectDisplay (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_objectDisplay.remove (inObserver)
    switch self.prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.objectDisplay_property.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_objectDisplay_toElementsOfSet (_ inSet : Set<LabelInSchematic>) {
    for managedObject in inSet {
      self.mObserversOf_objectDisplay.apply { (_ observer : EBEvent) in
        managedObject.objectDisplay_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_objectDisplay_fromElementsOfSet (_ inSet : Set<LabelInSchematic>) {
    for managedObject in inSet {
      self.mObserversOf_objectDisplay.apply { (_ observer : EBEvent) in
        managedObject.objectDisplay_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    TransientArrayOf LabelInSchematic
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class TransientArrayOf_LabelInSchematic : ReadOnlyArrayOf_LabelInSchematic {

  //····················································································································
  //   Sort
  //····················································································································

  private var mIsOrderedBefore : Optional < (_ left : LabelInSchematic, _ right : LabelInSchematic) -> Bool > = nil 
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

  private var mDataProvider : ReadOnlyArrayOf_LabelInSchematic? = nil
  private var mTransientKind : PropertyKind = .empty
  private var mModelArrayShouldBeComputed = true

  //····················································································································

  func setDataProvider (_ inProvider : ReadOnlyArrayOf_LabelInSchematic,
                        sortCallback inSortCallBack : Optional < (_ left : LabelInSchematic, _ right : LabelInSchematic) -> Bool >,
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
      let newArray : [LabelInSchematic] 
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

  override var prop : EBSelection < [LabelInSchematic] > {
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

  override var propval : [LabelInSchematic] { return self.mInternalArrayValue }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    TransientArrayOfSuperOf LabelInSchematic
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class TransientArrayOfSuperOf_LabelInSchematic <SUPER : EBManagedObject> : ReadOnlyArrayOf_LabelInSchematic {

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
      var newArray = [LabelInSchematic] ()
      for superObject in newModelArray {
        if let object = superObject as? LabelInSchematic {
          newArray.append (object)
        }
      }
      self.mInternalArrayValue = newArray
    }
  }

  //····················································································································

  override var prop : EBSelection < [LabelInSchematic] > {
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

  override var propval : [LabelInSchematic] { return self.mInternalArrayValue }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    To many relationship read write: LabelInSchematic
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class ReadWriteArrayOf_LabelInSchematic : ReadOnlyArrayOf_LabelInSchematic {

  //····················································································································
 
  func setProp (_ value :  [LabelInSchematic]) { } // Abstract method
  
  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    Proxy: ProxyArrayOf_LabelInSchematic
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class ProxyArrayOf_LabelInSchematic : ReadWriteArrayOf_LabelInSchematic {

  //····················································································································

  private var mModel : ReadWriteArrayOf_LabelInSchematic? = nil

  //····················································································································

  func setModel (_ inModel : ReadWriteArrayOf_LabelInSchematic?) {
    if self.mModel !== inModel {
      self.mModel?.detachClient (self)
      self.mModel = inModel
      self.mModel?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newModelArray : [LabelInSchematic]
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

  override func setProp (_ inArrayValue : [LabelInSchematic]) {
    self.mModel?.setProp (inArrayValue)
  }

  //····················································································································

  override var prop : EBSelection < [LabelInSchematic] > {
    if let model = self.mModel {
      return model.prop
    }else{
      return .empty
    }
  }

  //····················································································································

  override var propval : [LabelInSchematic] {
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
//    Stored Array: LabelInSchematic
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class StoredArrayOf_LabelInSchematic : ReadWriteArrayOf_LabelInSchematic, EBSignatureObserverProtocol {

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

  private var mSetOppositeRelationship : Optional < (_ inManagedObject : LabelInSchematic) -> Void > = nil
  private var mResetOppositeRelationship : Optional < (_ inManagedObject : LabelInSchematic) -> Void > = nil

  //····················································································································

  func setOppositeRelationShipFunctions (setter inSetter : @escaping (_ inManagedObject : LabelInSchematic) -> Void,
                                         resetter inResetter : @escaping (_ inManagedObject : LabelInSchematic) -> Void) {
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

  override func notifyModelDidChangeFrom (oldValue inOldValue : [LabelInSchematic]) {
  //--- Register old value in undo manager
    self.ebUndoManager?.registerUndo (withTarget: self, selector:#selector(performUndo(_:)), object: inOldValue)
  //---
    super.notifyModelDidChangeFrom (oldValue: inOldValue)
  }
 
  //····················································································································

  @objc func performUndo (_ oldValue : [LabelInSchematic]) {
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

  internal override func updateObservers (removedSet inRemovedSet : Set <LabelInSchematic>, addedSet inAddedSet : Set <LabelInSchematic>) {
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

  override var prop : EBSelection < [LabelInSchematic] > { return .single (self.mInternalArrayValue) }

  //····················································································································

  override func setProp (_ inValue : [LabelInSchematic]) { self.mInternalArrayValue = inValue }

  //····················································································································

  override var propval : [LabelInSchematic] { return self.mInternalArrayValue }

  //····················································································································

  func remove (_ object : LabelInSchematic) {
    if let idx = self.mInternalArrayValue.firstIndex (of: object) {
      self.mInternalArrayValue.remove (at: idx)
    }
  }
  
  //····················································································································

  func add (_ object : LabelInSchematic) {
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
//    Stand alone Array: LabelInSchematic
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class StandAloneArrayOf_LabelInSchematic : ReadWriteArrayOf_LabelInSchematic {

  //····················································································································

  override var prop : EBSelection < [LabelInSchematic] > { return .single (self.mInternalArrayValue) }

  //····················································································································

  override func setProp (_ inValue : [LabelInSchematic]) { self.mInternalArrayValue = inValue }

  //····················································································································

  override var propval : [LabelInSchematic] { return self.mInternalArrayValue }

  //····················································································································

  override func notifyModelDidChange () {
    self.postEvent ()
    super.notifyModelDidChange ()
  }

  //····················································································································

  func remove (_ object : LabelInSchematic) {
    if let idx = self.mInternalArrayValue.firstIndex (of: object) {
      self.mInternalArrayValue.remove (at: idx)
    }
  }
  
  //····················································································································

  func add (_ object : LabelInSchematic) {
    if !self.internalSetValue.contains (object) {
      self.mInternalArrayValue.append (object)
    }
  }
  
  //····················································································································
 
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    Preferences array: LabelInSchematic
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class PreferencesArrayOf_LabelInSchematic : StoredArrayOf_LabelInSchematic {

  //····················································································································

  private let mPrefKey : String
  private let mObserverForWritingPreferences = EBOutletEvent ()
  
  //····················································································································

  init (prefKey : String) {
    self.mPrefKey = prefKey
    super.init (usedForSignature: false)
    if let array = UserDefaults.standard.array (forKey: prefKey) as? [NSDictionary] {
      var objectArray = [LabelInSchematic] ()
      for dictionary in array {
        if let object = newInstanceOfEntityNamed (self.ebUndoManager, "LabelInSchematic") as? LabelInSchematic {
          object.setUpAtomicPropertiesWithDictionary (dictionary)
          objectArray.append (object)
        }
      }
      self.setProp (objectArray)
    }
    self.addEBObserverOf_mOrientation (self.mObserverForWritingPreferences)
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

