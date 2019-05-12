//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol BoardModelVia_y : class {
  var y : Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol BoardModelVia_padDiameter : class {
  var padDiameter : Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol BoardModelVia_x : class {
  var x : Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    Entity: BoardModelVia
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class BoardModelVia : EBManagedObject,
         BoardModelVia_y,
         BoardModelVia_padDiameter,
         BoardModelVia_x {

  //····················································································································
  //   Atomic property: y
  //····················································································································

  let y_property = EBStoredProperty_Int (defaultValue: 0)

  //····················································································································

  var y : Int {
    get { return self.y_property.propval }
    set { self.y_property.setProp (newValue) }
  }

  //····················································································································

  var y_property_selection : EBSelection <Int> { return self.y_property.prop }

  //····················································································································
  //   Atomic property: padDiameter
  //····················································································································

  let padDiameter_property = EBStoredProperty_Int (defaultValue: 0)

  //····················································································································

  var padDiameter : Int {
    get { return self.padDiameter_property.propval }
    set { self.padDiameter_property.setProp (newValue) }
  }

  //····················································································································

  var padDiameter_property_selection : EBSelection <Int> { return self.padDiameter_property.prop }

  //····················································································································
  //   Atomic property: x
  //····················································································································

  let x_property = EBStoredProperty_Int (defaultValue: 0)

  //····················································································································

  var x : Int {
    get { return self.x_property.propval }
    set { self.x_property.setProp (newValue) }
  }

  //····················································································································

  var x_property_selection : EBSelection <Int> { return self.x_property.prop }

  //····················································································································
  //    init
  //····················································································································

  required init (_ ebUndoManager : EBUndoManager?) {
    super.init (ebUndoManager)
  //--- Atomic property: y
    self.y_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: padDiameter
    self.padDiameter_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: x
    self.x_property.ebUndoManager = self.ebUndoManager
  //--- Install undoers and opposite setter for relationships
  //--- Register properties for handling signature
  //--- Extern delegates
  }

  //····················································································································

  override internal func removeAllObservers () {
    super.removeAllObservers ()
  //--- Unregister properties for handling signature
  }

  //····················································································································
  //    Extern delegates
  //····················································································································


  //····················································································································
  //    populateExplorerWindow
  //····················································································································

  override func populateExplorerWindow (_ y : inout CGFloat, view : NSView) {
    super.populateExplorerWindow (&y, view:view)
    createEntryForPropertyNamed (
      "y",
      idx:self.y_property.ebObjectIndex,
      y:&y,
      view:view,
      observerExplorer:&self.y_property.mObserverExplorer,
      valueExplorer:&self.y_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "padDiameter",
      idx:self.padDiameter_property.ebObjectIndex,
      y:&y,
      view:view,
      observerExplorer:&self.padDiameter_property.mObserverExplorer,
      valueExplorer:&self.padDiameter_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "x",
      idx:self.x_property.ebObjectIndex,
      y:&y,
      view:view,
      observerExplorer:&self.x_property.mObserverExplorer,
      valueExplorer:&self.x_property.mValueExplorer
    )
    createEntryForTitle ("Properties", y:&y, view:view)
    createEntryForTitle ("Transients", y:&y, view:view)
    createEntryForTitle ("ToMany Relationships", y:&y, view:view)
    createEntryForTitle ("ToOne Relationships", y:&y, view:view)
  }

  //····················································································································
  //    clearObjectExplorer
  //····················································································································

  override func clearObjectExplorer () {
  //--- Atomic property: y
    self.y_property.mObserverExplorer = nil
    self.y_property.mValueExplorer = nil
  //--- Atomic property: padDiameter
    self.padDiameter_property.mObserverExplorer = nil
    self.padDiameter_property.mValueExplorer = nil
  //--- Atomic property: x
    self.x_property.mObserverExplorer = nil
    self.x_property.mValueExplorer = nil
  //---
    super.clearObjectExplorer ()
  }

  //····················································································································
  //    cleanUpToManyRelationships
  //····················································································································

  override internal func cleanUpToManyRelationships () {
  //---
    super.cleanUpToManyRelationships ()
  }

  //····················································································································
  //    cleanUpToOneRelationships
  //····················································································································

  override internal func cleanUpToOneRelationships () {
  //---
    super.cleanUpToOneRelationships ()
  }

  //····················································································································
  //    saveIntoDictionary
  //····················································································································

  override func saveIntoDictionary (_ ioDictionary : NSMutableDictionary) {
    super.saveIntoDictionary (ioDictionary)
  //--- Atomic property: y
    self.y_property.storeIn (dictionary: ioDictionary, forKey:"y")
  //--- Atomic property: padDiameter
    self.padDiameter_property.storeIn (dictionary: ioDictionary, forKey:"padDiameter")
  //--- Atomic property: x
    self.x_property.storeIn (dictionary: ioDictionary, forKey:"x")
  }

  //····················································································································
  //    setUpWithDictionary
  //····················································································································

  override func setUpWithDictionary (_ inDictionary : NSDictionary,
                                     managedObjectArray : inout [EBManagedObject]) {
    super.setUpWithDictionary (inDictionary, managedObjectArray:&managedObjectArray)
  }

  //····················································································································
  //    setUpAtomicPropertiesWithDictionary
  //····················································································································

  override func setUpAtomicPropertiesWithDictionary (_ inDictionary : NSDictionary) {
    super.setUpAtomicPropertiesWithDictionary (inDictionary)
  //--- Atomic property: y
    self.y_property.readFrom (dictionary: inDictionary, forKey:"y")
  //--- Atomic property: padDiameter
    self.padDiameter_property.readFrom (dictionary: inDictionary, forKey:"padDiameter")
  //--- Atomic property: x
    self.x_property.readFrom (dictionary: inDictionary, forKey:"x")
  }

  //····················································································································
  //   accessibleObjects
  //····················································································································

  override func accessibleObjects (objects : inout [EBManagedObject]) {
    super.accessibleObjects (objects: &objects)
  }

  //····················································································································
  //   accessibleObjectsForSaveOperation
  //····················································································································

  override func accessibleObjectsForSaveOperation (objects : inout [EBManagedObject]) {
    super.accessibleObjectsForSaveOperation (objects: &objects)
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    ReadOnlyArrayOf_BoardModelVia
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class ReadOnlyArrayOf_BoardModelVia : ReadOnlyAbstractArrayProperty <BoardModelVia> {

  //····················································································································

  internal override func updateObservers (removedSet inRemovedSet : Set <BoardModelVia>, addedSet inAddedSet : Set <BoardModelVia>) {
    super.updateObservers (removedSet: inRemovedSet, addedSet: inAddedSet)
  //--- Remove observers from removed objects
    self.removeEBObserversOf_y_fromElementsOfSet (inRemovedSet) // Stored property
    self.removeEBObserversOf_padDiameter_fromElementsOfSet (inRemovedSet) // Stored property
    self.removeEBObserversOf_x_fromElementsOfSet (inRemovedSet) // Stored property
  //--- Add observers to added objects
    self.addEBObserversOf_y_toElementsOfSet (inAddedSet) // Stored property
    self.addEBObserversOf_padDiameter_toElementsOfSet (inAddedSet) // Stored property
    self.addEBObserversOf_x_toElementsOfSet (inAddedSet) // Stored property
  }

  //····················································································································
  //   Observers of 'y' stored property
  //····················································································································

  private var mObserversOf_y = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_y (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_y.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.y_property.addEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_y (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_y.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.y_property.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_y_toElementsOfSet (_ inSet : Set<BoardModelVia>) {
    for managedObject in inSet {
      self.mObserversOf_y.apply { (_ observer : EBEvent) in
        managedObject.y_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_y_fromElementsOfSet (_ inSet : Set<BoardModelVia>) {
    self.mObserversOf_y.apply { (_ observer : EBEvent) in
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.y_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'padDiameter' stored property
  //····················································································································

  private var mObserversOf_padDiameter = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_padDiameter (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_padDiameter.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.padDiameter_property.addEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_padDiameter (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_padDiameter.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.padDiameter_property.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_padDiameter_toElementsOfSet (_ inSet : Set<BoardModelVia>) {
    for managedObject in inSet {
      self.mObserversOf_padDiameter.apply { (_ observer : EBEvent) in
        managedObject.padDiameter_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_padDiameter_fromElementsOfSet (_ inSet : Set<BoardModelVia>) {
    self.mObserversOf_padDiameter.apply { (_ observer : EBEvent) in
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.padDiameter_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'x' stored property
  //····················································································································

  private var mObserversOf_x = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_x (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_x.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.x_property.addEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_x (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_x.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.x_property.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_x_toElementsOfSet (_ inSet : Set<BoardModelVia>) {
    for managedObject in inSet {
      self.mObserversOf_x.apply { (_ observer : EBEvent) in
        managedObject.x_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_x_fromElementsOfSet (_ inSet : Set<BoardModelVia>) {
    self.mObserversOf_x.apply { (_ observer : EBEvent) in
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.x_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    TransientArrayOf BoardModelVia
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class TransientArrayOf_BoardModelVia : ReadOnlyArrayOf_BoardModelVia {

  //····················································································································
  //   Data provider
  //····················································································································

  private var mDataProvider : ReadOnlyArrayOf_BoardModelVia? = nil
  private var mTransientKind : PropertyKind = .empty

  //····················································································································

  func setDataProvider (_ inProvider : ReadOnlyArrayOf_BoardModelVia?) {
    if self.mDataProvider !== inProvider {
      self.mDataProvider?.detachClient (self)
      self.mDataProvider = inProvider
      self.mDataProvider?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newArray : [BoardModelVia] 
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

  override var prop : EBSelection < [BoardModelVia] > {
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

  override var propval : [BoardModelVia] { return self.mInternalArrayValue }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    TransientArrayOfSuperOf BoardModelVia
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class TransientArrayOfSuperOf_BoardModelVia <SUPER : EBManagedObject> : ReadOnlyArrayOf_BoardModelVia {

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
    var newArray = [BoardModelVia] ()
    for superObject in newModelArray {
      if let object = superObject as? BoardModelVia {
        newArray.append (object)
      }
    }
    self.mInternalArrayValue = newArray
    super.notifyModelDidChange ()
  }

  //····················································································································

  override var prop : EBSelection < [BoardModelVia] > {
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

  override var propval : [BoardModelVia] { return self.mInternalArrayValue }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    To many relationship read write: BoardModelVia
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class ReadWriteArrayOf_BoardModelVia : ReadOnlyArrayOf_BoardModelVia {

  //····················································································································
 
  func setProp (_ value :  [BoardModelVia]) { } // Abstract method
  
  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    Proxy: ProxyArrayOf_BoardModelVia
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class ProxyArrayOf_BoardModelVia : ReadWriteArrayOf_BoardModelVia {

  //····················································································································

  private var mModel : ReadWriteArrayOf_BoardModelVia? = nil

  //····················································································································

  func setModel (_ inModel : ReadWriteArrayOf_BoardModelVia?) {
    if self.mModel !== inModel {
      self.mModel?.detachClient (self)
      self.mModel = inModel
      self.mModel?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newModelArray : [BoardModelVia]
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

  override func setProp (_ inArrayValue : [BoardModelVia]) {
    self.mModel?.setProp (inArrayValue)
  }

  //····················································································································

  override var prop : EBSelection < [BoardModelVia] > {
    if let model = self.mModel {
      return model.prop
    }else{
      return .empty
    }
  }

  //····················································································································

  override var propval : [BoardModelVia] {
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
//    To many relationship: BoardModelVia
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class StoredArrayOf_BoardModelVia : ReadWriteArrayOf_BoardModelVia, EBSignatureObserverProtocol {

  //····················································································································
  //   Opposite relationship management
  //····················································································································

  private var mSetOppositeRelationship : Optional < (_ inManagedObject : BoardModelVia) -> Void > = nil
  private var mResetOppositeRelationship : Optional < (_ inManagedObject : BoardModelVia) -> Void > = nil

  //····················································································································

  func setOppositeRelationShipFunctions (setter inSetter : @escaping (_ inManagedObject : BoardModelVia) -> Void,
                                         resetter inResetter : @escaping (_ inManagedObject : BoardModelVia) -> Void) {
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
      var objectArray = [BoardModelVia] ()
      for dictionary in array {
        if let object = newInstanceOfEntityNamed (self.ebUndoManager, "BoardModelVia") as? BoardModelVia {
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

  override func notifyModelDidChangeFrom (oldValue inOldValue : [BoardModelVia]) {
  //--- Register old value in undo manager
    self.ebUndoManager?.registerUndo (withTarget: self, selector:#selector(performUndo(_:)), object: inOldValue)
  //---
    super.notifyModelDidChangeFrom (oldValue: inOldValue)
  }
 
  //····················································································································

  @objc func performUndo (_ oldValue : [BoardModelVia]) {
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

  internal override func updateObservers (removedSet inRemovedSet : Set <BoardModelVia>, addedSet inAddedSet : Set <BoardModelVia>) {
    super.updateObservers (removedSet: inRemovedSet, addedSet: inAddedSet)
  //---
    for managedObject in inRemovedSet {
      managedObject.setSignatureObserver (observer: nil)
      self.mResetOppositeRelationship? (managedObject)
    }
  //---
    for managedObject in inAddedSet {
      managedObject.setSignatureObserver (observer: self)
      self.mSetOppositeRelationship? (managedObject)
    }
  }
 
  //····················································································································

  override var prop : EBSelection < [BoardModelVia] > { return .single (self.mInternalArrayValue) }

  //····················································································································

  override func setProp (_ inValue : [BoardModelVia]) { self.mInternalArrayValue = inValue }

  //····················································································································

  override var propval : [BoardModelVia] { return self.mInternalArrayValue }

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

  func remove (_ object : BoardModelVia) {
    if let idx = self.mInternalArrayValue.firstIndex (of: object) {
      self.mInternalArrayValue.remove (at: idx)
    }
  }
  
  //····················································································································

  func add (_ object : BoardModelVia) {
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
