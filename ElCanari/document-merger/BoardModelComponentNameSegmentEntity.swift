//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    ReadOnlyArrayOf_BoardModelComponentNameSegmentEntity
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class ReadOnlyArrayOf_BoardModelComponentNameSegmentEntity : ReadOnlyAbstractArrayProperty <BoardModelComponentNameSegmentEntity> {

  //····················································································································
  //   Observers of 'x1' stored property
  //····················································································································

  private var mObserversOf_x1 = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_x1 (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    mObserversOf_x1.insert (inObserver)
    switch prop {
    case .noSelection, .multipleSelection :
      break
    case .singleSelection (let v) :
      for managedObject in v {
        managedObject.x1.addEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_x1 (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    mObserversOf_x1.remove (inObserver)
    switch prop {
    case .noSelection, .multipleSelection :
      break
    case .singleSelection (let v) :
      for managedObject in v {
        managedObject.x1.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_x1_toElementsOfSet (_ inSet : Set<BoardModelComponentNameSegmentEntity>) {
    for managedObject in inSet {
      for observer in mObserversOf_x1 {
        managedObject.x1.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_x1_fromElementsOfSet (_ inSet : Set<BoardModelComponentNameSegmentEntity>) {
    for observer in mObserversOf_x1 {
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.x1.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'y1' stored property
  //····················································································································

  private var mObserversOf_y1 = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_y1 (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    mObserversOf_y1.insert (inObserver)
    switch prop {
    case .noSelection, .multipleSelection :
      break
    case .singleSelection (let v) :
      for managedObject in v {
        managedObject.y1.addEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_y1 (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    mObserversOf_y1.remove (inObserver)
    switch prop {
    case .noSelection, .multipleSelection :
      break
    case .singleSelection (let v) :
      for managedObject in v {
        managedObject.y1.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_y1_toElementsOfSet (_ inSet : Set<BoardModelComponentNameSegmentEntity>) {
    for managedObject in inSet {
      for observer in mObserversOf_y1 {
        managedObject.y1.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_y1_fromElementsOfSet (_ inSet : Set<BoardModelComponentNameSegmentEntity>) {
    for observer in mObserversOf_y1 {
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.y1.removeEBObserver (observer)
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
    case .noSelection, .multipleSelection :
      break
    case .singleSelection (let v) :
      for managedObject in v {
        managedObject.x2.addEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_x2 (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    mObserversOf_x2.remove (inObserver)
    switch prop {
    case .noSelection, .multipleSelection :
      break
    case .singleSelection (let v) :
      for managedObject in v {
        managedObject.x2.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_x2_toElementsOfSet (_ inSet : Set<BoardModelComponentNameSegmentEntity>) {
    for managedObject in inSet {
      for observer in mObserversOf_x2 {
        managedObject.x2.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_x2_fromElementsOfSet (_ inSet : Set<BoardModelComponentNameSegmentEntity>) {
    for observer in mObserversOf_x2 {
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.x2.removeEBObserver (observer)
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
    case .noSelection, .multipleSelection :
      break
    case .singleSelection (let v) :
      for managedObject in v {
        managedObject.y2.addEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_y2 (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    mObserversOf_y2.remove (inObserver)
    switch prop {
    case .noSelection, .multipleSelection :
      break
    case .singleSelection (let v) :
      for managedObject in v {
        managedObject.y2.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_y2_toElementsOfSet (_ inSet : Set<BoardModelComponentNameSegmentEntity>) {
    for managedObject in inSet {
      for observer in mObserversOf_y2 {
        managedObject.y2.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_y2_fromElementsOfSet (_ inSet : Set<BoardModelComponentNameSegmentEntity>) {
    for observer in mObserversOf_y2 {
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.y2.removeEBObserver (observer)
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
    case .noSelection, .multipleSelection :
      break
    case .singleSelection (let v) :
      for managedObject in v {
        managedObject.width.addEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_width (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    mObserversOf_width.remove (inObserver)
    switch prop {
    case .noSelection, .multipleSelection :
      break
    case .singleSelection (let v) :
      for managedObject in v {
        managedObject.width.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_width_toElementsOfSet (_ inSet : Set<BoardModelComponentNameSegmentEntity>) {
    for managedObject in inSet {
      for observer in mObserversOf_width {
        managedObject.width.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_width_fromElementsOfSet (_ inSet : Set<BoardModelComponentNameSegmentEntity>) {
    for observer in mObserversOf_width {
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.width.removeEBObserver (observer)
      }
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    TransientArrayOf_BoardModelComponentNameSegmentEntity
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class TransientArrayOf_BoardModelComponentNameSegmentEntity : ReadOnlyArrayOf_BoardModelComponentNameSegmentEntity {

  var readModelFunction : Optional<() -> EBProperty < [BoardModelComponentNameSegmentEntity] > >

  private var prop_cache : EBProperty < [BoardModelComponentNameSegmentEntity] >? 

  //····················································································································

  override init () {
    super.init ()
  }

  //····················································································································

  private var mSet = Set <BoardModelComponentNameSegmentEntity> ()

  override var prop : EBProperty < [BoardModelComponentNameSegmentEntity] > {
    get {
      if let unwrappedComputeFunction = readModelFunction, prop_cache == nil {
        prop_cache = unwrappedComputeFunction ()
        let newSet : Set <BoardModelComponentNameSegmentEntity>
        switch prop_cache! {
        case .multipleSelection, .noSelection :
          newSet = Set <BoardModelComponentNameSegmentEntity> ()
        case .singleSelection (let array) :
          newSet = Set (array)
        }
     //--- Removed object set
        let removedSet = mSet.subtracting (newSet)
        removeEBObserversOf_x1_fromElementsOfSet (removedSet)
        removeEBObserversOf_y1_fromElementsOfSet (removedSet)
        removeEBObserversOf_x2_fromElementsOfSet (removedSet)
        removeEBObserversOf_y2_fromElementsOfSet (removedSet)
        removeEBObserversOf_width_fromElementsOfSet (removedSet)
      //--- Added object set
        let addedSet = newSet.subtracting (mSet)
        addEBObserversOf_x1_toElementsOfSet (addedSet)
        addEBObserversOf_y1_toElementsOfSet (addedSet)
        addEBObserversOf_x2_toElementsOfSet (addedSet)
        addEBObserversOf_y2_toElementsOfSet (addedSet)
        addEBObserversOf_width_toElementsOfSet (addedSet)
      //--- Update object set
        mSet = newSet
      }
      if prop_cache == nil {
        prop_cache = .noSelection
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

protocol BoardModelComponentNameSegmentEntity_x1 : class {
  var x1 : EBStoredProperty_Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol BoardModelComponentNameSegmentEntity_y1 : class {
  var y1 : EBStoredProperty_Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol BoardModelComponentNameSegmentEntity_x2 : class {
  var x2 : EBStoredProperty_Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol BoardModelComponentNameSegmentEntity_y2 : class {
  var y2 : EBStoredProperty_Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol BoardModelComponentNameSegmentEntity_width : class {
  var width : EBStoredProperty_Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    To one relationship: myPackage
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class ToOneRelationship_BoardModelComponentNameSegmentEntity_myPackage : EBAbstractProperty {
  var mValueExplorer : NSButton? {
    didSet {
      if let unwrappedExplorer = mValueExplorer {
        switch prop {
        case .noSelection, .multipleSelection :
          break ;
        case .singleSelection (let v) :
          updateManagedObjectToOneRelationshipDisplay (object: v, button:unwrappedExplorer)
        }
      }
    }
  }

  weak var owner : BoardModelComponentNameSegmentEntity? {
    didSet {
      if let unwrappedExplorer = mValueExplorer {
        updateManagedObjectToOneRelationshipDisplay (object: propval, button:unwrappedExplorer)
      }
    }
  }
 
  weak private var mValue : BoardModelPackageEntity? {
    didSet {
      if let unwrappedOwner = owner, oldValue !== mValue {
      //--- Register old value in undo manager
        unwrappedOwner.undoManager()?.registerUndo (withTarget:self, selector:#selector(performUndo(_:)), object:oldValue)
      //--- Update explorer
        if let unwrappedExplorer = mValueExplorer {
          updateManagedObjectToOneRelationshipDisplay (object: mValue, button:unwrappedExplorer)
        }
      //--- Reset old opposite relation ship
        if let unwrappedOldValue = oldValue {
          unwrappedOldValue.componentNameSegments.remove (unwrappedOwner)
        }
      //--- Set new opposite relation ship
        if let unwrappedValue = mValue {
          unwrappedValue.componentNameSegments.add (unwrappedOwner)
        }
      //--- Notify observers
        postEvent ()
      }
    }
  }

  var propval : BoardModelPackageEntity? { get { return mValue } }

  var prop : EBProperty <BoardModelPackageEntity?> { get { return .singleSelection (mValue) } }

  func setProp (_ value : BoardModelPackageEntity?) { mValue = value }

  //····················································································································

  func performUndo (_ oldValue : BoardModelPackageEntity?) {
    mValue = oldValue
  }

  //····················································································································

  func remove (_ object : BoardModelPackageEntity) {
    if mValue === object {
      mValue = nil
    }
  }
  
  //····················································································································

  func add (_ object : BoardModelPackageEntity) {
    mValue = object
  }

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    Entity: BoardModelComponentNameSegmentEntity
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class BoardModelComponentNameSegmentEntity : EBManagedObject, BoardModelComponentNameSegmentEntity_x1, BoardModelComponentNameSegmentEntity_y1, BoardModelComponentNameSegmentEntity_x2, BoardModelComponentNameSegmentEntity_y2, BoardModelComponentNameSegmentEntity_width
{

  //····················································································································
  //    Properties
  //····················································································································

  var x1 = EBStoredProperty_Int (0)

  var y1 = EBStoredProperty_Int (0)

  var x2 = EBStoredProperty_Int (0)

  var y2 = EBStoredProperty_Int (0)

  var width = EBStoredProperty_Int (0)

  //····················································································································
  //    Transient properties
  //····················································································································


  //····················································································································
  //    Relationships
  //····················································································································

  var myPackage = ToOneRelationship_BoardModelComponentNameSegmentEntity_myPackage ()

  //····················································································································
  //    init
  //····················································································································

  override init (managedObjectContext : EBManagedObjectContext) {
    super.init (managedObjectContext:managedObjectContext)
  //--- Install compute functions for transients
  //--- Install property observers for transients
  //--- Install undoers for properties
    self.x1.undoManager = undoManager ()
    self.y1.undoManager = undoManager ()
    self.x2.undoManager = undoManager ()
    self.y2.undoManager = undoManager ()
    self.width.undoManager = undoManager ()
  //--- Install owner for relationships
    myPackage.owner = self
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
      "x1",
      idx:self.x1.mEasyBindingsObjectIndex,
      y:&y,
      view:view,
      observerExplorer:&self.x1.mObserverExplorer,
      valueExplorer:&self.x1.mValueExplorer
    )
    createEntryForPropertyNamed (
      "y1",
      idx:self.y1.mEasyBindingsObjectIndex,
      y:&y,
      view:view,
      observerExplorer:&self.y1.mObserverExplorer,
      valueExplorer:&self.y1.mValueExplorer
    )
    createEntryForPropertyNamed (
      "x2",
      idx:self.x2.mEasyBindingsObjectIndex,
      y:&y,
      view:view,
      observerExplorer:&self.x2.mObserverExplorer,
      valueExplorer:&self.x2.mValueExplorer
    )
    createEntryForPropertyNamed (
      "y2",
      idx:self.y2.mEasyBindingsObjectIndex,
      y:&y,
      view:view,
      observerExplorer:&self.y2.mObserverExplorer,
      valueExplorer:&self.y2.mValueExplorer
    )
    createEntryForPropertyNamed (
      "width",
      idx:self.width.mEasyBindingsObjectIndex,
      y:&y,
      view:view,
      observerExplorer:&self.width.mObserverExplorer,
      valueExplorer:&self.width.mValueExplorer
    )
    createEntryForToOneRelationshipNamed (
      "myPackage",
      idx:myPackage.mEasyBindingsObjectIndex,
      y: &y,
      view: view,
      valueExplorer:&myPackage.mValueExplorer
    )
  }

  //····················································································································
  //    clearObjectExplorer
  //····················································································································

  override func clearObjectExplorer () {
    self.x1.mObserverExplorer = nil
    self.x1.mValueExplorer = nil
    self.y1.mObserverExplorer = nil
    self.y1.mValueExplorer = nil
    self.x2.mObserverExplorer = nil
    self.x2.mValueExplorer = nil
    self.y2.mObserverExplorer = nil
    self.y2.mValueExplorer = nil
    self.width.mObserverExplorer = nil
    self.width.mValueExplorer = nil
    myPackage.mObserverExplorer = nil
    myPackage.mValueExplorer = nil
    super.clearObjectExplorer ()
  }

  //····················································································································
  //    saveIntoDictionary
  //····················································································································

  override func saveIntoDictionary (_ ioDictionary : NSMutableDictionary) {
    super.saveIntoDictionary (ioDictionary)
    self.x1.storeIn (dictionary: ioDictionary, forKey: "x1")
    self.y1.storeIn (dictionary: ioDictionary, forKey: "y1")
    self.x2.storeIn (dictionary: ioDictionary, forKey: "x2")
    self.y2.storeIn (dictionary: ioDictionary, forKey: "y2")
    self.width.storeIn (dictionary: ioDictionary, forKey: "width")
  }

  //····················································································································
  //    setUpWithDictionary
  //····················································································································

  override func setUpWithDictionary (_ inDictionary : NSDictionary,
                                     managedObjectArray : inout [EBManagedObject]) {
    super.setUpWithDictionary (inDictionary, managedObjectArray:&managedObjectArray)
    self.x1.readFrom (dictionary: inDictionary, forKey:"x1")
    self.y1.readFrom (dictionary: inDictionary, forKey:"y1")
    self.x2.readFrom (dictionary: inDictionary, forKey:"x2")
    self.y2.readFrom (dictionary: inDictionary, forKey:"y2")
    self.width.readFrom (dictionary: inDictionary, forKey:"width")
  }

  //····················································································································
  //   resetToOneRelationships
  //····················································································································

  override func resetToOneRelationships () {
    super.resetToOneRelationships ()
    myPackage.setProp (nil)
  }

  //····················································································································
  //   accessibleObjects
  //····················································································································

  override func accessibleObjects (objects : inout [EBManagedObject]) {
    super.accessibleObjects (objects: &objects)
    if let object = myPackage.propval {
      objects.append (object)
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

