//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------
//    ReadOnlyArrayOf_SchematicObject
//----------------------------------------------------------------------------------------------------------------------

class ReadOnlyArrayOf_SchematicObject : ReadOnlyAbstractArrayProperty <SchematicObject> {

  //····················································································································

  internal override func updateObservers (removedSet inRemovedSet : Set <SchematicObject>, addedSet inAddedSet : Set <SchematicObject>) {
    super.updateObservers (removedSet: inRemovedSet, addedSet: inAddedSet)
  //--- Remove observers from removed objects
    self.removeEBObserversOf_issues_fromElementsOfSet (inRemovedSet) // Transient property
    self.removeEBObserversOf_connectedPoints_fromElementsOfSet (inRemovedSet) // Transient property
    self.removeEBObserversOf_sheetDescriptor_fromElementsOfSet (inRemovedSet) // Transient property
    self.removeEBObserversOf_selectionDisplay_fromElementsOfSet (inRemovedSet) // Transient property
    self.removeEBObserversOf_objectDisplay_fromElementsOfSet (inRemovedSet) // Transient property
    self.removeEBObserversOf_isPlacedInSchematic_fromElementsOfSet (inRemovedSet) // Transient property
  //--- Add observers to added objects
    self.addEBObserversOf_issues_toElementsOfSet (inAddedSet) // Transient property
    self.addEBObserversOf_connectedPoints_toElementsOfSet (inAddedSet) // Transient property
    self.addEBObserversOf_sheetDescriptor_toElementsOfSet (inAddedSet) // Transient property
    self.addEBObserversOf_selectionDisplay_toElementsOfSet (inAddedSet) // Transient property
    self.addEBObserversOf_objectDisplay_toElementsOfSet (inAddedSet) // Transient property
    self.addEBObserversOf_isPlacedInSchematic_toElementsOfSet (inAddedSet) // Transient property
  }

  //····················································································································
  //   Observers of 'issues' transient property
  //····················································································································

