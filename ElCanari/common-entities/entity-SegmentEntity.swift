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

  var y1_property = EBStoredProperty_Int (0)

  //····················································································································

  var y1 : Int {
    get {
      return self.y1_property.propval
    }
    set {
      self.y1_property.setProp (newValue)
    }
  }

  //····················································································································

  var y1_property_selection : EBSelection <Int> {
    return self.y1_property.prop
  }

  //····················································································································
  //   Atomic property: x2
  //····················································································································

  var x2_property = EBStoredProperty_Int (0)

  //····················································································································

  var x2 : Int {
    get {
      return self.x2_property.propval
    }
    set {
      self.x2_property.setProp (newValue)
    }
  }

  //····················································································································

  var x2_property_selection : EBSelection <Int> {
    return self.x2_property.prop
  }

  //····················································································································
  //   Atomic property: y2
  //····················································································································

  var y2_property = EBStoredProperty_Int (0)

  //····················································································································

  var y2 : Int {
    get {
      return self.y2_property.propval
    }
    set {
      self.y2_property.setProp (newValue)
    }
  }

  //····················································································································

  var y2_property_selection : EBSelection <Int> {
    return self.y2_property.prop
  }

  //····················································································································
  //   Atomic property: width
  //····················································································································

  var width_property = EBStoredProperty_Int (0)

  //····················································································································

  var width : Int {
    get {
      return self.width_property.propval
    }
    set {
      self.width_property.setProp (newValue)
    }
  }

  //····················································································································

  var width_property_selection : EBSelection <Int> {
    return self.width_property.prop
  }

  //····················································································································
  //   Atomic property: x1
  //····················································································································

  var x1_property = EBStoredProperty_Int (0)

  //····················································································································

  var x1 : Int {
    get {
      return self.x1_property.propval
    }
    set {
      self.x1_property.setProp (newValue)
    }
  }

  //····················································································································

  var x1_property_selection : EBSelection <Int> {
    return self.x1_property.prop
  }

  //····················································································································
  //    init
  //····················································································································

  override init (managedObjectContext : EBManagedObjectContext) {
    super.init (managedObjectContext:managedObjectContext)
  //--- Atomic property: y1
    self.y1_property.undoManager = self.undoManager
  //--- Atomic property: x2
    self.x2_property.undoManager = self.undoManager
  //--- Atomic property: y2
    self.y2_property.undoManager = self.undoManager
  //--- Atomic property: width
    self.width_property.undoManager = self.undoManager
  //--- Atomic property: x1
    self.x1_property.undoManager = self.undoManager
  //--- Install undoers and opposite setter for relationships
  //--- register properties for handling signature
  }

  //····················································································································

  deinit {
  //--- Remove observers
  }

  //····················································································································
  //    populateExplorerWindow
  //····················································································································

  override func populateExplorerWindow (_ y : inout CGFloat, view : NSView) {
    super.populateExplorerWindow (&y, view:view)
    createEntryForPropertyNamed (
      "y1",
      idx:self.y1_property.mEasyBindingsObjectIndex,
      y:&y,
      view:view,
      observerExplorer:&self.y1_property.mObserverExplorer,
      valueExplorer:&self.y1_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "x2",
      idx:self.x2_property.mEasyBindingsObjectIndex,
      y:&y,
      view:view,
      observerExplorer:&self.x2_property.mObserverExplorer,
      valueExplorer:&self.x2_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "y2",
      idx:self.y2_property.mEasyBindingsObjectIndex,
      y:&y,
      view:view,
      observerExplorer:&self.y2_property.mObserverExplorer,
      valueExplorer:&self.y2_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "width",
      idx:self.width_property.mEasyBindingsObjectIndex,
      y:&y,
      view:view,
      observerExplorer:&self.width_property.mObserverExplorer,
      valueExplorer:&self.width_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "x1",
      idx:self.x1_property.mEasyBindingsObjectIndex,
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
  //   cascadeObjectRemoving
  //····················································································································

  override func cascadeObjectRemoving (_ ioObjectsToRemove : inout Set <EBManagedObject>) {
  //---
    super.cascadeObjectRemoving (&ioObjectsToRemove)
  }

  //····················································································································
  //   resetControllers
  //····················································································································

  override func resetControllers () {
    super.resetControllers ()
  }

  //····················································································································
  //   resetToManyRelationships
  //····················································································································

  override func resetToManyRelationships () {
    super.resetToManyRelationships ()
  }

  //····················································································································
  //   resetToOneRelationships
  //····················································································································

  override func resetToOneRelationships () {
    super.resetToOneRelationships ()
  }

  //····················································································································
  //   accessibleObjects
  //····················································································································

  override func accessibleObjects (objects : inout [EBManagedObject]) {
    super.accessibleObjects (objects: &objects)
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    ReadOnlyArrayOf_SegmentEntity
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class ReadOnlyArrayOf_SegmentEntity : ReadOnlyAbstractArrayProperty <SegmentEntity> {

  //····················································································································

  weak var undoManager : EBUndoManager? // SOULD BE WEAK

  //····················································································································

  var propval : [SegmentEntity] { return [] } // Abstract method

  //····················································································································
  //   Observers of 'y1' stored property
  //····················································································································

  private var mObserversOf_y1 = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_y1 (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    mObserversOf_y1.insert (inObserver)
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
    mObserversOf_y1.remove (inObserver)
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
      for observer in mObserversOf_y1 {
        managedObject.y1_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_y1_fromElementsOfSet (_ inSet : Set<SegmentEntity>) {
    for observer in mObserversOf_y1 {
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
    mObserversOf_x2.insert (inObserver)
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
    mObserversOf_x2.remove (inObserver)
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
      for observer in mObserversOf_x2 {
        managedObject.x2_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_x2_fromElementsOfSet (_ inSet : Set<SegmentEntity>) {
    for observer in mObserversOf_x2 {
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
    mObserversOf_y2.insert (inObserver)
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
    mObserversOf_y2.remove (inObserver)
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
      for observer in mObserversOf_y2 {
        managedObject.y2_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_y2_fromElementsOfSet (_ inSet : Set<SegmentEntity>) {
    for observer in mObserversOf_y2 {
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
    mObserversOf_width.insert (inObserver)
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
    mObserversOf_width.remove (inObserver)
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
      for observer in mObserversOf_width {
        managedObject.width_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_width_fromElementsOfSet (_ inSet : Set<SegmentEntity>) {
    for observer in mObserversOf_width {
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
    mObserversOf_x1.insert (inObserver)
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
    mObserversOf_x1.remove (inObserver)
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
      for observer in mObserversOf_x1 {
        managedObject.x1_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_x1_fromElementsOfSet (_ inSet : Set<SegmentEntity>) {
    for observer in mObserversOf_x1 {
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

  var readModelFunction : Optional<() -> EBSelection < [SegmentEntity] > >

  //····················································································································

   private var prop_cache : EBSelection < [SegmentEntity] >? 

  //····················································································································

  override var propval : [SegmentEntity] {
    if let value = prop_cache {
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

  override init () {
    super.init ()
  }

  //····················································································································

  private var mSet = Set <SegmentEntity> ()

  override var prop : EBSelection < [SegmentEntity] > {
    get {
      if let unwrappedComputeFunction = readModelFunction, prop_cache == nil {
        prop_cache = unwrappedComputeFunction ()
        let newSet : Set <SegmentEntity>
        switch prop_cache! {
        case .multiple, .empty :
          newSet = Set <SegmentEntity> ()
        case .single (let array) :
          newSet = Set (array)
        }
     //--- Removed object set
        let removedSet = mSet.subtracting (newSet)
      //--- Remove observers of stored properties
        removeEBObserversOf_y1_fromElementsOfSet (removedSet)
        removeEBObserversOf_x2_fromElementsOfSet (removedSet)
        removeEBObserversOf_y2_fromElementsOfSet (removedSet)
        removeEBObserversOf_width_fromElementsOfSet (removedSet)
        removeEBObserversOf_x1_fromElementsOfSet (removedSet)
      //--- Remove observers of transient properties
      //--- Added object set
        let addedSet = newSet.subtracting (mSet)
       //--- Add observers of stored properties
        addEBObserversOf_y1_toElementsOfSet (addedSet)
        addEBObserversOf_x2_toElementsOfSet (addedSet)
        addEBObserversOf_y2_toElementsOfSet (addedSet)
        addEBObserversOf_width_toElementsOfSet (addedSet)
        addEBObserversOf_x1_toElementsOfSet (addedSet)
       //--- Add observers of transient properties
      //--- Update object set
        mSet = newSet
      }
      if prop_cache == nil {
        prop_cache = .empty
      }
      return prop_cache!
    }
  }

  //····················································································································

  override func postEvent () {
    if prop_cache != nil {
      prop_cache = nil
      if logEvents () {
        appendMessageString ("  \(explorerIndexString (self.mEasyBindingsObjectIndex)) propagation\n")
      }
      super.postEvent ()
    }else if logEvents () {
      appendMessageString ("  \(explorerIndexString (self.mEasyBindingsObjectIndex)) nil\n")
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
 
  // var propval : [SegmentEntity] { return [] } // Abstract method
 
  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    To many relationship: SegmentEntity
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class StoredArrayOf_SegmentEntity : ReadWriteArrayOf_SegmentEntity, EBSignatureObserverProtocol {

  //····················································································································

  var setOppositeRelationship : Optional < (_ inManagedObject : SegmentEntity?) -> Void > = nil

  //····················································································································

  var mValueExplorer : NSPopUpButton? {
    didSet {
      if let unwrappedExplorer = mValueExplorer {
        switch prop {
        case .empty, .multiple :
          break ;
        case .single (let v) :
          updateManagedObjectToManyRelationshipDisplay (objectArray: v, popUpButton:unwrappedExplorer)
        }
      }
    }
  }

  //····················································································································

  override init () {
    super.init ()
    self.count_property.readModelFunction = { [weak self] in
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

  private var mSet = Set <SegmentEntity> ()
  private var mValue = [SegmentEntity] () {
    didSet {
      postEvent ()
      if oldValue != mValue {
        let oldSet = mSet
        mSet = Set (mValue)
      //--- Register old value in undo manager
        self.undoManager?.registerUndo (withTarget: self, selector:#selector(performUndo(_:)), object:oldValue)
      //--- Update explorer
        if let valueExplorer = mValueExplorer {
          updateManagedObjectToManyRelationshipDisplay (objectArray: mValue, popUpButton: valueExplorer)
        }
      //--- Removed object set
        let removedObjectSet = oldSet.subtracting (mSet)
        for managedObject in removedObjectSet {
          managedObject.setSignatureObserver (observer: nil)
          self.setOppositeRelationship? (nil)
        }
        removeEBObserversOf_y1_fromElementsOfSet (removedObjectSet)
        removeEBObserversOf_x2_fromElementsOfSet (removedObjectSet)
        removeEBObserversOf_y2_fromElementsOfSet (removedObjectSet)
        removeEBObserversOf_width_fromElementsOfSet (removedObjectSet)
        removeEBObserversOf_x1_fromElementsOfSet (removedObjectSet)
      //--- Added object set
        let addedObjectSet = mSet.subtracting (oldSet)
        for managedObject : SegmentEntity in addedObjectSet {
          managedObject.setSignatureObserver (observer: self)
          self.setOppositeRelationship? (managedObject)
        }
        addEBObserversOf_y1_toElementsOfSet (addedObjectSet)
        addEBObserversOf_x2_toElementsOfSet (addedObjectSet)
        addEBObserversOf_y2_toElementsOfSet (addedObjectSet)
        addEBObserversOf_width_toElementsOfSet (addedObjectSet)
        addEBObserversOf_x1_toElementsOfSet (addedObjectSet)
      //--- Notify observers
        clearSignatureCache ()
      }
    }
  }

  override var prop : EBSelection < [SegmentEntity] > { return .single (mValue) }

  override func setProp (_ inValue : [SegmentEntity]) { mValue = inValue }

  override var propval : [SegmentEntity] { return mValue }

  //····················································································································

  @objc func performUndo (_ oldValue : [SegmentEntity]) {
    mValue = oldValue
  }

  //····················································································································

  func remove (_ object : SegmentEntity) {
    if mSet.contains (object) {
      var array = mValue
      let idx = array.index (of: object)
      array.remove (at: idx!)
      mValue = array
    }
  }
  
  //····················································································································

  func add (_ object : SegmentEntity) {
    if !mSet.contains (object) {
      var array = mValue
      array.append (object)
      mValue = array
    }
  }
  
  //····················································································································
  //   signature
  //····················································································································

  private weak var mSignatureObserver : EBSignatureObserverProtocol? // SOULD BE WEAK
  private var mSignatureCache : UInt32?

  //····················································································································

  final func setSignatureObserver (observer : EBSignatureObserverProtocol?) {
    mSignatureObserver = observer
    for object in mValue {
      object.setSignatureObserver (observer: self)
    }
  }

  //····················································································································

  final func signature () -> UInt32 {
    let computedSignature : UInt32
    if let s = mSignatureCache {
      computedSignature = s
    }else{
      computedSignature = computeSignature ()
      mSignatureCache = computedSignature
    }
    return computedSignature
  }
  
  //····················································································································

  final func computeSignature () -> UInt32 {
    var crc : UInt32 = 0
    for object in mValue {
      crc.accumulateUInt32 (object.signature ())
    }
    return crc
  }

  //····················································································································

  final func clearSignatureCache () {
    if mSignatureCache != nil {
      mSignatureCache = nil
      mSignatureObserver?.clearSignatureCache ()
    }
  }

  //····················································································································
 
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
