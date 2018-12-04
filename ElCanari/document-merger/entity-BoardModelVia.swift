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
  //   Atomic property: padDiameter
  //····················································································································

  var padDiameter_property = EBStoredProperty_Int (0)

  //····················································································································

  var padDiameter : Int {
    get {
      return self.padDiameter_property.propval
    }
    set {
      self.padDiameter_property.setProp (newValue)
    }
  }

  //····················································································································

  var padDiameter_property_selection : EBSelection <Int> {
    return self.padDiameter_property.prop
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

  override init (_ undoManager : EBUndoManager?, file: String, _ line : Int) {
    super.init (undoManager, file: file, line)
  //--- Atomic property: y
    self.y_property.undoManager = self.undoManager
  //--- Atomic property: padDiameter
    self.padDiameter_property.undoManager = self.undoManager
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
      "padDiameter",
      idx:self.padDiameter_property.mEasyBindingsObjectIndex,
      y:&y,
      view:view,
      observerExplorer:&self.padDiameter_property.mObserverExplorer,
      valueExplorer:&self.padDiameter_property.mValueExplorer
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
//    ReadOnlyArrayOf_BoardModelVia
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class ReadOnlyArrayOf_BoardModelVia : ReadOnlyAbstractArrayProperty <BoardModelVia> {

  //····················································································································

  weak var undoManager : EBUndoManager? // SOULD BE WEAK

  //····················································································································

  var propval : [BoardModelVia] { return [] } // Abstract method

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

  final func addEBObserversOf_y_toElementsOfSet (_ inSet : Set<BoardModelVia>) {
    for managedObject in inSet {
      for observer in mObserversOf_y {
        managedObject.y_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_y_fromElementsOfSet (_ inSet : Set<BoardModelVia>) {
    for observer in mObserversOf_y {
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
    mObserversOf_padDiameter.insert (inObserver)
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
    mObserversOf_padDiameter.remove (inObserver)
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
      for observer in mObserversOf_padDiameter {
        managedObject.padDiameter_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_padDiameter_fromElementsOfSet (_ inSet : Set<BoardModelVia>) {
    for observer in mObserversOf_padDiameter {
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

  final func addEBObserversOf_x_toElementsOfSet (_ inSet : Set<BoardModelVia>) {
    for managedObject in inSet {
      for observer in mObserversOf_x {
        managedObject.x_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_x_fromElementsOfSet (_ inSet : Set<BoardModelVia>) {
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
//    TransientArrayOf_BoardModelVia
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class TransientArrayOf_BoardModelVia : ReadOnlyArrayOf_BoardModelVia {

  var readModelFunction : Optional<() -> EBSelection < [BoardModelVia] > >

  //····················································································································

   private var prop_cache : EBSelection < [BoardModelVia] >? 

  //····················································································································

  override var propval : [BoardModelVia] {
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

  private var mSet = Set <BoardModelVia> ()

  override var prop : EBSelection < [BoardModelVia] > {
    get {
      if let unwrappedComputeFunction = readModelFunction, prop_cache == nil {
        prop_cache = unwrappedComputeFunction ()
        let newSet : Set <BoardModelVia>
        switch prop_cache! {
        case .multiple, .empty :
          newSet = Set <BoardModelVia> ()
        case .single (let array) :
          newSet = Set (array)
        }
     //--- Removed object set
        let removedSet = mSet.subtracting (newSet)
      //--- Remove observers of stored properties
        removeEBObserversOf_y_fromElementsOfSet (removedSet)
        removeEBObserversOf_padDiameter_fromElementsOfSet (removedSet)
        removeEBObserversOf_x_fromElementsOfSet (removedSet)
      //--- Remove observers of transient properties
      //--- Added object set
        let addedSet = newSet.subtracting (mSet)
       //--- Add observers of stored properties
        addEBObserversOf_y_toElementsOfSet (addedSet)
        addEBObserversOf_padDiameter_toElementsOfSet (addedSet)
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
//    To many relationship read write: BoardModelVia
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class ReadWriteArrayOf_BoardModelVia : ReadOnlyArrayOf_BoardModelVia {

  //····················································································································
 
  func setProp (_ value :  [BoardModelVia]) { } // Abstract method
 
  // var propval : [BoardModelVia] { return [] } // Abstract method
 
  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    To many relationship: BoardModelVia
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class StoredArrayOf_BoardModelVia : ReadWriteArrayOf_BoardModelVia, EBSignatureObserverProtocol {

  //····················································································································

  var setOppositeRelationship : Optional < (_ inManagedObject : BoardModelVia?) -> Void > = nil

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

  private var mSet = Set <BoardModelVia> ()
  private var mValue = [BoardModelVia] () {
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
        removeEBObserversOf_padDiameter_fromElementsOfSet (removedObjectSet)
        removeEBObserversOf_x_fromElementsOfSet (removedObjectSet)
      //--- Added object set
        let addedObjectSet = mSet.subtracting (oldSet)
        for managedObject : BoardModelVia in addedObjectSet {
          managedObject.setSignatureObserver (observer: self)
          self.setOppositeRelationship? (managedObject)
        }
        addEBObserversOf_y_toElementsOfSet (addedObjectSet)
        addEBObserversOf_padDiameter_toElementsOfSet (addedObjectSet)
        addEBObserversOf_x_toElementsOfSet (addedObjectSet)
      //--- Notify observers
        clearSignatureCache ()
      }
    }
  }

  override var prop : EBSelection < [BoardModelVia] > { return .single (mValue) }

  override func setProp (_ inValue : [BoardModelVia]) { mValue = inValue }

  override var propval : [BoardModelVia] { return mValue }

  //····················································································································

  @objc func performUndo (_ oldValue : [BoardModelVia]) {
    mValue = oldValue
  }

  //····················································································································

  func remove (_ object : BoardModelVia) {
    if mSet.contains (object) {
      var array = mValue
      let idx = array.index (of: object)
      array.remove (at: idx!)
      mValue = array
    }
  }
  
  //····················································································································

  func add (_ object : BoardModelVia) {
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
