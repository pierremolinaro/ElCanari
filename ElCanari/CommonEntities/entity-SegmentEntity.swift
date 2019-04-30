//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol SegmentEntity_y1 : class {
  var y1 : Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol SegmentEntity_x2 : class {
  var x2 : Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol SegmentEntity_y2 : class {
  var y2 : Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol SegmentEntity_width : class {
  var width : Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol SegmentEntity_x1 : class {
  var x1 : Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    Entity: SegmentEntity
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class SegmentEntity : EBManagedObject,
         SegmentEntity_y1,
         SegmentEntity_x2,
         SegmentEntity_y2,
         SegmentEntity_width,
         SegmentEntity_x1 {

  //····················································································································
  //   Atomic property: y1
  //····················································································································

  var y1_property = EBStoredProperty_Int (defaultValue: 0)

  //····················································································································

  var y1 : Int {
    get { return self.y1_property.propval }
    set { self.y1_property.setProp (newValue) }
  }

  //····················································································································

  var y1_property_selection : EBSelection <Int> { return self.y1_property.prop }

  //····················································································································
  //   Atomic property: x2
  //····················································································································

  var x2_property = EBStoredProperty_Int (defaultValue: 0)

  //····················································································································

  var x2 : Int {
    get { return self.x2_property.propval }
    set { self.x2_property.setProp (newValue) }
  }

  //····················································································································

  var x2_property_selection : EBSelection <Int> { return self.x2_property.prop }

  //····················································································································
  //   Atomic property: y2
  //····················································································································

  var y2_property = EBStoredProperty_Int (defaultValue: 0)

  //····················································································································

  var y2 : Int {
    get { return self.y2_property.propval }
    set { self.y2_property.setProp (newValue) }
  }

  //····················································································································

  var y2_property_selection : EBSelection <Int> { return self.y2_property.prop }

  //····················································································································
  //   Atomic property: width
  //····················································································································

  var width_property = EBStoredProperty_Int (defaultValue: 0)

  //····················································································································

  var width : Int {
    get { return self.width_property.propval }
    set { self.width_property.setProp (newValue) }
  }

  //····················································································································

  var width_property_selection : EBSelection <Int> { return self.width_property.prop }

  //····················································································································
  //   Atomic property: x1
  //····················································································································

  var x1_property = EBStoredProperty_Int (defaultValue: 0)

  //····················································································································

  var x1 : Int {
    get { return self.x1_property.propval }
    set { self.x1_property.setProp (newValue) }
  }

  //····················································································································

  var x1_property_selection : EBSelection <Int> { return self.x1_property.prop }

  //····················································································································
  //    init
  //····················································································································

  required init (_ ebUndoManager : EBUndoManager?) {
    super.init (ebUndoManager)
  //--- Atomic property: y1
    self.y1_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: x2
    self.x2_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: y2
    self.y2_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: width
    self.width_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: x1
    self.x1_property.ebUndoManager = self.ebUndoManager
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
      "y1",
      idx:self.y1_property.ebObjectIndex,
      y:&y,
      view:view,
      observerExplorer:&self.y1_property.mObserverExplorer,
      valueExplorer:&self.y1_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "x2",
      idx:self.x2_property.ebObjectIndex,
      y:&y,
      view:view,
      observerExplorer:&self.x2_property.mObserverExplorer,
      valueExplorer:&self.x2_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "y2",
      idx:self.y2_property.ebObjectIndex,
      y:&y,
      view:view,
      observerExplorer:&self.y2_property.mObserverExplorer,
      valueExplorer:&self.y2_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "width",
      idx:self.width_property.ebObjectIndex,
      y:&y,
      view:view,
      observerExplorer:&self.width_property.mObserverExplorer,
      valueExplorer:&self.width_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "x1",
      idx:self.x1_property.ebObjectIndex,
      y:&y,
      view:view,
      observerExplorer:&self.x1_property.mObserverExplorer,
      valueExplorer:&self.x1_property.mValueExplorer
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
  //--- Atomic property: y1
    self.y1_property.mObserverExplorer = nil
    self.y1_property.mValueExplorer = nil
  //--- Atomic property: x2
    self.x2_property.mObserverExplorer = nil
    self.x2_property.mValueExplorer = nil
  //--- Atomic property: y2
    self.y2_property.mObserverExplorer = nil
    self.y2_property.mValueExplorer = nil
  //--- Atomic property: width
    self.width_property.mObserverExplorer = nil
    self.width_property.mValueExplorer = nil
  //--- Atomic property: x1
    self.x1_property.mObserverExplorer = nil
    self.x1_property.mValueExplorer = nil
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
  //--- Atomic property: y1
    self.y1_property.storeIn (dictionary: ioDictionary, forKey:"y1")
  //--- Atomic property: x2
    self.x2_property.storeIn (dictionary: ioDictionary, forKey:"x2")
  //--- Atomic property: y2
    self.y2_property.storeIn (dictionary: ioDictionary, forKey:"y2")
  //--- Atomic property: width
    self.width_property.storeIn (dictionary: ioDictionary, forKey:"width")
  //--- Atomic property: x1
    self.x1_property.storeIn (dictionary: ioDictionary, forKey:"x1")
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
  //--- Atomic property: y1
    self.y1_property.readFrom (dictionary: inDictionary, forKey:"y1")
  //--- Atomic property: x2
    self.x2_property.readFrom (dictionary: inDictionary, forKey:"x2")
  //--- Atomic property: y2
    self.y2_property.readFrom (dictionary: inDictionary, forKey:"y2")
  //--- Atomic property: width
    self.width_property.readFrom (dictionary: inDictionary, forKey:"width")
  //--- Atomic property: x1
    self.x1_property.readFrom (dictionary: inDictionary, forKey:"x1")
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
//    ReadOnlyArrayOf_SegmentEntity
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class ReadOnlyArrayOf_SegmentEntity : ReadOnlyAbstractArrayProperty <SegmentEntity> {

  //····················································································································
  //   Observers of 'y1' stored property
  //····················································································································

  private var mObserversOf_y1 = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_y1 (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_y1.insert (inObserver)
    switch prop {
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
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.y1_property.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_y1_toElementsOfSet (_ inSet : Set<SegmentEntity>) {
    for managedObject in inSet {
      self.mObserversOf_y1.apply { (_ observer : EBEvent) in
        managedObject.y1_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_y1_fromElementsOfSet (_ inSet : Set<SegmentEntity>) {
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

  private var mObserversOf_x2 = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_x2 (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_x2.insert (inObserver)
    switch prop {
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
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.x2_property.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_x2_toElementsOfSet (_ inSet : Set<SegmentEntity>) {
    for managedObject in inSet {
      self.mObserversOf_x2.apply { (_ observer : EBEvent) in
        managedObject.x2_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_x2_fromElementsOfSet (_ inSet : Set<SegmentEntity>) {
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

  private var mObserversOf_y2 = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_y2 (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_y2.insert (inObserver)
    switch prop {
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
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.y2_property.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_y2_toElementsOfSet (_ inSet : Set<SegmentEntity>) {
    for managedObject in inSet {
      self.mObserversOf_y2.apply { (_ observer : EBEvent) in
        managedObject.y2_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_y2_fromElementsOfSet (_ inSet : Set<SegmentEntity>) {
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

  private var mObserversOf_width = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_width (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_width.insert (inObserver)
    switch prop {
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
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.width_property.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_width_toElementsOfSet (_ inSet : Set<SegmentEntity>) {
    for managedObject in inSet {
      self.mObserversOf_width.apply { (_ observer : EBEvent) in
        managedObject.width_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_width_fromElementsOfSet (_ inSet : Set<SegmentEntity>) {
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

  private var mObserversOf_x1 = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_x1 (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_x1.insert (inObserver)
    switch prop {
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
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.x1_property.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_x1_toElementsOfSet (_ inSet : Set<SegmentEntity>) {
    for managedObject in inSet {
      self.mObserversOf_x1.apply { (_ observer : EBEvent) in
        managedObject.x1_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_x1_fromElementsOfSet (_ inSet : Set<SegmentEntity>) {
    self.mObserversOf_x1.apply { (_ observer : EBEvent) in
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.x1_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    TransientArrayOf_SegmentEntity
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class TransientArrayOf_SegmentEntity : ReadOnlyArrayOf_SegmentEntity {

  //····················································································································

  var mReadModelFunction : Optional < () -> EBSelection < [SegmentEntity] > > = nil

  //····················································································································

  override var propset : Set <SegmentEntity> {
    self.computeArrayAndSet ()
    return self.mSet
  }

  //····················································································································

  override var prop : EBSelection < [SegmentEntity] > {
    self.computeArrayAndSet ()
    return self.mCachedValue!  
  }
 
  //····················································································································

  override var propval : [SegmentEntity] {
    self.computeArrayAndSet ()
    if let value = self.mCachedValue {
      switch value {
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

  private var mSet = Set <SegmentEntity> ()

  //····················································································································

  private var mCachedValue : EBSelection < [SegmentEntity] >? = nil

  //····················································································································

  private func computeArrayAndSet () {
    if let unwrappedComputeFunction = self.mReadModelFunction, self.mCachedValue == nil {
      let cachedValue = unwrappedComputeFunction ()
      self.mCachedValue = cachedValue
      let newSet : Set <SegmentEntity>
      switch cachedValue {
      case .multiple, .empty :
        newSet = Set <SegmentEntity> ()
      case .single (let array) :
        newSet = Set (array)
      }
    //--- Removed object set
      let removedSet = self.mSet.subtracting (newSet)
    //--- Remove observers of stored properties
      self.removeEBObserversOf_y1_fromElementsOfSet (removedSet)
      self.removeEBObserversOf_x2_fromElementsOfSet (removedSet)
      self.removeEBObserversOf_y2_fromElementsOfSet (removedSet)
      self.removeEBObserversOf_width_fromElementsOfSet (removedSet)
      self.removeEBObserversOf_x1_fromElementsOfSet (removedSet)
    //--- Remove observers of transient properties
    //--- Added object set
      let addedSet = newSet.subtracting (self.mSet)
     //--- Add observers of stored properties
      self.addEBObserversOf_y1_toElementsOfSet (addedSet)
      self.addEBObserversOf_x2_toElementsOfSet (addedSet)
      self.addEBObserversOf_y2_toElementsOfSet (addedSet)
      self.addEBObserversOf_width_toElementsOfSet (addedSet)
      self.addEBObserversOf_x1_toElementsOfSet (addedSet)
     //--- Add observers of transient properties
    //--- Update object set
      self.mSet = newSet
    }
    if self.mCachedValue == nil {
      self.mCachedValue = .empty
    }
  }

  //····················································································································

  override func postEvent () {
    if self.mCachedValue != nil {
      self.mCachedValue = nil
      if logEvents () {
        appendMessageString ("  \(explorerIndexString (self.ebObjectIndex)) propagation\n")
      }
      super.postEvent ()
    }else if logEvents () {
      appendMessageString ("  \(explorerIndexString (self.ebObjectIndex)) nil\n")
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    To many relationship read write: SegmentEntity
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class ReadWriteArrayOf_SegmentEntity : ReadOnlyArrayOf_SegmentEntity {

  //····················································································································
 
  func setProp (_ value :  [SegmentEntity]) { } // Abstract method
  
  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    To many relationship: SegmentEntity
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class StoredArrayOf_SegmentEntity : ReadWriteArrayOf_SegmentEntity, EBSignatureObserverProtocol {

  //····················································································································

  var setOppositeRelationship : Optional < (_ inManagedObject : SegmentEntity?) -> Void > = nil

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

  override init () {
    super.init ()
    self.count_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        switch unwSelf.prop {
        case .empty :
          return .empty
        case .multiple :
          return .multiple
        case .single (let v) :
          return .single (v.count)
        }
      }else{
        return .empty
      }
    }
  }

  //····················································································································

  convenience init (prefKey : String) {
    self.init ()
    self.mPrefKey = prefKey
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
  }

 //····················································································································

  private var mSet = Set <SegmentEntity> ()
  private var mValue = [SegmentEntity] () {
    didSet {
      if oldValue != self.mValue {
        let oldSet = self.mSet
        self.mSet = Set (self.mValue)
      //--- Register old value in undo manager
        self.ebUndoManager?.registerUndo (withTarget: self, selector:#selector(performUndo(_:)), object:oldValue)
      //--- Update explorer
        if let valueExplorer = self.mValueExplorer {
          updateManagedObjectToManyRelationshipDisplay (objectArray: self.mValue, popUpButton: valueExplorer)
        }
      //--- Removed object set
        let removedObjectSet = oldSet.subtracting (self.mSet)
        if removedObjectSet.count > 0 {
          for managedObject in removedObjectSet {
            managedObject.setSignatureObserver (observer: nil)
            self.setOppositeRelationship? (nil)
            managedObject.y1_property.mSetterDelegate = nil
            managedObject.x2_property.mSetterDelegate = nil
            managedObject.y2_property.mSetterDelegate = nil
            managedObject.width_property.mSetterDelegate = nil
            managedObject.x1_property.mSetterDelegate = nil
          }
        //--- Remove observers of stored properties
          self.removeEBObserversOf_y1_fromElementsOfSet (removedObjectSet)
          self.removeEBObserversOf_x2_fromElementsOfSet (removedObjectSet)
          self.removeEBObserversOf_y2_fromElementsOfSet (removedObjectSet)
          self.removeEBObserversOf_width_fromElementsOfSet (removedObjectSet)
          self.removeEBObserversOf_x1_fromElementsOfSet (removedObjectSet)
        //--- Remove observers of transient properties
        }
       //--- Added object set
        let addedObjectSet = self.mSet.subtracting (oldSet)
        if addedObjectSet.count > 0 {
          for managedObject : SegmentEntity in addedObjectSet {
            managedObject.setSignatureObserver (observer: self)
            self.setOppositeRelationship? (managedObject)
            managedObject.y1_property.mSetterDelegate = { [weak self] inValue in self?.writeInPreferences () }
            managedObject.x2_property.mSetterDelegate = { [weak self] inValue in self?.writeInPreferences () }
            managedObject.y2_property.mSetterDelegate = { [weak self] inValue in self?.writeInPreferences () }
            managedObject.width_property.mSetterDelegate = { [weak self] inValue in self?.writeInPreferences () }
            managedObject.x1_property.mSetterDelegate = { [weak self] inValue in self?.writeInPreferences () }
          }
        //--- Add observers of stored properties
          self.addEBObserversOf_y1_toElementsOfSet (addedObjectSet)
          self.addEBObserversOf_x2_toElementsOfSet (addedObjectSet)
          self.addEBObserversOf_y2_toElementsOfSet (addedObjectSet)
          self.addEBObserversOf_width_toElementsOfSet (addedObjectSet)
          self.addEBObserversOf_x1_toElementsOfSet (addedObjectSet)
        //--- Add observers of transient properties
        }
      //--- Notify observers
        self.postEvent ()
        self.clearSignatureCache ()
      //--- Write in preferences ?
        self.writeInPreferences ()
      }
    }
  }

  //····················································································································

  private func writeInPreferences () {
    if let prefKey = self.mPrefKey {
      var dictionaryArray = [NSDictionary] ()
      for object in self.mValue {
        let d = NSMutableDictionary ()
        object.saveIntoDictionary (d)
        d [ENTITY_KEY] = nil // Remove entity key, not used in preferences
        dictionaryArray.append (d)
      }
      UserDefaults.standard.set (dictionaryArray, forKey: prefKey)
    }
  }

  //····················································································································

  override var prop : EBSelection < [SegmentEntity] > { return .single (self.mValue) }

  //····················································································································

  override func setProp (_ inValue : [SegmentEntity]) { self.mValue = inValue }

  //····················································································································

  override var propval : [SegmentEntity] { return self.mValue }

  //····················································································································

  override var propset : Set <SegmentEntity> { return self.mSet }

 //····················································································································

  @objc func performUndo (_ oldValue : [SegmentEntity]) {
    self.mValue = oldValue
  }

  //····················································································································

  func remove (_ object : SegmentEntity) {
    if self.mSet.contains (object) {
      var array = self.mValue
      let idx = array.firstIndex (of: object)
      array.remove (at: idx!)
      self.mValue = array
    }
  }
  
  //····················································································································

  func add (_ object : SegmentEntity) {
    if !self.mSet.contains (object) {
      var array = self.mValue
      array.append (object)
      self.mValue = array
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
    for object in self.mValue {
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
    for object in self.mValue {
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
