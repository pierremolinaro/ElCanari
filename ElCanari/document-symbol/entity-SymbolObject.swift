//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol SymbolObject_selectionDisplay : class {
  var selectionDisplay : EBShape? { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol SymbolObject_objectDisplay : class {
  var objectDisplay : EBShape? { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol SymbolObject_issues : class {
  var issues : CanariIssueArray? { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    Entity: SymbolObject
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class SymbolObject : EBGraphicManagedObject,
         SymbolObject_selectionDisplay,
         SymbolObject_objectDisplay,
         SymbolObject_issues {

  //····················································································································
  //   Transient property: issues
  //····················································································································

  var issues_property = EBTransientProperty_CanariIssueArray ()

  //····················································································································

  var issues_property_selection : EBSelection <CanariIssueArray> {
    return self.issues_property.prop
  }

  //····················································································································

  var issues : CanariIssueArray? {
    switch self.issues_property_selection {
    case .empty, .multiple :
      return nil
    case .single (let v) :
      return v
    }
  }

  //····················································································································
  //    init
  //····················································································································

  required init (_ ebUndoManager : EBUndoManager?) {
    super.init (ebUndoManager)
  //--- Install undoers and opposite setter for relationships
  //--- register properties for handling signature
  //--- Extern delegates
  }

  //····················································································································

  override internal func removeAllObservers () {
    super.removeAllObservers ()
  }

  //····················································································································
  //    Extern delegates
  //····················································································································


  //····················································································································
  //    populateExplorerWindow
  //····················································································································

  override func populateExplorerWindow (_ y : inout CGFloat, view : NSView) {
    super.populateExplorerWindow (&y, view:view)
    createEntryForTitle ("Properties", y:&y, view:view)
    createEntryForPropertyNamed (
      "selectionDisplay",
      idx:self.selectionDisplay_property.ebObjectIndex,
      y:&y,
      view:view,
      observerExplorer:&self.selectionDisplay_property.mObserverExplorer,
      valueExplorer:&self.selectionDisplay_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "objectDisplay",
      idx:self.objectDisplay_property.ebObjectIndex,
      y:&y,
      view:view,
      observerExplorer:&self.objectDisplay_property.mObserverExplorer,
      valueExplorer:&self.objectDisplay_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "issues",
      idx:self.issues_property.ebObjectIndex,
      y:&y,
      view:view,
      observerExplorer:&self.issues_property.mObserverExplorer,
      valueExplorer:&self.issues_property.mValueExplorer
    )
    createEntryForTitle ("Transients", y:&y, view:view)
    createEntryForTitle ("ToMany Relationships", y:&y, view:view)
    createEntryForTitle ("ToOne Relationships", y:&y, view:view)
  }

  //····················································································································
  //    clearObjectExplorer
  //····················································································································

  override func clearObjectExplorer () {
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
//    ReadOnlyArrayOf_SymbolObject
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class ReadOnlyArrayOf_SymbolObject : ReadOnlyAbstractArrayProperty <SymbolObject> {

  //····················································································································
  //   Observers of 'selectionDisplay' transient property
  //····················································································································

  private var mObserversOf_selectionDisplay = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_selectionDisplay (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_selectionDisplay.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.selectionDisplay_property.addEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_selectionDisplay (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_selectionDisplay.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.selectionDisplay_property.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_selectionDisplay_toElementsOfSet (_ inSet : Set<SymbolObject>) {
    for managedObject in inSet {
      self.mObserversOf_selectionDisplay.apply ( {(_ observer : EBEvent) in
        managedObject.selectionDisplay_property.addEBObserver (observer)
      })
    }
  }

  //····················································································································

  final func removeEBObserversOf_selectionDisplay_fromElementsOfSet (_ inSet : Set<SymbolObject>) {
    for managedObject in inSet {
      self.mObserversOf_selectionDisplay.apply ( {(_ observer : EBEvent) in
        managedObject.selectionDisplay_property.removeEBObserver (observer)
      })
    }
  }

  //····················································································································
  //   Observers of 'objectDisplay' transient property
  //····················································································································

  private var mObserversOf_objectDisplay = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_objectDisplay (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_objectDisplay.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.objectDisplay_property.addEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_objectDisplay (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_objectDisplay.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.objectDisplay_property.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_objectDisplay_toElementsOfSet (_ inSet : Set<SymbolObject>) {
    for managedObject in inSet {
      self.mObserversOf_objectDisplay.apply ( {(_ observer : EBEvent) in
        managedObject.objectDisplay_property.addEBObserver (observer)
      })
    }
  }

  //····················································································································

  final func removeEBObserversOf_objectDisplay_fromElementsOfSet (_ inSet : Set<SymbolObject>) {
    for managedObject in inSet {
      self.mObserversOf_objectDisplay.apply ( {(_ observer : EBEvent) in
        managedObject.objectDisplay_property.removeEBObserver (observer)
      })
    }
  }

  //····················································································································
  //   Observers of 'issues' transient property
  //····················································································································

  private var mObserversOf_issues = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_issues (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_issues.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.issues_property.addEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_issues (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_issues.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.issues_property.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_issues_toElementsOfSet (_ inSet : Set<SymbolObject>) {
    for managedObject in inSet {
      self.mObserversOf_issues.apply ( {(_ observer : EBEvent) in
        managedObject.issues_property.addEBObserver (observer)
      })
    }
  }

  //····················································································································

  final func removeEBObserversOf_issues_fromElementsOfSet (_ inSet : Set<SymbolObject>) {
    for managedObject in inSet {
      self.mObserversOf_issues.apply ( {(_ observer : EBEvent) in
        managedObject.issues_property.removeEBObserver (observer)
      })
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    TransientArrayOf_SymbolObject
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class TransientArrayOf_SymbolObject : ReadOnlyArrayOf_SymbolObject {

  //····················································································································

  var mReadModelFunction : Optional < () -> EBSelection < [SymbolObject] > > = nil

  //····················································································································

  override var propset : Set <SymbolObject> {
    self.computeArrayAndSet ()
    return self.mSet
  }

  //····················································································································

  override var prop : EBSelection < [SymbolObject] > {
    self.computeArrayAndSet ()
    return self.mCachedValue!  
  }
 
  //····················································································································

  override var propval : [SymbolObject] {
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

  override init () {
    super.init ()
  }

  //····················································································································

  private var mSet = Set <SymbolObject> ()

  //····················································································································

  private var mCachedValue : EBSelection < [SymbolObject] >? = nil

  //····················································································································

  private func computeArrayAndSet () {
    if let unwrappedComputeFunction = self.mReadModelFunction, self.mCachedValue == nil {
      self.mCachedValue = unwrappedComputeFunction ()
      let newSet : Set <SymbolObject>
      switch self.mCachedValue! {
      case .multiple, .empty :
        newSet = Set <SymbolObject> ()
      case .single (let array) :
       newSet = Set (array)
      }
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
//    To many relationship read write: SymbolObject
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class ReadWriteArrayOf_SymbolObject : ReadOnlyArrayOf_SymbolObject {

  //····················································································································
 
  func setProp (_ value :  [SymbolObject]) { } // Abstract method
  
  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    To many relationship: SymbolObject
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class StoredArrayOf_SymbolObject : ReadWriteArrayOf_SymbolObject, EBSignatureObserverProtocol {

  //····················································································································

  var setOppositeRelationship : Optional < (_ inManagedObject : SymbolObject?) -> Void > = nil

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
      var objectArray = [SymbolObject] ()
      for dictionary in array {
        if let object = newInstanceOfEntityNamed (self.ebUndoManager, "SymbolObject") as? SymbolObject {
          object.setUpAtomicPropertiesWithDictionary (dictionary)
          objectArray.append (object)
        }
      }
      self.setProp (objectArray)
    }
  }

 //····················································································································

  private var mSet = Set <SymbolObject> ()
  private var mValue = [SymbolObject] () {
    didSet {
     // self.postEvent ()
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
          }
          self.removeEBObserversOf_selectionDisplay_fromElementsOfSet (removedObjectSet)
          self.removeEBObserversOf_objectDisplay_fromElementsOfSet (removedObjectSet)
          self.removeEBObserversOf_issues_fromElementsOfSet (removedObjectSet)
        }
       //--- Added object set
        let addedObjectSet = self.mSet.subtracting (oldSet)
        if addedObjectSet.count > 0 {
          for managedObject : SymbolObject in addedObjectSet {
            managedObject.setSignatureObserver (observer: self)
            self.setOppositeRelationship? (managedObject)
          }
          self.addEBObserversOf_selectionDisplay_toElementsOfSet (addedObjectSet)
          self.addEBObserversOf_objectDisplay_toElementsOfSet (addedObjectSet)
          self.addEBObserversOf_issues_toElementsOfSet (addedObjectSet)
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

  override var prop : EBSelection < [SymbolObject] > { return .single (self.mValue) }

  //····················································································································

  override func setProp (_ inValue : [SymbolObject]) { self.mValue = inValue }

  //····················································································································

  override var propval : [SymbolObject] { return self.mValue }

  //····················································································································

  override var propset : Set <SymbolObject> { return self.mSet }

 //····················································································································

  @objc func performUndo (_ oldValue : [SymbolObject]) {
    self.mValue = oldValue
  }

  //····················································································································

  func remove (_ object : SymbolObject) {
    if self.mSet.contains (object) {
      var array = self.mValue
      let idx = array.firstIndex (of: object)
      array.remove (at: idx!)
      self.mValue = array
    }
  }
  
  //····················································································································

  func add (_ object : SymbolObject) {
    if !self.mSet.contains (object) {
      var array = self.mValue
      array.append (object)
      self.mValue = array
    }
  }
  
  //····················································································································
  //   signature
  //····················································································································

  private weak var mSignatureObserver : EBSignatureObserverProtocol? // SOULD BE WEAK

  //····················································································································

  private var mSignatureCache : UInt32? = nil

  //····················································································································

  final func setSignatureObserver (observer : EBSignatureObserverProtocol?) {
    self.mSignatureObserver = observer
    for object in self.mValue {
      object.setSignatureObserver (observer: self)
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
