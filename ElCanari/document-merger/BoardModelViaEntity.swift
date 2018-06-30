//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    Entity: BoardModelViaEntity
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class BoardModelViaEntity : EBManagedObject,
  BoardModelViaEntity_x,
  BoardModelViaEntity_y,
  BoardModelViaEntity_holeDiameter,
  BoardModelViaEntity_padDiameter {

  //····················································································································
  //    Properties
  //····················································································································

  var x = EBStoredProperty_Int (0)
  var y = EBStoredProperty_Int (0)
  var holeDiameter = EBStoredProperty_Int (0)
  var padDiameter = EBStoredProperty_Int (0)

  //····················································································································
  //    Transient properties
  //····················································································································


  //····················································································································
  //    Relationships
  //····················································································································


  //····················································································································
  //    init
  //····················································································································

  override init (managedObjectContext : EBManagedObjectContext) {
    super.init (managedObjectContext:managedObjectContext)
  //--- Install compute functions for transients
  //--- Install property observers for transients
  //--- Install undoers for properties
    self.x.undoManager = undoManager ()
    self.y.undoManager = undoManager ()
    self.holeDiameter.undoManager = undoManager ()
    self.padDiameter.undoManager = undoManager ()
  //--- Install owner for relationships
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
      "x",
      idx:self.x.mEasyBindingsObjectIndex,
      y:&y,
      view:view,
      observerExplorer:&self.x.mObserverExplorer,
      valueExplorer:&self.x.mValueExplorer
    )
    createEntryForPropertyNamed (
      "y",
      idx:self.y.mEasyBindingsObjectIndex,
      y:&y,
      view:view,
      observerExplorer:&self.y.mObserverExplorer,
      valueExplorer:&self.y.mValueExplorer
    )
    createEntryForPropertyNamed (
      "holeDiameter",
      idx:self.holeDiameter.mEasyBindingsObjectIndex,
      y:&y,
      view:view,
      observerExplorer:&self.holeDiameter.mObserverExplorer,
      valueExplorer:&self.holeDiameter.mValueExplorer
    )
    createEntryForPropertyNamed (
      "padDiameter",
      idx:self.padDiameter.mEasyBindingsObjectIndex,
      y:&y,
      view:view,
      observerExplorer:&self.padDiameter.mObserverExplorer,
      valueExplorer:&self.padDiameter.mValueExplorer
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
    self.x.mObserverExplorer = nil
    self.x.mValueExplorer = nil
    self.y.mObserverExplorer = nil
    self.y.mValueExplorer = nil
    self.holeDiameter.mObserverExplorer = nil
    self.holeDiameter.mValueExplorer = nil
    self.padDiameter.mObserverExplorer = nil
    self.padDiameter.mValueExplorer = nil
    super.clearObjectExplorer ()
  }

  //····················································································································
  //    saveIntoDictionary
  //····················································································································

  override func saveIntoDictionary (_ ioDictionary : NSMutableDictionary) {
    super.saveIntoDictionary (ioDictionary)
    self.x.storeIn (dictionary: ioDictionary, forKey: "x")
    self.y.storeIn (dictionary: ioDictionary, forKey: "y")
    self.holeDiameter.storeIn (dictionary: ioDictionary, forKey: "holeDiameter")
    self.padDiameter.storeIn (dictionary: ioDictionary, forKey: "padDiameter")
  }

  //····················································································································
  //    setUpWithDictionary
  //····················································································································

  override func setUpWithDictionary (_ inDictionary : NSDictionary,
                                     managedObjectArray : inout [EBManagedObject]) {
    super.setUpWithDictionary (inDictionary, managedObjectArray:&managedObjectArray)
    self.x.readFrom (dictionary: inDictionary, forKey:"x")
    self.y.readFrom (dictionary: inDictionary, forKey:"y")
    self.holeDiameter.readFrom (dictionary: inDictionary, forKey:"holeDiameter")
    self.padDiameter.readFrom (dictionary: inDictionary, forKey:"padDiameter")
  }

  //····················································································································
  //   cascadeObjectRemoving
  //····················································································································

  override func cascadeObjectRemoving (_ ioObjectsToRemove : inout Set <EBManagedObject>) {
    super.cascadeObjectRemoving (&ioObjectsToRemove)
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
//    ReadOnlyArrayOf_BoardModelViaEntity
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class ReadOnlyArrayOf_BoardModelViaEntity : ReadOnlyAbstractArrayProperty <BoardModelViaEntity> {

  //····················································································································
  //   Observers of 'x' stored property
  //····················································································································

  private var mObserversOf_x = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_x (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    mObserversOf_x.insert (inObserver)
    switch prop {
    case .noSelection, .multipleSelection :
      break
    case .singleSelection (let v) :
      for managedObject in v {
        managedObject.x.addEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_x (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    mObserversOf_x.remove (inObserver)
    switch prop {
    case .noSelection, .multipleSelection :
      break
    case .singleSelection (let v) :
      for managedObject in v {
        managedObject.x.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_x_toElementsOfSet (_ inSet : Set<BoardModelViaEntity>) {
    for managedObject in inSet {
      for observer in mObserversOf_x {
        managedObject.x.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_x_fromElementsOfSet (_ inSet : Set<BoardModelViaEntity>) {
    for observer in mObserversOf_x {
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.x.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'y' stored property
  //····················································································································

  private var mObserversOf_y = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_y (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    mObserversOf_y.insert (inObserver)
    switch prop {
    case .noSelection, .multipleSelection :
      break
    case .singleSelection (let v) :
      for managedObject in v {
        managedObject.y.addEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_y (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    mObserversOf_y.remove (inObserver)
    switch prop {
    case .noSelection, .multipleSelection :
      break
    case .singleSelection (let v) :
      for managedObject in v {
        managedObject.y.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_y_toElementsOfSet (_ inSet : Set<BoardModelViaEntity>) {
    for managedObject in inSet {
      for observer in mObserversOf_y {
        managedObject.y.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_y_fromElementsOfSet (_ inSet : Set<BoardModelViaEntity>) {
    for observer in mObserversOf_y {
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.y.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'holeDiameter' stored property
  //····················································································································

  private var mObserversOf_holeDiameter = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_holeDiameter (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    mObserversOf_holeDiameter.insert (inObserver)
    switch prop {
    case .noSelection, .multipleSelection :
      break
    case .singleSelection (let v) :
      for managedObject in v {
        managedObject.holeDiameter.addEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_holeDiameter (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    mObserversOf_holeDiameter.remove (inObserver)
    switch prop {
    case .noSelection, .multipleSelection :
      break
    case .singleSelection (let v) :
      for managedObject in v {
        managedObject.holeDiameter.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_holeDiameter_toElementsOfSet (_ inSet : Set<BoardModelViaEntity>) {
    for managedObject in inSet {
      for observer in mObserversOf_holeDiameter {
        managedObject.holeDiameter.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_holeDiameter_fromElementsOfSet (_ inSet : Set<BoardModelViaEntity>) {
    for observer in mObserversOf_holeDiameter {
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.holeDiameter.removeEBObserver (observer)
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
    mObserversOf_padDiameter.insert (inObserver)
    switch prop {
    case .noSelection, .multipleSelection :
      break
    case .singleSelection (let v) :
      for managedObject in v {
        managedObject.padDiameter.addEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_padDiameter (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    mObserversOf_padDiameter.remove (inObserver)
    switch prop {
    case .noSelection, .multipleSelection :
      break
    case .singleSelection (let v) :
      for managedObject in v {
        managedObject.padDiameter.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_padDiameter_toElementsOfSet (_ inSet : Set<BoardModelViaEntity>) {
    for managedObject in inSet {
      for observer in mObserversOf_padDiameter {
        managedObject.padDiameter.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_padDiameter_fromElementsOfSet (_ inSet : Set<BoardModelViaEntity>) {
    for observer in mObserversOf_padDiameter {
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.padDiameter.removeEBObserver (observer)
      }
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    TransientArrayOf_BoardModelViaEntity
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class TransientArrayOf_BoardModelViaEntity : ReadOnlyArrayOf_BoardModelViaEntity {

  var readModelFunction : Optional<() -> EBProperty < [BoardModelViaEntity] > >

  private var prop_cache : EBProperty < [BoardModelViaEntity] >? 

  //····················································································································

  override init () {
    super.init ()
  }

  //····················································································································

  private var mSet = Set <BoardModelViaEntity> ()

  override var prop : EBProperty < [BoardModelViaEntity] > {
    get {
      if let unwrappedComputeFunction = readModelFunction, prop_cache == nil {
        prop_cache = unwrappedComputeFunction ()
        let newSet : Set <BoardModelViaEntity>
        switch prop_cache! {
        case .multipleSelection, .noSelection :
          newSet = Set <BoardModelViaEntity> ()
        case .singleSelection (let array) :
          newSet = Set (array)
        }
     //--- Removed object set
        let removedSet = mSet.subtracting (newSet)
      //--- Remove observers of stored properties
        removeEBObserversOf_x_fromElementsOfSet (removedSet)
        removeEBObserversOf_y_fromElementsOfSet (removedSet)
        removeEBObserversOf_holeDiameter_fromElementsOfSet (removedSet)
        removeEBObserversOf_padDiameter_fromElementsOfSet (removedSet)
      //--- Remove observers of transient properties
      //--- Added object set
        let addedSet = newSet.subtracting (mSet)
       //--- Add observers of stored properties
        addEBObserversOf_x_toElementsOfSet (addedSet)
        addEBObserversOf_y_toElementsOfSet (addedSet)
        addEBObserversOf_holeDiameter_toElementsOfSet (addedSet)
        addEBObserversOf_padDiameter_toElementsOfSet (addedSet)
       //--- Add observers of transient properties
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

protocol BoardModelViaEntity_x : class {
  var x : EBStoredProperty_Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol BoardModelViaEntity_y : class {
  var y : EBStoredProperty_Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol BoardModelViaEntity_holeDiameter : class {
  var holeDiameter : EBStoredProperty_Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol BoardModelViaEntity_padDiameter : class {
  var padDiameter : EBStoredProperty_Int { get }
}


//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

