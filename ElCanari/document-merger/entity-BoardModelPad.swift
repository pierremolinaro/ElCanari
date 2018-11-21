//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol BoardModelPad_y : class {
  var y : Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol BoardModelPad_width : class {
  var width : Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol BoardModelPad_height : class {
  var height : Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol BoardModelPad_shape : class {
  var shape : PadShape { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol BoardModelPad_rotation : class {
  var rotation : Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol BoardModelPad_x : class {
  var x : Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    Entity: BoardModelPad
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class BoardModelPad : EBManagedObject,
         BoardModelPad_y,
         BoardModelPad_width,
         BoardModelPad_height,
         BoardModelPad_shape,
         BoardModelPad_rotation,
         BoardModelPad_x {

  //····················································································································
  //   Atomic property: y
  //····················································································································

  var y_property = EBStoredProperty_Int (0)

  //····················································································································

  var y : Int {
    get {
      return self.y_property.propval
    }
    set {
      self.y_property.setProp (newValue)
    }
  }

  //····················································································································

  var y_property_selection : EBSelection <Int> {
    return self.y_property.prop
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
  //   Atomic property: height
  //····················································································································

  var height_property = EBStoredProperty_Int (0)

  //····················································································································

  var height : Int {
    get {
      return self.height_property.propval
    }
    set {
      self.height_property.setProp (newValue)
    }
  }

  //····················································································································

  var height_property_selection : EBSelection <Int> {
    return self.height_property.prop
  }

  //····················································································································
  //   Atomic property: shape
  //····················································································································

  var shape_property = EBStoredProperty_PadShape (PadShape.rectangular)

  //····················································································································

  var shape : PadShape {
    get {
      return self.shape_property.propval
    }
    set {
      self.shape_property.setProp (newValue)
    }
  }

  //····················································································································

  var shape_property_selection : EBSelection <PadShape> {
    return self.shape_property.prop
  }

  //····················································································································
  //   Atomic property: rotation
  //····················································································································

  var rotation_property = EBStoredProperty_Int (0)

  //····················································································································

  var rotation : Int {
    get {
      return self.rotation_property.propval
    }
    set {
      self.rotation_property.setProp (newValue)
    }
  }

  //····················································································································

  var rotation_property_selection : EBSelection <Int> {
    return self.rotation_property.prop
  }

  //····················································································································
  //   Atomic property: x
  //····················································································································

  var x_property = EBStoredProperty_Int (0)

  //····················································································································

  var x : Int {
    get {
      return self.x_property.propval
    }
    set {
      self.x_property.setProp (newValue)
    }
  }

  //····················································································································

  var x_property_selection : EBSelection <Int> {
    return self.x_property.prop
  }


  //····················································································································
  //    init
  //····················································································································

  override init (managedObjectContext : EBManagedObjectContext) {
    super.init (managedObjectContext:managedObjectContext)
  //--- Atomic property: y
    self.y_property.undoManager = self.undoManager
  //--- Atomic property: width
    self.width_property.undoManager = self.undoManager
  //--- Atomic property: height
    self.height_property.undoManager = self.undoManager
  //--- Atomic property: shape
    self.shape_property.undoManager = self.undoManager
  //--- Atomic property: rotation
    self.rotation_property.undoManager = self.undoManager
  //--- Atomic property: x
    self.x_property.undoManager = self.undoManager
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
      "y",
      idx:self.y_property.mEasyBindingsObjectIndex,
      y:&y,
      view:view,
      observerExplorer:&self.y_property.mObserverExplorer,
      valueExplorer:&self.y_property.mValueExplorer
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
      "height",
      idx:self.height_property.mEasyBindingsObjectIndex,
      y:&y,
      view:view,
      observerExplorer:&self.height_property.mObserverExplorer,
      valueExplorer:&self.height_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "shape",
      idx:self.shape_property.mEasyBindingsObjectIndex,
      y:&y,
      view:view,
      observerExplorer:&self.shape_property.mObserverExplorer,
      valueExplorer:&self.shape_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "rotation",
      idx:self.rotation_property.mEasyBindingsObjectIndex,
      y:&y,
      view:view,
      observerExplorer:&self.rotation_property.mObserverExplorer,
      valueExplorer:&self.rotation_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "x",
      idx:self.x_property.mEasyBindingsObjectIndex,
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
  //--- Atomic property: width
    self.width_property.mObserverExplorer = nil
    self.width_property.mValueExplorer = nil
  //--- Atomic property: height
    self.height_property.mObserverExplorer = nil
    self.height_property.mValueExplorer = nil
  //--- Atomic property: shape
    self.shape_property.mObserverExplorer = nil
    self.shape_property.mValueExplorer = nil
  //--- Atomic property: rotation
    self.rotation_property.mObserverExplorer = nil
    self.rotation_property.mValueExplorer = nil
  //--- Atomic property: x
    self.x_property.mObserverExplorer = nil
    self.x_property.mValueExplorer = nil
  //---
    super.clearObjectExplorer ()
  }

  //····················································································································
  //    saveIntoDictionary
  //····················································································································

  override func saveIntoDictionary (_ ioDictionary : NSMutableDictionary) {
    super.saveIntoDictionary (ioDictionary)
  //--- Atomic property: y
    self.y_property.storeIn (dictionary: ioDictionary, forKey:"y")
  //--- Atomic property: width
    self.width_property.storeIn (dictionary: ioDictionary, forKey:"width")
  //--- Atomic property: height
    self.height_property.storeIn (dictionary: ioDictionary, forKey:"height")
  //--- Atomic property: shape
    self.shape_property.storeIn (dictionary: ioDictionary, forKey:"shape")
  //--- Atomic property: rotation
    self.rotation_property.storeIn (dictionary: ioDictionary, forKey:"rotation")
  //--- Atomic property: x
    self.x_property.storeIn (dictionary: ioDictionary, forKey:"x")
  }

  //····················································································································
  //    setUpWithDictionary
  //····················································································································

  override func setUpWithDictionary (_ inDictionary : NSDictionary,
                                     managedObjectArray : inout [EBManagedObject]) {
    super.setUpWithDictionary (inDictionary, managedObjectArray:&managedObjectArray)
  //--- Atomic property: y
    self.y_property.readFrom (dictionary: inDictionary, forKey:"y")
  //--- Atomic property: width
    self.width_property.readFrom (dictionary: inDictionary, forKey:"width")
  //--- Atomic property: height
    self.height_property.readFrom (dictionary: inDictionary, forKey:"height")
  //--- Atomic property: shape
    self.shape_property.readFrom (dictionary: inDictionary, forKey:"shape")
  //--- Atomic property: rotation
    self.rotation_property.readFrom (dictionary: inDictionary, forKey:"rotation")
  //--- Atomic property: x
    self.x_property.readFrom (dictionary: inDictionary, forKey:"x")
  }

  //····················································································································
  //   cascadeObjectRemoving
  //····················································································································

  override func cascadeObjectRemoving (_ ioObjectsToRemove : inout Set <EBManagedObject>) {
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
//    ReadOnlyArrayOf_BoardModelPad
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class ReadOnlyArrayOf_BoardModelPad : ReadOnlyAbstractArrayProperty <BoardModelPad> {

  //····················································································································

  var undoManager : EBUndoManager?

  //····················································································································

  var propval : [BoardModelPad] { return [] } // Abstract method

  //····················································································································
  //   Observers of 'y' stored property
  //····················································································································

  private var mObserversOf_y = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_y (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    mObserversOf_y.insert (inObserver)
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
    mObserversOf_y.remove (inObserver)
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

  final func addEBObserversOf_y_toElementsOfSet (_ inSet : Set<BoardModelPad>) {
    for managedObject in inSet {
      for observer in mObserversOf_y {
        managedObject.y_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_y_fromElementsOfSet (_ inSet : Set<BoardModelPad>) {
    for observer in mObserversOf_y {
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.y_property.removeEBObserver (observer)
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

  final func addEBObserversOf_width_toElementsOfSet (_ inSet : Set<BoardModelPad>) {
    for managedObject in inSet {
      for observer in mObserversOf_width {
        managedObject.width_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_width_fromElementsOfSet (_ inSet : Set<BoardModelPad>) {
    for observer in mObserversOf_width {
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.width_property.removeEBObserver (observer)
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
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.height_property.addEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_height (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    mObserversOf_height.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.height_property.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_height_toElementsOfSet (_ inSet : Set<BoardModelPad>) {
    for managedObject in inSet {
      for observer in mObserversOf_height {
        managedObject.height_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_height_fromElementsOfSet (_ inSet : Set<BoardModelPad>) {
    for observer in mObserversOf_height {
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.height_property.removeEBObserver (observer)
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
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.shape_property.addEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_shape (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    mObserversOf_shape.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.shape_property.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_shape_toElementsOfSet (_ inSet : Set<BoardModelPad>) {
    for managedObject in inSet {
      for observer in mObserversOf_shape {
        managedObject.shape_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_shape_fromElementsOfSet (_ inSet : Set<BoardModelPad>) {
    for observer in mObserversOf_shape {
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.shape_property.removeEBObserver (observer)
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
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.rotation_property.addEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_rotation (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    mObserversOf_rotation.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.rotation_property.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_rotation_toElementsOfSet (_ inSet : Set<BoardModelPad>) {
    for managedObject in inSet {
      for observer in mObserversOf_rotation {
        managedObject.rotation_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_rotation_fromElementsOfSet (_ inSet : Set<BoardModelPad>) {
    for observer in mObserversOf_rotation {
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.rotation_property.removeEBObserver (observer)
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
    mObserversOf_x.insert (inObserver)
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
    mObserversOf_x.remove (inObserver)
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

  final func addEBObserversOf_x_toElementsOfSet (_ inSet : Set<BoardModelPad>) {
    for managedObject in inSet {
      for observer in mObserversOf_x {
        managedObject.x_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_x_fromElementsOfSet (_ inSet : Set<BoardModelPad>) {
    for observer in mObserversOf_x {
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.x_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    TransientArrayOf_BoardModelPad
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class TransientArrayOf_BoardModelPad : ReadOnlyArrayOf_BoardModelPad {

  var readModelFunction : Optional<() -> EBSelection < [BoardModelPad] > >

  //····················································································································

   private var prop_cache : EBSelection < [BoardModelPad] >? 

  //····················································································································

  override var propval : [BoardModelPad] {
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

  private var mSet = Set <BoardModelPad> ()

  override var prop : EBSelection < [BoardModelPad] > {
    get {
      if let unwrappedComputeFunction = readModelFunction, prop_cache == nil {
        prop_cache = unwrappedComputeFunction ()
        let newSet : Set <BoardModelPad>
        switch prop_cache! {
        case .multiple, .empty :
          newSet = Set <BoardModelPad> ()
        case .single (let array) :
          newSet = Set (array)
        }
     //--- Removed object set
        let removedSet = mSet.subtracting (newSet)
      //--- Remove observers of stored properties
        removeEBObserversOf_y_fromElementsOfSet (removedSet)
        removeEBObserversOf_width_fromElementsOfSet (removedSet)
        removeEBObserversOf_height_fromElementsOfSet (removedSet)
        removeEBObserversOf_shape_fromElementsOfSet (removedSet)
        removeEBObserversOf_rotation_fromElementsOfSet (removedSet)
        removeEBObserversOf_x_fromElementsOfSet (removedSet)
      //--- Remove observers of transient properties
      //--- Added object set
        let addedSet = newSet.subtracting (mSet)
       //--- Add observers of stored properties
        addEBObserversOf_y_toElementsOfSet (addedSet)
        addEBObserversOf_width_toElementsOfSet (addedSet)
        addEBObserversOf_height_toElementsOfSet (addedSet)
        addEBObserversOf_shape_toElementsOfSet (addedSet)
        addEBObserversOf_rotation_toElementsOfSet (addedSet)
        addEBObserversOf_x_toElementsOfSet (addedSet)
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
//    To many relationship read write: BoardModelPad
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class ReadWriteArrayOf_BoardModelPad : ReadOnlyArrayOf_BoardModelPad {

  //····················································································································
 
  func setProp (_ value :  [BoardModelPad]) { } // Abstract method
 
  // var propval : [BoardModelPad] { return [] } // Abstract method
 
  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    To many relationship: BoardModelPad
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class StoredArrayOf_BoardModelPad : ReadWriteArrayOf_BoardModelPad, EBSignatureObserverProtocol {

  //····················································································································

  var setOppositeRelationship : Optional < (_ inManagedObject : BoardModelPad?) -> Void > = nil

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

  private var mSet = Set <BoardModelPad> ()
  private var mValue = [BoardModelPad] () {
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
        removeEBObserversOf_y_fromElementsOfSet (removedObjectSet)
        removeEBObserversOf_width_fromElementsOfSet (removedObjectSet)
        removeEBObserversOf_height_fromElementsOfSet (removedObjectSet)
        removeEBObserversOf_shape_fromElementsOfSet (removedObjectSet)
        removeEBObserversOf_rotation_fromElementsOfSet (removedObjectSet)
        removeEBObserversOf_x_fromElementsOfSet (removedObjectSet)
      //--- Added object set
        let addedObjectSet = mSet.subtracting (oldSet)
        for managedObject : BoardModelPad in addedObjectSet {
          managedObject.setSignatureObserver (observer: self)
          self.setOppositeRelationship? (managedObject)
        }
        addEBObserversOf_y_toElementsOfSet (addedObjectSet)
        addEBObserversOf_width_toElementsOfSet (addedObjectSet)
        addEBObserversOf_height_toElementsOfSet (addedObjectSet)
        addEBObserversOf_shape_toElementsOfSet (addedObjectSet)
        addEBObserversOf_rotation_toElementsOfSet (addedObjectSet)
        addEBObserversOf_x_toElementsOfSet (addedObjectSet)
      //--- Notify observers
        clearSignatureCache ()
      }
    }
  }

  override var prop : EBSelection < [BoardModelPad] > { return .single (mValue) }

  override func setProp (_ inValue : [BoardModelPad]) { mValue = inValue }

  override var propval : [BoardModelPad] { return mValue }

  //····················································································································

  @objc func performUndo (_ oldValue : [BoardModelPad]) {
    mValue = oldValue
  }

  //····················································································································

  func remove (_ object : BoardModelPad) {
    if mSet.contains (object) {
      var array = mValue
      let idx = array.index (of: object)
      array.remove (at: idx!)
      mValue = array
    }
  }
  
  //····················································································································

  func add (_ object : BoardModelPad) {
    if !mSet.contains (object) {
      var array = mValue
      array.append (object)
      mValue = array
    }
  }
  
  //····················································································································
  //   signature
  //····················································································································

  private weak var mSignatureObserver : EBSignatureObserverProtocol?
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
