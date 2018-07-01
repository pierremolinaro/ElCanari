//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    Entity: SegmentForFontCharacterEntity
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class SegmentForFontCharacterEntity : EBManagedObject,
  SegmentForFontCharacterEntity_x1,
  SegmentForFontCharacterEntity_y1,
  SegmentForFontCharacterEntity_x2,
  SegmentForFontCharacterEntity_y2,
  SegmentForFontCharacterEntity_segmentForDrawing {

  //····················································································································
  //   Accessing x1 stored property
  //····················································································································

  var x1_value : Int {
    get {
      return self.x1.propval
    }
    set {
      self.x1.setProp (newValue)
    }
  }

  var x1_prop : EBProperty <Int> {
    get {
      return self.x1.prop
    }
  }

  //····················································································································
  //   Accessing y1 stored property
  //····················································································································

  var y1_value : Int {
    get {
      return self.y1.propval
    }
    set {
      self.y1.setProp (newValue)
    }
  }

  var y1_prop : EBProperty <Int> {
    get {
      return self.y1.prop
    }
  }

  //····················································································································
  //   Accessing x2 stored property
  //····················································································································

  var x2_value : Int {
    get {
      return self.x2.propval
    }
    set {
      self.x2.setProp (newValue)
    }
  }

  var x2_prop : EBProperty <Int> {
    get {
      return self.x2.prop
    }
  }

  //····················································································································
  //   Accessing y2 stored property
  //····················································································································

  var y2_value : Int {
    get {
      return self.y2.propval
    }
    set {
      self.y2.setProp (newValue)
    }
  }

  var y2_prop : EBProperty <Int> {
    get {
      return self.y2.prop
    }
  }

  //····················································································································
  //   Accessing segmentForDrawing transient property
  //····················································································································

  var segmentForDrawing_prop : EBProperty <SegmentForFontCharacterClass> {
    get {
      return self.segmentForDrawing.prop
    }
  }

  //····················································································································
  //    Stored Properties
  //····················································································································

  var x1 = EBStoredProperty_Int (2)
  var y1 = EBStoredProperty_Int (1)
  var x2 = EBStoredProperty_Int (9)
  var y2 = EBStoredProperty_Int (8)

  //····················································································································
  //    Transient properties
  //····················································································································

  var segmentForDrawing = EBTransientProperty_SegmentForFontCharacterClass ()

  //····················································································································
  //    Relationships
  //····················································································································


  //····················································································································
  //    init
  //····················································································································

  override init (managedObjectContext : EBManagedObjectContext) {
    super.init (managedObjectContext:managedObjectContext)
  //--- Install compute functions for transients
    segmentForDrawing.readModelFunction = { [weak self] in
      if let unwSelf = self {
        var kind = unwSelf.x1.prop.kind ()
        kind &= unwSelf.y1.prop.kind ()
        kind &= unwSelf.x2.prop.kind ()
        kind &= unwSelf.y2.prop.kind ()
        switch kind {
        case .noSelectionKind :
          return .noSelection
        case .multipleSelectionKind :
          return .multipleSelection
        case .singleSelectionKind :
          switch (unwSelf.x1.prop, unwSelf.y1.prop, unwSelf.x2.prop, unwSelf.y2.prop) {
          case (.singleSelection (let v0), .singleSelection (let v1), .singleSelection (let v2), .singleSelection (let v3)) :
            return .singleSelection (compute_SegmentForFontCharacterEntity_segmentForDrawing (v0, v1, v2, v3))
          default :
            return .noSelection
          }
        }
      }else{
        return .noSelection
      }
    }
  //--- Install property observers for transients
    x1.addEBObserver (segmentForDrawing)
    y1.addEBObserver (segmentForDrawing)
    x2.addEBObserver (segmentForDrawing)
    y2.addEBObserver (segmentForDrawing)
  //--- Install undoers for properties
    self.x1.undoManager = undoManager ()
    self.y1.undoManager = undoManager ()
    self.x2.undoManager = undoManager ()
    self.y2.undoManager = undoManager ()
  //--- Install owner for relationships
  //--- register properties for handling signature
    x1.setSignatureObserver (observer: self)
    x2.setSignatureObserver (observer: self)
    y1.setSignatureObserver (observer: self)
    y2.setSignatureObserver (observer: self)
  }

  //····················································································································

  deinit {
  //--- Remove observers
    x1.removeEBObserver (segmentForDrawing)
    y1.removeEBObserver (segmentForDrawing)
    x2.removeEBObserver (segmentForDrawing)
    y2.removeEBObserver (segmentForDrawing)
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
    createEntryForTitle ("Properties", y:&y, view:view)
    createEntryForPropertyNamed (
      "segmentForDrawing",
      idx:self.segmentForDrawing.mEasyBindingsObjectIndex,
      y:&y,
      view:view,
      observerExplorer:&self.segmentForDrawing.mObserverExplorer,
      valueExplorer:&self.segmentForDrawing.mValueExplorer
    )
    createEntryForTitle ("Transients", y:&y, view:view)
    createEntryForTitle ("ToMany Relationships", y:&y, view:view)
    createEntryForTitle ("ToOne Relationships", y:&y, view:view)
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
  //   computeSignature
  //····················································································································

  override func computeSignature () -> UInt32 {
    var crc = super.computeSignature ()
    crc.accumulateUInt32 (x1.signature ())
    crc.accumulateUInt32 (x2.signature ())
    crc.accumulateUInt32 (y1.signature ())
    crc.accumulateUInt32 (y2.signature ())
    return crc
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    ReadOnlyArrayOf_SegmentForFontCharacterEntity
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class ReadOnlyArrayOf_SegmentForFontCharacterEntity : ReadOnlyAbstractArrayProperty <SegmentForFontCharacterEntity> {

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

  final func addEBObserversOf_x1_toElementsOfSet (_ inSet : Set<SegmentForFontCharacterEntity>) {
    for managedObject in inSet {
      for observer in mObserversOf_x1 {
        managedObject.x1.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_x1_fromElementsOfSet (_ inSet : Set<SegmentForFontCharacterEntity>) {
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

  final func addEBObserversOf_y1_toElementsOfSet (_ inSet : Set<SegmentForFontCharacterEntity>) {
    for managedObject in inSet {
      for observer in mObserversOf_y1 {
        managedObject.y1.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_y1_fromElementsOfSet (_ inSet : Set<SegmentForFontCharacterEntity>) {
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

  final func addEBObserversOf_x2_toElementsOfSet (_ inSet : Set<SegmentForFontCharacterEntity>) {
    for managedObject in inSet {
      for observer in mObserversOf_x2 {
        managedObject.x2.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_x2_fromElementsOfSet (_ inSet : Set<SegmentForFontCharacterEntity>) {
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

  final func addEBObserversOf_y2_toElementsOfSet (_ inSet : Set<SegmentForFontCharacterEntity>) {
    for managedObject in inSet {
      for observer in mObserversOf_y2 {
        managedObject.y2.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_y2_fromElementsOfSet (_ inSet : Set<SegmentForFontCharacterEntity>) {
    for observer in mObserversOf_y2 {
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.y2.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'segmentForDrawing' transient property
  //····················································································································

  private var mObserversOf_segmentForDrawing = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_segmentForDrawing (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    mObserversOf_segmentForDrawing.insert (inObserver)
    switch prop {
    case .noSelection, .multipleSelection :
      break
    case .singleSelection (let v) :
      for managedObject in v {
        managedObject.segmentForDrawing.addEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_segmentForDrawing (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    mObserversOf_segmentForDrawing.remove (inObserver)
    switch prop {
    case .noSelection, .multipleSelection :
      break
    case .singleSelection (let v) :
      for managedObject in v {
        managedObject.segmentForDrawing.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_segmentForDrawing_toElementsOfSet (_ inSet : Set<SegmentForFontCharacterEntity>) {
    for managedObject in inSet {
      for observer in mObserversOf_segmentForDrawing {
        managedObject.segmentForDrawing.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_segmentForDrawing_fromElementsOfSet (_ inSet : Set<SegmentForFontCharacterEntity>) {
    for managedObject in inSet {
      for observer in mObserversOf_segmentForDrawing {
        managedObject.segmentForDrawing.removeEBObserver (observer)
      }
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    TransientArrayOf_SegmentForFontCharacterEntity
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class TransientArrayOf_SegmentForFontCharacterEntity : ReadOnlyArrayOf_SegmentForFontCharacterEntity {

  var readModelFunction : Optional<() -> EBProperty < [SegmentForFontCharacterEntity] > >

  private var prop_cache : EBProperty < [SegmentForFontCharacterEntity] >? 

  //····················································································································

  override init () {
    super.init ()
  }

  //····················································································································

  private var mSet = Set <SegmentForFontCharacterEntity> ()

  override var prop : EBProperty < [SegmentForFontCharacterEntity] > {
    get {
      if let unwrappedComputeFunction = readModelFunction, prop_cache == nil {
        prop_cache = unwrappedComputeFunction ()
        let newSet : Set <SegmentForFontCharacterEntity>
        switch prop_cache! {
        case .multipleSelection, .noSelection :
          newSet = Set <SegmentForFontCharacterEntity> ()
        case .singleSelection (let array) :
          newSet = Set (array)
        }
     //--- Removed object set
        let removedSet = mSet.subtracting (newSet)
      //--- Remove observers of stored properties
        removeEBObserversOf_x1_fromElementsOfSet (removedSet)
        removeEBObserversOf_y1_fromElementsOfSet (removedSet)
        removeEBObserversOf_x2_fromElementsOfSet (removedSet)
        removeEBObserversOf_y2_fromElementsOfSet (removedSet)
      //--- Remove observers of transient properties
        removeEBObserversOf_segmentForDrawing_fromElementsOfSet (removedSet)
      //--- Added object set
        let addedSet = newSet.subtracting (mSet)
       //--- Add observers of stored properties
        addEBObserversOf_x1_toElementsOfSet (addedSet)
        addEBObserversOf_y1_toElementsOfSet (addedSet)
        addEBObserversOf_x2_toElementsOfSet (addedSet)
        addEBObserversOf_y2_toElementsOfSet (addedSet)
       //--- Add observers of transient properties
        addEBObserversOf_segmentForDrawing_toElementsOfSet (addedSet)
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

protocol SegmentForFontCharacterEntity_x1 : class {
  var x1 : EBStoredProperty_Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol SegmentForFontCharacterEntity_y1 : class {
  var y1 : EBStoredProperty_Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol SegmentForFontCharacterEntity_x2 : class {
  var x2 : EBStoredProperty_Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol SegmentForFontCharacterEntity_y2 : class {
  var y2 : EBStoredProperty_Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol SegmentForFontCharacterEntity_segmentForDrawing : class {
  var segmentForDrawing : EBTransientProperty_SegmentForFontCharacterClass { get }
}


//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

