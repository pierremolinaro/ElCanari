//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    Entity: SegmentForFontCharacter
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class SegmentForFontCharacter : EBManagedObject,
  SegmentForFontCharacter_x1,
  SegmentForFontCharacter_y1,
  SegmentForFontCharacter_x2,
  SegmentForFontCharacter_y2,
  SegmentForFontCharacter_segmentForDrawing {

  //····················································································································
  //   Accessing x1 stored property
  //····················································································································

  var x1 : Int {
    get {
      return self.x1_property.propval
    }
    set {
      self.x1_property.setProp (newValue)
    }
  }

  var x1_property_selection : EBSelection <Int> {
    get {
      return self.x1_property.prop
    }
  }

  //····················································································································
  //   Accessing y1 stored property
  //····················································································································

  var y1 : Int {
    get {
      return self.y1_property.propval
    }
    set {
      self.y1_property.setProp (newValue)
    }
  }

  var y1_property_selection : EBSelection <Int> {
    get {
      return self.y1_property.prop
    }
  }

  //····················································································································
  //   Accessing x2 stored property
  //····················································································································

  var x2 : Int {
    get {
      return self.x2_property.propval
    }
    set {
      self.x2_property.setProp (newValue)
    }
  }

  var x2_property_selection : EBSelection <Int> {
    get {
      return self.x2_property.prop
    }
  }

  //····················································································································
  //   Accessing y2 stored property
  //····················································································································

  var y2 : Int {
    get {
      return self.y2_property.propval
    }
    set {
      self.y2_property.setProp (newValue)
    }
  }

  var y2_property_selection : EBSelection <Int> {
    get {
      return self.y2_property.prop
    }
  }

  //····················································································································
  //   Accessing segmentForDrawing transient property
  //····················································································································

  var segmentForDrawing_property_selection : EBSelection <SegmentForFontCharacterClass> {
    get {
      return self.segmentForDrawing_property.prop
    }
  }

  var segmentForDrawing : SegmentForFontCharacterClass? {
    switch segmentForDrawing_property_selection {
    case .empty, .multiple :
      return nil
    case .single (let v) :
      return v
    }
  }

  //····················································································································
  //    Stored Properties
  //····················································································································

  var x1_property = EBStoredProperty_Int (2)
  var y1_property = EBStoredProperty_Int (1)
  var x2_property = EBStoredProperty_Int (9)
  var y2_property = EBStoredProperty_Int (8)

  //····················································································································
  //    Transient properties
  //····················································································································

  var segmentForDrawing_property = EBTransientProperty_SegmentForFontCharacterClass ()

  //····················································································································
  //    Relationships
  //····················································································································


  //····················································································································
  //    init
  //····················································································································

  override init (managedObjectContext : EBManagedObjectContext) {
    super.init (managedObjectContext:managedObjectContext)
  //--- Install compute functions for transients
    self.segmentForDrawing_property.readModelFunction = { [weak self] in
      if let unwSelf = self {
        var kind = unwSelf.x1_property_selection.kind ()
        kind &= unwSelf.y1_property_selection.kind ()
        kind &= unwSelf.x2_property_selection.kind ()
        kind &= unwSelf.y2_property_selection.kind ()
        switch kind {
        case .noSelectionKind :
          return .empty
        case .multipleSelectionKind :
          return .multiple
        case .singleSelectionKind :
          switch (unwSelf.x1_property_selection, unwSelf.y1_property_selection, unwSelf.x2_property_selection, unwSelf.y2_property_selection) {
          case (.single (let v0), .single (let v1), .single (let v2), .single (let v3)) :
            return .single (transient_SegmentForFontCharacter_segmentForDrawing (v0, v1, v2, v3))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
  //--- Install property observers for transients
    self.x1_property.addEBObserver (self.segmentForDrawing_property)
    self.y1_property.addEBObserver (self.segmentForDrawing_property)
    self.x2_property.addEBObserver (self.segmentForDrawing_property)
    self.y2_property.addEBObserver (self.segmentForDrawing_property)
  //--- Install undoers for properties
    self.x1_property.undoManager = undoManager ()
    self.y1_property.undoManager = undoManager ()
    self.x2_property.undoManager = undoManager ()
    self.y2_property.undoManager = undoManager ()
  //--- Install owner for relationships
  //--- register properties for handling signature
    self.x1_property.setSignatureObserver (observer:self)
    self.x2_property.setSignatureObserver (observer:self)
    self.y1_property.setSignatureObserver (observer:self)
    self.y2_property.setSignatureObserver (observer:self)
  }

  //····················································································································

  deinit {
  //--- Remove observers
    self.x1_property.removeEBObserver (self.segmentForDrawing_property)
    self.y1_property.removeEBObserver (self.segmentForDrawing_property)
    self.x2_property.removeEBObserver (self.segmentForDrawing_property)
    self.y2_property.removeEBObserver (self.segmentForDrawing_property)
  }

  //····················································································································
  //    populateExplorerWindow
  //····················································································································

  override func populateExplorerWindow (_ y : inout CGFloat, view : NSView) {
    super.populateExplorerWindow (&y, view:view)
    createEntryForPropertyNamed (
      "x1",
      idx:self.x1_property.mEasyBindingsObjectIndex,
      y:&y,
      view:view,
      observerExplorer:&self.x1_property.mObserverExplorer,
      valueExplorer:&self.x1_property.mValueExplorer
    )
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
    createEntryForTitle ("Properties", y:&y, view:view)
    createEntryForPropertyNamed (
      "segmentForDrawing",
      idx:self.segmentForDrawing_property.mEasyBindingsObjectIndex,
      y:&y,
      view:view,
      observerExplorer:&self.segmentForDrawing_property.mObserverExplorer,
      valueExplorer:&self.segmentForDrawing_property.mValueExplorer
    )
    createEntryForTitle ("Transients", y:&y, view:view)
    createEntryForTitle ("ToMany Relationships", y:&y, view:view)
    createEntryForTitle ("ToOne Relationships", y:&y, view:view)
  }

  //····················································································································
  //    clearObjectExplorer
  //····················································································································

  override func clearObjectExplorer () {
    self.x1_property.mObserverExplorer = nil
    self.x1_property.mValueExplorer = nil
    self.y1_property.mObserverExplorer = nil
    self.y1_property.mValueExplorer = nil
    self.x2_property.mObserverExplorer = nil
    self.x2_property.mValueExplorer = nil
    self.y2_property.mObserverExplorer = nil
    self.y2_property.mValueExplorer = nil
    super.clearObjectExplorer ()
  }

  //····················································································································
  //    saveIntoDictionary
  //····················································································································

  override func saveIntoDictionary (_ ioDictionary : NSMutableDictionary) {
    super.saveIntoDictionary (ioDictionary)
    self.x1_property.storeIn (dictionary: ioDictionary, forKey: "x1")
    self.y1_property.storeIn (dictionary: ioDictionary, forKey: "y1")
    self.x2_property.storeIn (dictionary: ioDictionary, forKey: "x2")
    self.y2_property.storeIn (dictionary: ioDictionary, forKey: "y2")
  }

  //····················································································································
  //    setUpWithDictionary
  //····················································································································

  override func setUpWithDictionary (_ inDictionary : NSDictionary,
                                     managedObjectArray : inout [EBManagedObject]) {
    super.setUpWithDictionary (inDictionary, managedObjectArray:&managedObjectArray)
    self.x1_property.readFrom (dictionary: inDictionary, forKey:"x1")
    self.y1_property.readFrom (dictionary: inDictionary, forKey:"y1")
    self.x2_property.readFrom (dictionary: inDictionary, forKey:"x2")
    self.y2_property.readFrom (dictionary: inDictionary, forKey:"y2")
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
    crc.accumulateUInt32 (self.x1_property.signature ())
    crc.accumulateUInt32 (self.x2_property.signature ())
    crc.accumulateUInt32 (self.y1_property.signature ())
    crc.accumulateUInt32 (self.y2_property.signature ())
    return crc
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    ReadOnlyArrayOf_SegmentForFontCharacter
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class ReadOnlyArrayOf_SegmentForFontCharacter : ReadOnlyAbstractArrayProperty <SegmentForFontCharacter> {

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

  final func addEBObserversOf_x1_toElementsOfSet (_ inSet : Set<SegmentForFontCharacter>) {
    for managedObject in inSet {
      for observer in mObserversOf_x1 {
        managedObject.x1_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_x1_fromElementsOfSet (_ inSet : Set<SegmentForFontCharacter>) {
    for observer in mObserversOf_x1 {
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.x1_property.removeEBObserver (observer)
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

  final func addEBObserversOf_y1_toElementsOfSet (_ inSet : Set<SegmentForFontCharacter>) {
    for managedObject in inSet {
      for observer in mObserversOf_y1 {
        managedObject.y1_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_y1_fromElementsOfSet (_ inSet : Set<SegmentForFontCharacter>) {
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

  final func addEBObserversOf_x2_toElementsOfSet (_ inSet : Set<SegmentForFontCharacter>) {
    for managedObject in inSet {
      for observer in mObserversOf_x2 {
        managedObject.x2_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_x2_fromElementsOfSet (_ inSet : Set<SegmentForFontCharacter>) {
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

  final func addEBObserversOf_y2_toElementsOfSet (_ inSet : Set<SegmentForFontCharacter>) {
    for managedObject in inSet {
      for observer in mObserversOf_y2 {
        managedObject.y2_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_y2_fromElementsOfSet (_ inSet : Set<SegmentForFontCharacter>) {
    for observer in mObserversOf_y2 {
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.y2_property.removeEBObserver (observer)
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
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.segmentForDrawing_property.addEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_segmentForDrawing (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    mObserversOf_segmentForDrawing.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.segmentForDrawing_property.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_segmentForDrawing_toElementsOfSet (_ inSet : Set<SegmentForFontCharacter>) {
    for managedObject in inSet {
      for observer in mObserversOf_segmentForDrawing {
        managedObject.segmentForDrawing_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_segmentForDrawing_fromElementsOfSet (_ inSet : Set<SegmentForFontCharacter>) {
    for managedObject in inSet {
      for observer in mObserversOf_segmentForDrawing {
        managedObject.segmentForDrawing_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    TransientArrayOf_SegmentForFontCharacter
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class TransientArrayOf_SegmentForFontCharacter : ReadOnlyArrayOf_SegmentForFontCharacter {

  var readModelFunction : Optional<() -> EBSelection < [SegmentForFontCharacter] > >

  private var prop_cache : EBSelection < [SegmentForFontCharacter] >? 

  //····················································································································

  override init () {
    super.init ()
  }

  //····················································································································

  private var mSet = Set <SegmentForFontCharacter> ()

  override var prop : EBSelection < [SegmentForFontCharacter] > {
    get {
      if let unwrappedComputeFunction = readModelFunction, prop_cache == nil {
        prop_cache = unwrappedComputeFunction ()
        let newSet : Set <SegmentForFontCharacter>
        switch prop_cache! {
        case .multiple, .empty :
          newSet = Set <SegmentForFontCharacter> ()
        case .single (let array) :
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

protocol SegmentForFontCharacter_x1 : class {
  var x1 : Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol SegmentForFontCharacter_y1 : class {
  var y1 : Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol SegmentForFontCharacter_x2 : class {
  var x2 : Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol SegmentForFontCharacter_y2 : class {
  var y2 : Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol SegmentForFontCharacter_segmentForDrawing : class {
  var segmentForDrawing : SegmentForFontCharacterClass? { get }
}


