//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    ReadOnlyArrayOf_BoardModelPadEntity
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class ReadOnlyArrayOf_BoardModelPadEntity : ReadOnlyAbstractArrayProperty <BoardModelPadEntity> {

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

  final func addEBObserversOf_x_toElementsOfSet (_ inSet : Set<BoardModelPadEntity>) {
    for managedObject in inSet {
      for observer in mObserversOf_x {
        managedObject.x.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_x_fromElementsOfSet (_ inSet : Set<BoardModelPadEntity>) {
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

  final func addEBObserversOf_y_toElementsOfSet (_ inSet : Set<BoardModelPadEntity>) {
    for managedObject in inSet {
      for observer in mObserversOf_y {
        managedObject.y.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_y_fromElementsOfSet (_ inSet : Set<BoardModelPadEntity>) {
    for observer in mObserversOf_y {
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.y.removeEBObserver (observer)
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

  final func addEBObserversOf_width_toElementsOfSet (_ inSet : Set<BoardModelPadEntity>) {
    for managedObject in inSet {
      for observer in mObserversOf_width {
        managedObject.width.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_width_fromElementsOfSet (_ inSet : Set<BoardModelPadEntity>) {
    for observer in mObserversOf_width {
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.width.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'height' stored property
  //····················································································································

  private var mObserversOf_height = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_height (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    mObserversOf_height.insert (inObserver)
    switch prop {
    case .noSelection, .multipleSelection :
      break
    case .singleSelection (let v) :
      for managedObject in v {
        managedObject.height.addEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_height (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    mObserversOf_height.remove (inObserver)
    switch prop {
    case .noSelection, .multipleSelection :
      break
    case .singleSelection (let v) :
      for managedObject in v {
        managedObject.height.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_height_toElementsOfSet (_ inSet : Set<BoardModelPadEntity>) {
    for managedObject in inSet {
      for observer in mObserversOf_height {
        managedObject.height.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_height_fromElementsOfSet (_ inSet : Set<BoardModelPadEntity>) {
    for observer in mObserversOf_height {
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.height.removeEBObserver (observer)
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

  final func addEBObserversOf_holeDiameter_toElementsOfSet (_ inSet : Set<BoardModelPadEntity>) {
    for managedObject in inSet {
      for observer in mObserversOf_holeDiameter {
        managedObject.holeDiameter.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_holeDiameter_fromElementsOfSet (_ inSet : Set<BoardModelPadEntity>) {
    for observer in mObserversOf_holeDiameter {
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.holeDiameter.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'shape' stored property
  //····················································································································

  private var mObserversOf_shape = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_shape (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    mObserversOf_shape.insert (inObserver)
    switch prop {
    case .noSelection, .multipleSelection :
      break
    case .singleSelection (let v) :
      for managedObject in v {
        managedObject.shape.addEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_shape (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    mObserversOf_shape.remove (inObserver)
    switch prop {
    case .noSelection, .multipleSelection :
      break
    case .singleSelection (let v) :
      for managedObject in v {
        managedObject.shape.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_shape_toElementsOfSet (_ inSet : Set<BoardModelPadEntity>) {
    for managedObject in inSet {
      for observer in mObserversOf_shape {
        managedObject.shape.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_shape_fromElementsOfSet (_ inSet : Set<BoardModelPadEntity>) {
    for observer in mObserversOf_shape {
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.shape.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'side' stored property
  //····················································································································

  private var mObserversOf_side = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_side (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    mObserversOf_side.insert (inObserver)
    switch prop {
    case .noSelection, .multipleSelection :
      break
    case .singleSelection (let v) :
      for managedObject in v {
        managedObject.side.addEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_side (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    mObserversOf_side.remove (inObserver)
    switch prop {
    case .noSelection, .multipleSelection :
      break
    case .singleSelection (let v) :
      for managedObject in v {
        managedObject.side.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_side_toElementsOfSet (_ inSet : Set<BoardModelPadEntity>) {
    for managedObject in inSet {
      for observer in mObserversOf_side {
        managedObject.side.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_side_fromElementsOfSet (_ inSet : Set<BoardModelPadEntity>) {
    for observer in mObserversOf_side {
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.side.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'rotation' stored property
  //····················································································································

  private var mObserversOf_rotation = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_rotation (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    mObserversOf_rotation.insert (inObserver)
    switch prop {
    case .noSelection, .multipleSelection :
      break
    case .singleSelection (let v) :
      for managedObject in v {
        managedObject.rotation.addEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_rotation (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    mObserversOf_rotation.remove (inObserver)
    switch prop {
    case .noSelection, .multipleSelection :
      break
    case .singleSelection (let v) :
      for managedObject in v {
        managedObject.rotation.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_rotation_toElementsOfSet (_ inSet : Set<BoardModelPadEntity>) {
    for managedObject in inSet {
      for observer in mObserversOf_rotation {
        managedObject.rotation.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_rotation_fromElementsOfSet (_ inSet : Set<BoardModelPadEntity>) {
    for observer in mObserversOf_rotation {
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.rotation.removeEBObserver (observer)
      }
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    TransientArrayOf_BoardModelPadEntity
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class TransientArrayOf_BoardModelPadEntity : ReadOnlyArrayOf_BoardModelPadEntity {

  var readModelFunction : Optional<() -> EBProperty < [BoardModelPadEntity] > >

  private var prop_cache : EBProperty < [BoardModelPadEntity] >? 

  //····················································································································

  override init () {
    super.init ()
  }

  //····················································································································

  private var mSet = Set <BoardModelPadEntity> ()

  override var prop : EBProperty < [BoardModelPadEntity] > {
    get {
      if let unwrappedComputeFunction = readModelFunction, prop_cache == nil {
        prop_cache = unwrappedComputeFunction ()
        let newSet : Set <BoardModelPadEntity>
        switch prop_cache! {
        case .multipleSelection, .noSelection :
          newSet = Set <BoardModelPadEntity> ()
        case .singleSelection (let array) :
          newSet = Set (array)
        }
     //--- Removed object set
        let removedSet = mSet.subtracting (newSet)
      //--- Remove observers of stored properties
        removeEBObserversOf_x_fromElementsOfSet (removedSet)
        removeEBObserversOf_y_fromElementsOfSet (removedSet)
        removeEBObserversOf_width_fromElementsOfSet (removedSet)
        removeEBObserversOf_height_fromElementsOfSet (removedSet)
        removeEBObserversOf_holeDiameter_fromElementsOfSet (removedSet)
        removeEBObserversOf_shape_fromElementsOfSet (removedSet)
        removeEBObserversOf_side_fromElementsOfSet (removedSet)
        removeEBObserversOf_rotation_fromElementsOfSet (removedSet)
      //--- Remove observers of transient properties
      //--- Added object set
        let addedSet = newSet.subtracting (mSet)
       //--- Add observers of stored properties
        addEBObserversOf_x_toElementsOfSet (addedSet)
        addEBObserversOf_y_toElementsOfSet (addedSet)
        addEBObserversOf_width_toElementsOfSet (addedSet)
        addEBObserversOf_height_toElementsOfSet (addedSet)
        addEBObserversOf_holeDiameter_toElementsOfSet (addedSet)
        addEBObserversOf_shape_toElementsOfSet (addedSet)
        addEBObserversOf_side_toElementsOfSet (addedSet)
        addEBObserversOf_rotation_toElementsOfSet (addedSet)
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

protocol BoardModelPadEntity_x : class {
  var x : EBStoredProperty_Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol BoardModelPadEntity_y : class {
  var y : EBStoredProperty_Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol BoardModelPadEntity_width : class {
  var width : EBStoredProperty_Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol BoardModelPadEntity_height : class {
  var height : EBStoredProperty_Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol BoardModelPadEntity_holeDiameter : class {
  var holeDiameter : EBStoredProperty_Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol BoardModelPadEntity_shape : class {
  var shape : EBStoredProperty_PadShape { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol BoardModelPadEntity_side : class {
  var side : EBStoredProperty_PadSide { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol BoardModelPadEntity_rotation : class {
  var rotation : EBStoredProperty_Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    To one relationship: myBoard
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class ToOneRelationship_BoardModelPadEntity_myBoard : EBAbstractProperty {
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

  weak var owner : BoardModelPadEntity? {
    didSet {
      if let unwrappedExplorer = mValueExplorer {
        updateManagedObjectToOneRelationshipDisplay (object: propval, button:unwrappedExplorer)
      }
    }
  }
 
  weak private var mValue : BoardModelEntity? {
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
          unwrappedOldValue.pads.remove (unwrappedOwner)
        }
      //--- Set new opposite relation ship
        if let unwrappedValue = mValue {
          unwrappedValue.pads.add (unwrappedOwner)
        }
      //--- Notify observers
        postEvent ()
      }
    }
  }

  var propval : BoardModelEntity? { get { return mValue } }

  var prop : EBProperty <BoardModelEntity?> { get { return .singleSelection (mValue) } }

  func setProp (_ value : BoardModelEntity?) { mValue = value }

  //····················································································································

  func performUndo (_ oldValue : BoardModelEntity?) {
    mValue = oldValue
  }

  //····················································································································

  func remove (_ object : BoardModelEntity) {
    if mValue === object {
      mValue = nil
    }
  }
  
  //····················································································································

  func add (_ object : BoardModelEntity) {
    mValue = object
  }

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    Entity: BoardModelPadEntity
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class BoardModelPadEntity : EBManagedObject, BoardModelPadEntity_x, BoardModelPadEntity_y, BoardModelPadEntity_width, BoardModelPadEntity_height, BoardModelPadEntity_holeDiameter, BoardModelPadEntity_shape, BoardModelPadEntity_side, BoardModelPadEntity_rotation
{

  //····················································································································
  //    Properties
  //····················································································································

  var x = EBStoredProperty_Int (0)

  var y = EBStoredProperty_Int (0)

  var width = EBStoredProperty_Int (0)

  var height = EBStoredProperty_Int (0)

  var holeDiameter = EBStoredProperty_Int (0)

  var shape = EBStoredProperty_PadShape (PadShape.rectangular)

  var side = EBStoredProperty_PadSide (PadSide.traversing)

  var rotation = EBStoredProperty_Int (0)

  //····················································································································
  //    Transient properties
  //····················································································································


  //····················································································································
  //    Relationships
  //····················································································································

  var myBoard = ToOneRelationship_BoardModelPadEntity_myBoard ()

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
    self.width.undoManager = undoManager ()
    self.height.undoManager = undoManager ()
    self.holeDiameter.undoManager = undoManager ()
    self.shape.undoManager = undoManager ()
    self.side.undoManager = undoManager ()
    self.rotation.undoManager = undoManager ()
  //--- Install owner for relationships
    myBoard.owner = self
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
      "width",
      idx:self.width.mEasyBindingsObjectIndex,
      y:&y,
      view:view,
      observerExplorer:&self.width.mObserverExplorer,
      valueExplorer:&self.width.mValueExplorer
    )
    createEntryForPropertyNamed (
      "height",
      idx:self.height.mEasyBindingsObjectIndex,
      y:&y,
      view:view,
      observerExplorer:&self.height.mObserverExplorer,
      valueExplorer:&self.height.mValueExplorer
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
      "shape",
      idx:self.shape.mEasyBindingsObjectIndex,
      y:&y,
      view:view,
      observerExplorer:&self.shape.mObserverExplorer,
      valueExplorer:&self.shape.mValueExplorer
    )
    createEntryForPropertyNamed (
      "side",
      idx:self.side.mEasyBindingsObjectIndex,
      y:&y,
      view:view,
      observerExplorer:&self.side.mObserverExplorer,
      valueExplorer:&self.side.mValueExplorer
    )
    createEntryForPropertyNamed (
      "rotation",
      idx:self.rotation.mEasyBindingsObjectIndex,
      y:&y,
      view:view,
      observerExplorer:&self.rotation.mObserverExplorer,
      valueExplorer:&self.rotation.mValueExplorer
    )
    createEntryForTitle ("Properties", y:&y, view:view)
    createEntryForTitle ("Transients", y:&y, view:view)
    createEntryForTitle ("ToMany Relationships", y:&y, view:view)
    createEntryForToOneRelationshipNamed (
      "myBoard",
      idx:myBoard.mEasyBindingsObjectIndex,
      y: &y,
      view: view,
      valueExplorer:&myBoard.mValueExplorer
    )
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
    self.width.mObserverExplorer = nil
    self.width.mValueExplorer = nil
    self.height.mObserverExplorer = nil
    self.height.mValueExplorer = nil
    self.holeDiameter.mObserverExplorer = nil
    self.holeDiameter.mValueExplorer = nil
    self.shape.mObserverExplorer = nil
    self.shape.mValueExplorer = nil
    self.side.mObserverExplorer = nil
    self.side.mValueExplorer = nil
    self.rotation.mObserverExplorer = nil
    self.rotation.mValueExplorer = nil
    myBoard.mObserverExplorer = nil
    myBoard.mValueExplorer = nil
    super.clearObjectExplorer ()
  }

  //····················································································································
  //    saveIntoDictionary
  //····················································································································

  override func saveIntoDictionary (_ ioDictionary : NSMutableDictionary) {
    super.saveIntoDictionary (ioDictionary)
    self.x.storeIn (dictionary: ioDictionary, forKey: "x")
    self.y.storeIn (dictionary: ioDictionary, forKey: "y")
    self.width.storeIn (dictionary: ioDictionary, forKey: "width")
    self.height.storeIn (dictionary: ioDictionary, forKey: "height")
    self.holeDiameter.storeIn (dictionary: ioDictionary, forKey: "holeDiameter")
    self.shape.storeIn (dictionary: ioDictionary, forKey: "shape")
    self.side.storeIn (dictionary: ioDictionary, forKey: "side")
    self.rotation.storeIn (dictionary: ioDictionary, forKey: "rotation")
  }

  //····················································································································
  //    setUpWithDictionary
  //····················································································································

  override func setUpWithDictionary (_ inDictionary : NSDictionary,
                                     managedObjectArray : inout [EBManagedObject]) {
    super.setUpWithDictionary (inDictionary, managedObjectArray:&managedObjectArray)
    self.x.readFrom (dictionary: inDictionary, forKey:"x")
    self.y.readFrom (dictionary: inDictionary, forKey:"y")
    self.width.readFrom (dictionary: inDictionary, forKey:"width")
    self.height.readFrom (dictionary: inDictionary, forKey:"height")
    self.holeDiameter.readFrom (dictionary: inDictionary, forKey:"holeDiameter")
    self.shape.readFrom (dictionary: inDictionary, forKey:"shape")
    self.side.readFrom (dictionary: inDictionary, forKey:"side")
    self.rotation.readFrom (dictionary: inDictionary, forKey:"rotation")
  }

  //····················································································································
  //   cascadeObjectRemoving
  //····················································································································

  override func cascadeObjectRemoving () {
    super.cascadeObjectRemoving ()
    self.myBoard.setProp (nil) // Set relationship to nil
  }

  //····················································································································
  //   resetToOneRelationships
  //····················································································································

  override func resetToOneRelationships () {
    super.resetToOneRelationships ()
    myBoard.setProp (nil)
  }

  //····················································································································
  //   accessibleObjects
  //····················································································································

  override func accessibleObjects (objects : inout [EBManagedObject]) {
    super.accessibleObjects (objects: &objects)
    if let object = myBoard.propval {
      objects.append (object)
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

