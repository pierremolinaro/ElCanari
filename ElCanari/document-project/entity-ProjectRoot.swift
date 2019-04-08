//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol ProjectRoot_mSelectedPageIndex : class {
  var mSelectedPageIndex : Int { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    Entity: ProjectRoot
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class ProjectRoot : EBManagedObject,
         ProjectRoot_mSelectedPageIndex {

  //····················································································································
  //   Atomic property: mSelectedPageIndex
  //····················································································································

  var mSelectedPageIndex_property = EBStoredProperty_Int (defaultValue: 0)

  //····················································································································

  var mSelectedPageIndex : Int {
    get { return self.mSelectedPageIndex_property.propval }
    set { self.mSelectedPageIndex_property.setProp (newValue) }
  }

  //····················································································································

  var mSelectedPageIndex_property_selection : EBSelection <Int> { return self.mSelectedPageIndex_property.prop }

  //····················································································································
  //   To many property: mComponents
  //····················································································································

  var mComponents_property = StoredArrayOf_ComponentInProject ()

  //····················································································································

  var mComponents_property_selection : EBSelection < [ComponentInProject] > {
    return self.mComponents_property.prop
  }

  //····················································································································

  var mComponents : [ComponentInProject] {
    get { return self.mComponents_property.propval }
    set { self.mComponents_property.setProp (newValue) }
  }

  //····················································································································
  //   To many property: mFonts
  //····················································································································

  var mFonts_property = StoredArrayOf_FontInProject ()

  //····················································································································

  var mFonts_property_selection : EBSelection < [FontInProject] > {
    return self.mFonts_property.prop
  }

  //····················································································································

  var mFonts : [FontInProject] {
    get { return self.mFonts_property.propval }
    set { self.mFonts_property.setProp (newValue) }
  }

  //····················································································································
  //   To many property: mDevices
  //····················································································································

  var mDevices_property = StoredArrayOf_DeviceInProject ()

  //····················································································································

  var mDevices_property_selection : EBSelection < [DeviceInProject] > {
    return self.mDevices_property.prop
  }

  //····················································································································

  var mDevices : [DeviceInProject] {
    get { return self.mDevices_property.propval }
    set { self.mDevices_property.setProp (newValue) }
  }

  //····················································································································
  //    init
  //····················································································································

  required init (_ ebUndoManager : EBUndoManager?) {
    super.init (ebUndoManager)
  //--- Atomic property: mSelectedPageIndex
    self.mSelectedPageIndex_property.ebUndoManager = self.ebUndoManager
  //--- To many property: mComponents (no option)
    self.mComponents_property.ebUndoManager = self.ebUndoManager
  //--- To many property: mFonts (no option)
    self.mFonts_property.ebUndoManager = self.ebUndoManager
  //--- To many property: mDevices (no option)
    self.mDevices_property.ebUndoManager = self.ebUndoManager
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
      "mSelectedPageIndex",
      idx:self.mSelectedPageIndex_property.ebObjectIndex,
      y:&y,
      view:view,
      observerExplorer:&self.mSelectedPageIndex_property.mObserverExplorer,
      valueExplorer:&self.mSelectedPageIndex_property.mValueExplorer
    )
    createEntryForTitle ("Properties", y:&y, view:view)
    createEntryForTitle ("Transients", y:&y, view:view)
    createEntryForToManyRelationshipNamed (
      "mComponents",
      idx:mComponents_property.ebObjectIndex,
      y: &y,
      view: view,
      valueExplorer:&mComponents_property.mValueExplorer
    )
    createEntryForToManyRelationshipNamed (
      "mFonts",
      idx:mFonts_property.ebObjectIndex,
      y: &y,
      view: view,
      valueExplorer:&mFonts_property.mValueExplorer
    )
    createEntryForToManyRelationshipNamed (
      "mDevices",
      idx:mDevices_property.ebObjectIndex,
      y: &y,
      view: view,
      valueExplorer:&mDevices_property.mValueExplorer
    )
    createEntryForTitle ("ToMany Relationships", y:&y, view:view)
    createEntryForTitle ("ToOne Relationships", y:&y, view:view)
  }

  //····················································································································
  //    clearObjectExplorer
  //····················································································································

  override func clearObjectExplorer () {
  //--- Atomic property: mSelectedPageIndex
    self.mSelectedPageIndex_property.mObserverExplorer = nil
    self.mSelectedPageIndex_property.mValueExplorer = nil
  //--- To many property: mComponents
    self.mComponents_property.mValueExplorer = nil
  //--- To many property: mFonts
    self.mFonts_property.mValueExplorer = nil
  //--- To many property: mDevices
    self.mDevices_property.mValueExplorer = nil
  //---
    super.clearObjectExplorer ()
  }

  //····················································································································
  //    cleanUpToManyRelationships
  //····················································································································

  override internal func cleanUpToManyRelationships () {
    self.mComponents_property.setProp ([])
    self.mFonts_property.setProp ([])
    self.mDevices_property.setProp ([])
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
  //--- Atomic property: mSelectedPageIndex
    self.mSelectedPageIndex_property.storeIn (dictionary: ioDictionary, forKey:"mSelectedPageIndex")
  //--- To many property: mComponents
    self.store (
      managedObjectArray: self.mComponents_property.propval,
      relationshipName: "mComponents",
      intoDictionary: ioDictionary
    )
  //--- To many property: mFonts
    self.store (
      managedObjectArray: self.mFonts_property.propval,
      relationshipName: "mFonts",
      intoDictionary: ioDictionary
    )
  //--- To many property: mDevices
    self.store (
      managedObjectArray: self.mDevices_property.propval,
      relationshipName: "mDevices",
      intoDictionary: ioDictionary
    )
  }

  //····················································································································
  //    setUpWithDictionary
  //····················································································································

  override func setUpWithDictionary (_ inDictionary : NSDictionary,
                                     managedObjectArray : inout [EBManagedObject]) {
    super.setUpWithDictionary (inDictionary, managedObjectArray:&managedObjectArray)
  //--- To many property: mComponents
    self.mComponents_property.setProp (readEntityArrayFromDictionary (
      inRelationshipName: "mComponents",
      inDictionary: inDictionary,
      managedObjectArray: &managedObjectArray
    ) as! [ComponentInProject])
  //--- To many property: mFonts
    self.mFonts_property.setProp (readEntityArrayFromDictionary (
      inRelationshipName: "mFonts",
      inDictionary: inDictionary,
      managedObjectArray: &managedObjectArray
    ) as! [FontInProject])
  //--- To many property: mDevices
    self.mDevices_property.setProp (readEntityArrayFromDictionary (
      inRelationshipName: "mDevices",
      inDictionary: inDictionary,
      managedObjectArray: &managedObjectArray
    ) as! [DeviceInProject])
  }

  //····················································································································
  //    setUpAtomicPropertiesWithDictionary
  //····················································································································

  override func setUpAtomicPropertiesWithDictionary (_ inDictionary : NSDictionary) {
    super.setUpAtomicPropertiesWithDictionary (inDictionary)
  //--- Atomic property: mSelectedPageIndex
    self.mSelectedPageIndex_property.readFrom (dictionary: inDictionary, forKey:"mSelectedPageIndex")
  }

  //····················································································································
  //   accessibleObjects
  //····················································································································

  override func accessibleObjects (objects : inout [EBManagedObject]) {
    super.accessibleObjects (objects: &objects)
  //--- To many property: mComponents
    for managedObject in self.mComponents_property.propval {
      objects.append (managedObject)
    }
  //--- To many property: mFonts
    for managedObject in self.mFonts_property.propval {
      objects.append (managedObject)
    }
  //--- To many property: mDevices
    for managedObject in self.mDevices_property.propval {
      objects.append (managedObject)
    }
  }

  //····················································································································
  //   accessibleObjectsForSaveOperation
  //····················································································································

  override func accessibleObjectsForSaveOperation (objects : inout [EBManagedObject]) {
    super.accessibleObjectsForSaveOperation (objects: &objects)
  //--- To many property: mComponents
    for managedObject in self.mComponents_property.propval {
      objects.append (managedObject)
    }
  //--- To many property: mFonts
    for managedObject in self.mFonts_property.propval {
      objects.append (managedObject)
    }
  //--- To many property: mDevices
    for managedObject in self.mDevices_property.propval {
      objects.append (managedObject)
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    ReadOnlyArrayOf_ProjectRoot
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class ReadOnlyArrayOf_ProjectRoot : ReadOnlyAbstractArrayProperty <ProjectRoot> {

  //····················································································································
  //   Observers of 'mSelectedPageIndex' stored property
  //····················································································································

  private var mObserversOf_mSelectedPageIndex = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_mSelectedPageIndex (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_mSelectedPageIndex.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.mSelectedPageIndex_property.addEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_mSelectedPageIndex (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_mSelectedPageIndex.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.mSelectedPageIndex_property.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_mSelectedPageIndex_toElementsOfSet (_ inSet : Set<ProjectRoot>) {
    for managedObject in inSet {
      self.mObserversOf_mSelectedPageIndex.apply ( {(_ observer : EBEvent) in
        managedObject.mSelectedPageIndex_property.addEBObserver (observer)
      })
    }
  }

  //····················································································································

  final func removeEBObserversOf_mSelectedPageIndex_fromElementsOfSet (_ inSet : Set<ProjectRoot>) {
    self.mObserversOf_mSelectedPageIndex.apply ( {(_ observer : EBEvent) in
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.mSelectedPageIndex_property.removeEBObserver (observer)
      }
    })
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    TransientArrayOf_ProjectRoot
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class TransientArrayOf_ProjectRoot : ReadOnlyArrayOf_ProjectRoot {

  //····················································································································

  var mReadModelFunction : Optional < () -> EBSelection < [ProjectRoot] > > = nil

  //····················································································································

  override var propset : Set <ProjectRoot> {
    self.computeArrayAndSet ()
    return self.mSet
  }

  //····················································································································

  override var prop : EBSelection < [ProjectRoot] > {
    self.computeArrayAndSet ()
    return self.mCachedValue!  
  }
 
  //····················································································································

  override var propval : [ProjectRoot] {
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

  private var mSet = Set <ProjectRoot> ()

  //····················································································································

  private var mCachedValue : EBSelection < [ProjectRoot] >? = nil

  //····················································································································

  private func computeArrayAndSet () {
    if let unwrappedComputeFunction = self.mReadModelFunction, self.mCachedValue == nil {
      self.mCachedValue = unwrappedComputeFunction ()
      let newSet : Set <ProjectRoot>
      switch self.mCachedValue! {
      case .multiple, .empty :
        newSet = Set <ProjectRoot> ()
      case .single (let array) :
       newSet = Set (array)
      }
    //--- Removed object set
      let removedSet = self.mSet.subtracting (newSet)
    //--- Remove observers of stored properties
      self.removeEBObserversOf_mSelectedPageIndex_fromElementsOfSet (removedSet)
    //--- Remove observers of transient properties
    //--- Added object set
      let addedSet = newSet.subtracting (self.mSet)
     //--- Add observers of stored properties
      self.addEBObserversOf_mSelectedPageIndex_toElementsOfSet (addedSet)
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
//    To many relationship read write: ProjectRoot
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class ReadWriteArrayOf_ProjectRoot : ReadOnlyArrayOf_ProjectRoot {

  //····················································································································
 
  func setProp (_ value :  [ProjectRoot]) { } // Abstract method
  
  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    To many relationship: ProjectRoot
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class StoredArrayOf_ProjectRoot : ReadWriteArrayOf_ProjectRoot, EBSignatureObserverProtocol {

  //····················································································································

  var setOppositeRelationship : Optional < (_ inManagedObject : ProjectRoot?) -> Void > = nil

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
      var objectArray = [ProjectRoot] ()
      for dictionary in array {
        if let object = newInstanceOfEntityNamed (self.ebUndoManager, "ProjectRoot") as? ProjectRoot {
          object.setUpAtomicPropertiesWithDictionary (dictionary)
          objectArray.append (object)
        }
      }
      self.setProp (objectArray)
    }
  }

 //····················································································································

  private var mSet = Set <ProjectRoot> ()
  private var mValue = [ProjectRoot] () {
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
            managedObject.mSelectedPageIndex_property.mSetterDelegate = nil
          }
          self.removeEBObserversOf_mSelectedPageIndex_fromElementsOfSet (removedObjectSet)
        }
       //--- Added object set
        let addedObjectSet = self.mSet.subtracting (oldSet)
        if addedObjectSet.count > 0 {
          for managedObject : ProjectRoot in addedObjectSet {
            managedObject.setSignatureObserver (observer: self)
            self.setOppositeRelationship? (managedObject)
            managedObject.mSelectedPageIndex_property.mSetterDelegate = { [weak self] inValue in self?.writeInPreferences () }
          }
          self.addEBObserversOf_mSelectedPageIndex_toElementsOfSet (addedObjectSet)
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

  override var prop : EBSelection < [ProjectRoot] > { return .single (self.mValue) }

  //····················································································································

  override func setProp (_ inValue : [ProjectRoot]) { self.mValue = inValue }

  //····················································································································

  override var propval : [ProjectRoot] { return self.mValue }

  //····················································································································

  override var propset : Set <ProjectRoot> { return self.mSet }

 //····················································································································

  @objc func performUndo (_ oldValue : [ProjectRoot]) {
    self.mValue = oldValue
  }

  //····················································································································

  func remove (_ object : ProjectRoot) {
    if self.mSet.contains (object) {
      var array = self.mValue
      let idx = array.firstIndex (of: object)
      array.remove (at: idx!)
      self.mValue = array
    }
  }
  
  //····················································································································

  func add (_ object : ProjectRoot) {
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