  private var mObserversOf_issues = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_issues (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_issues.insert (inObserver)
    switch self.prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.issues_property.addEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_issues (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_issues.remove (inObserver)
    switch self.prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.issues_property.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_issues_toElementsOfSet (_ inSet : Set<SchematicObject>) {
    for managedObject in inSet {
      self.mObserversOf_issues.apply { (_ observer : EBEvent) in
        managedObject.issues_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_issues_fromElementsOfSet (_ inSet : Set<SchematicObject>) {
    for managedObject in inSet {
      self.mObserversOf_issues.apply { (_ observer : EBEvent) in
        managedObject.issues_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'connectedPoints' transient property
  //····················································································································

  private var mObserversOf_connectedPoints = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_connectedPoints (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_connectedPoints.insert (inObserver)
    switch self.prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.connectedPoints_property.addEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_connectedPoints (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_connectedPoints.remove (inObserver)
    switch self.prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.connectedPoints_property.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_connectedPoints_toElementsOfSet (_ inSet : Set<SchematicObject>) {
    for managedObject in inSet {
      self.mObserversOf_connectedPoints.apply { (_ observer : EBEvent) in
        managedObject.connectedPoints_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_connectedPoints_fromElementsOfSet (_ inSet : Set<SchematicObject>) {
    for managedObject in inSet {
      self.mObserversOf_connectedPoints.apply { (_ observer : EBEvent) in
        managedObject.connectedPoints_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'sheetDescriptor' transient property
  //····················································································································

  private var mObserversOf_sheetDescriptor = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_sheetDescriptor (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_sheetDescriptor.insert (inObserver)
    switch self.prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.sheetDescriptor_property.addEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_sheetDescriptor (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_sheetDescriptor.remove (inObserver)
    switch self.prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.sheetDescriptor_property.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_sheetDescriptor_toElementsOfSet (_ inSet : Set<SchematicObject>) {
    for managedObject in inSet {
      self.mObserversOf_sheetDescriptor.apply { (_ observer : EBEvent) in
        managedObject.sheetDescriptor_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_sheetDescriptor_fromElementsOfSet (_ inSet : Set<SchematicObject>) {
    for managedObject in inSet {
      self.mObserversOf_sheetDescriptor.apply { (_ observer : EBEvent) in
        managedObject.sheetDescriptor_property.removeEBObserver (observer)
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

  final func addEBObserversOf_selectionDisplay_toElementsOfSet (_ inSet : Set<SchematicObject>) {
    for managedObject in inSet {
      self.mObserversOf_selectionDisplay.apply { (_ observer : EBEvent) in
        managedObject.selectionDisplay_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_selectionDisplay_fromElementsOfSet (_ inSet : Set<SchematicObject>) {
    for managedObject in inSet {
      self.mObserversOf_selectionDisplay.apply { (_ observer : EBEvent) in
        managedObject.selectionDisplay_property.removeEBObserver (observer)
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

  final func addEBObserversOf_objectDisplay_toElementsOfSet (_ inSet : Set<SchematicObject>) {
    for managedObject in inSet {
      self.mObserversOf_objectDisplay.apply { (_ observer : EBEvent) in
        managedObject.objectDisplay_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_objectDisplay_fromElementsOfSet (_ inSet : Set<SchematicObject>) {
    for managedObject in inSet {
      self.mObserversOf_objectDisplay.apply { (_ observer : EBEvent) in
        managedObject.objectDisplay_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'isPlacedInSchematic' transient property
  //····················································································································

  private var mObserversOf_isPlacedInSchematic = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_isPlacedInSchematic (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_isPlacedInSchematic.insert (inObserver)
    switch self.prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.isPlacedInSchematic_property.addEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_isPlacedInSchematic (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_isPlacedInSchematic.remove (inObserver)
    switch self.prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.isPlacedInSchematic_property.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_isPlacedInSchematic_toElementsOfSet (_ inSet : Set<SchematicObject>) {
    for managedObject in inSet {
      self.mObserversOf_isPlacedInSchematic.apply { (_ observer : EBEvent) in
        managedObject.isPlacedInSchematic_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_isPlacedInSchematic_fromElementsOfSet (_ inSet : Set<SchematicObject>) {
    for managedObject in inSet {
      self.mObserversOf_isPlacedInSchematic.apply { (_ observer : EBEvent) in
        managedObject.isPlacedInSchematic_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//    TransientArrayOf SchematicObject
//----------------------------------------------------------------------------------------------------------------------

final class TransientArrayOf_SchematicObject : ReadOnlyArrayOf_SchematicObject {

  //····················································································································
  //   Sort
  //····················································································································

  private var mIsOrderedBefore : Optional < (_ left : SchematicObject, _ right : SchematicObject) -> Bool > = nil 
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

  private var mDataProvider : ReadOnlyArrayOf_SchematicObject? = nil
  private var mTransientKind : PropertyKind = .empty
  private var mModelArrayShouldBeComputed = true

  //····················································································································

  func setDataProvider (_ inProvider : ReadOnlyArrayOf_SchematicObject,
                        sortCallback inSortCallBack : Optional < (_ left : SchematicObject, _ right : SchematicObject) -> Bool >,
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
      let newArray : [SchematicObject] 
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

  override var prop : EBSelection < [SchematicObject] > {
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

  override var propval : [SchematicObject] { return self.mInternalArrayValue }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//    TransientArrayOfSuperOf SchematicObject
//----------------------------------------------------------------------------------------------------------------------

final class TransientArrayOfSuperOf_SchematicObject <SUPER : EBManagedObject> : ReadOnlyArrayOf_SchematicObject {

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
      var newArray = [SchematicObject] ()
      for superObject in newModelArray {
        if let object = superObject as? SchematicObject {
          newArray.append (object)
        }
      }
      self.mInternalArrayValue = newArray
    }
  }

  //····················································································································

  override var prop : EBSelection < [SchematicObject] > {
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

  override var propval : [SchematicObject] { return self.mInternalArrayValue }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//    To many relationship read write: SchematicObject
//----------------------------------------------------------------------------------------------------------------------

class ReadWriteArrayOf_SchematicObject : ReadOnlyArrayOf_SchematicObject {

  //····················································································································
 
  func setProp (_ value :  [SchematicObject]) { } // Abstract method
  
  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//    Proxy: ProxyArrayOf_SchematicObject
//----------------------------------------------------------------------------------------------------------------------

final class ProxyArrayOf_SchematicObject : ReadWriteArrayOf_SchematicObject {

  //····················································································································

  private var mModel : ReadWriteArrayOf_SchematicObject? = nil

  //····················································································································

  func setModel (_ inModel : ReadWriteArrayOf_SchematicObject?) {
    if self.mModel !== inModel {
      self.mModel?.detachClient (self)
      self.mModel = inModel
      self.mModel?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newModelArray : [SchematicObject]
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

  override func setProp (_ inArrayValue : [SchematicObject]) {
    self.mModel?.setProp (inArrayValue)
  }

  //····················································································································

  override var prop : EBSelection < [SchematicObject] > {
    if let model = self.mModel {
      return model.prop
    }else{
      return .empty
    }
  }

  //····················································································································

  override var propval : [SchematicObject] {
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
//    Stored Array: SchematicObject
//----------------------------------------------------------------------------------------------------------------------

class StoredArrayOf_SchematicObject : ReadWriteArrayOf_SchematicObject, EBSignatureObserverProtocol {

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

  private var mSetOppositeRelationship : Optional < (_ inManagedObject : SchematicObject) -> Void > = nil
  private var mResetOppositeRelationship : Optional < (_ inManagedObject : SchematicObject) -> Void > = nil

  //····················································································································

  func setOppositeRelationShipFunctions (setter inSetter : @escaping (_ inManagedObject : SchematicObject) -> Void,
                                         resetter inResetter : @escaping (_ inManagedObject : SchematicObject) -> Void) {
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

  override func notifyModelDidChangeFrom (oldValue inOldValue : [SchematicObject]) {
  //--- Register old value in undo manager
    self.ebUndoManager?.registerUndo (withTarget: self, selector:#selector(performUndo(_:)), object: inOldValue)
  //---
    super.notifyModelDidChangeFrom (oldValue: inOldValue)
  }
 
  //····················································································································

  @objc func performUndo (_ oldValue : [SchematicObject]) {
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

  internal override func updateObservers (removedSet inRemovedSet : Set <SchematicObject>, addedSet inAddedSet : Set <SchematicObject>) {
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

  override var prop : EBSelection < [SchematicObject] > { return .single (self.mInternalArrayValue) }

  //····················································································································

  override func setProp (_ inValue : [SchematicObject]) { self.mInternalArrayValue = inValue }

  //····················································································································

  override var propval : [SchematicObject] { return self.mInternalArrayValue }

  //····················································································································

  func remove (_ object : SchematicObject) {
    if let idx = self.mInternalArrayValue.firstIndex (of: object) {
      self.mInternalArrayValue.remove (at: idx)
    }
  }
  
  //····················································································································

  func add (_ object : SchematicObject) {
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
//    Stand alone Array: SchematicObject
//----------------------------------------------------------------------------------------------------------------------

final class StandAloneArrayOf_SchematicObject : ReadWriteArrayOf_SchematicObject {

  //····················································································································

  override var prop : EBSelection < [SchematicObject] > { return .single (self.mInternalArrayValue) }

  //····················································································································

  override func setProp (_ inValue : [SchematicObject]) { self.mInternalArrayValue = inValue }

  //····················································································································

  override var propval : [SchematicObject] { return self.mInternalArrayValue }

  //····················································································································

  override func notifyModelDidChange () {
    self.postEvent ()
    super.notifyModelDidChange ()
  }

  //····················································································································

  func remove (_ object : SchematicObject) {
    if let idx = self.mInternalArrayValue.firstIndex (of: object) {
      self.mInternalArrayValue.remove (at: idx)
    }
  }
  
  //····················································································································

  func add (_ object : SchematicObject) {
    if !self.internalSetValue.contains (object) {
      self.mInternalArrayValue.append (object)
    }
  }
  
  //····················································································································
 
}

//----------------------------------------------------------------------------------------------------------------------
//    Preferences array: SchematicObject
//----------------------------------------------------------------------------------------------------------------------

final class PreferencesArrayOf_SchematicObject : StoredArrayOf_SchematicObject {

  //····················································································································

  private let mPrefKey : String
  private let mObserverForWritingPreferences = EBOutletEvent ()
  
  //····················································································································

  init (prefKey : String) {
    self.mPrefKey = prefKey
    super.init (usedForSignature: false)
    if let array = UserDefaults.standard.array (forKey: prefKey) as? [NSDictionary] {
      var objectArray = [SchematicObject] ()
      for dictionary in array {
        if let object = newInstanceOfEntityNamed (self.ebUndoManager, "SchematicObject") as? SchematicObject {
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

