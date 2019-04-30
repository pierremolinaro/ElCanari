//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol DeviceSymbolTypeInProject_mSymbolTypeName : class {
  var mSymbolTypeName : String { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol DeviceSymbolTypeInProject_mStrokeBezierPath : class {
  var mStrokeBezierPath : NSBezierPath { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol DeviceSymbolTypeInProject_mFilledBezierPath : class {
  var mFilledBezierPath : NSBezierPath { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol DeviceSymbolTypeInProject_shape : class {
  var shape : EBShape? { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    Entity: DeviceSymbolTypeInProject
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class DeviceSymbolTypeInProject : EBManagedObject,
         DeviceSymbolTypeInProject_mSymbolTypeName,
         DeviceSymbolTypeInProject_mStrokeBezierPath,
         DeviceSymbolTypeInProject_mFilledBezierPath,
         DeviceSymbolTypeInProject_shape {

  //····················································································································
  //   Atomic property: mSymbolTypeName
  //····················································································································

  var mSymbolTypeName_property = EBStoredProperty_String (defaultValue: "")

  //····················································································································

  var mSymbolTypeName : String {
    get { return self.mSymbolTypeName_property.propval }
    set { self.mSymbolTypeName_property.setProp (newValue) }
  }

  //····················································································································

  var mSymbolTypeName_property_selection : EBSelection <String> { return self.mSymbolTypeName_property.prop }

  //····················································································································
  //   Atomic property: mStrokeBezierPath
  //····················································································································

  var mStrokeBezierPath_property = EBStoredProperty_NSBezierPath (defaultValue: NSBezierPath ())

  //····················································································································

  var mStrokeBezierPath : NSBezierPath {
    get { return self.mStrokeBezierPath_property.propval }
    set { self.mStrokeBezierPath_property.setProp (newValue) }
  }

  //····················································································································

  var mStrokeBezierPath_property_selection : EBSelection <NSBezierPath> { return self.mStrokeBezierPath_property.prop }

  //····················································································································
  //   Atomic property: mFilledBezierPath
  //····················································································································

  var mFilledBezierPath_property = EBStoredProperty_NSBezierPath (defaultValue: NSBezierPath ())

  //····················································································································

  var mFilledBezierPath : NSBezierPath {
    get { return self.mFilledBezierPath_property.propval }
    set { self.mFilledBezierPath_property.setProp (newValue) }
  }

  //····················································································································

  var mFilledBezierPath_property_selection : EBSelection <NSBezierPath> { return self.mFilledBezierPath_property.prop }

  //····················································································································
  //   Transient property: shape
  //····················································································································

  var shape_property = EBTransientProperty_EBShape ()

  //····················································································································

  var shape_property_selection : EBSelection <EBShape> {
    return self.shape_property.prop
  }

  //····················································································································

  var shape : EBShape? {
    switch self.shape_property_selection {
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
  //--- Atomic property: mSymbolTypeName
    self.mSymbolTypeName_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: mStrokeBezierPath
    self.mStrokeBezierPath_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: mFilledBezierPath
    self.mFilledBezierPath_property.ebUndoManager = self.ebUndoManager
  //--- Atomic property: shape
    self.shape_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        var kind = unwSelf.mStrokeBezierPath_property_selection.kind ()
        kind &= unwSelf.mFilledBezierPath_property_selection.kind ()
        kind &= g_Preferences!.symbolColorForSchematic_property_selection.kind ()
        switch kind {
        case .noSelectionKind :
          return .empty
        case .multipleSelectionKind :
          return .multiple
        case .singleSelectionKind :
          switch (unwSelf.mStrokeBezierPath_property_selection, unwSelf.mFilledBezierPath_property_selection, g_Preferences!.symbolColorForSchematic_property_selection) {
          case (.single (let v0), .single (let v1), .single (let v2)) :
            return .single (transient_DeviceSymbolTypeInProject_shape (v0, v1, v2))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.mStrokeBezierPath_property.addEBObserver (self.shape_property)
    self.mFilledBezierPath_property.addEBObserver (self.shape_property)
    g_Preferences?.symbolColorForSchematic_property.addEBObserver (self.shape_property)
  //--- Install undoers and opposite setter for relationships
  //--- Register properties for handling signature
  //--- Extern delegates
  }

  //····················································································································

  override internal func removeAllObservers () {
    super.removeAllObservers ()
    self.mStrokeBezierPath_property.removeEBObserver (self.shape_property)
    self.mFilledBezierPath_property.removeEBObserver (self.shape_property)
    g_Preferences?.symbolColorForSchematic_property.removeEBObserver (self.shape_property)
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
      "mSymbolTypeName",
      idx:self.mSymbolTypeName_property.ebObjectIndex,
      y:&y,
      view:view,
      observerExplorer:&self.mSymbolTypeName_property.mObserverExplorer,
      valueExplorer:&self.mSymbolTypeName_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "mStrokeBezierPath",
      idx:self.mStrokeBezierPath_property.ebObjectIndex,
      y:&y,
      view:view,
      observerExplorer:&self.mStrokeBezierPath_property.mObserverExplorer,
      valueExplorer:&self.mStrokeBezierPath_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "mFilledBezierPath",
      idx:self.mFilledBezierPath_property.ebObjectIndex,
      y:&y,
      view:view,
      observerExplorer:&self.mFilledBezierPath_property.mObserverExplorer,
      valueExplorer:&self.mFilledBezierPath_property.mValueExplorer
    )
    createEntryForTitle ("Properties", y:&y, view:view)
    createEntryForPropertyNamed (
      "shape",
      idx:self.shape_property.ebObjectIndex,
      y:&y,
      view:view,
      observerExplorer:&self.shape_property.mObserverExplorer,
      valueExplorer:&self.shape_property.mValueExplorer
    )
    createEntryForTitle ("Transients", y:&y, view:view)
    createEntryForTitle ("ToMany Relationships", y:&y, view:view)
    createEntryForTitle ("ToOne Relationships", y:&y, view:view)
  }

  //····················································································································
  //    clearObjectExplorer
  //····················································································································

  override func clearObjectExplorer () {
  //--- Atomic property: mSymbolTypeName
    self.mSymbolTypeName_property.mObserverExplorer = nil
    self.mSymbolTypeName_property.mValueExplorer = nil
  //--- Atomic property: mStrokeBezierPath
    self.mStrokeBezierPath_property.mObserverExplorer = nil
    self.mStrokeBezierPath_property.mValueExplorer = nil
  //--- Atomic property: mFilledBezierPath
    self.mFilledBezierPath_property.mObserverExplorer = nil
    self.mFilledBezierPath_property.mValueExplorer = nil
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
  //--- Atomic property: mSymbolTypeName
    self.mSymbolTypeName_property.storeIn (dictionary: ioDictionary, forKey:"mSymbolTypeName")
  //--- Atomic property: mStrokeBezierPath
    self.mStrokeBezierPath_property.storeIn (dictionary: ioDictionary, forKey:"mStrokeBezierPath")
  //--- Atomic property: mFilledBezierPath
    self.mFilledBezierPath_property.storeIn (dictionary: ioDictionary, forKey:"mFilledBezierPath")
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
  //--- Atomic property: mSymbolTypeName
    self.mSymbolTypeName_property.readFrom (dictionary: inDictionary, forKey:"mSymbolTypeName")
  //--- Atomic property: mStrokeBezierPath
    self.mStrokeBezierPath_property.readFrom (dictionary: inDictionary, forKey:"mStrokeBezierPath")
  //--- Atomic property: mFilledBezierPath
    self.mFilledBezierPath_property.readFrom (dictionary: inDictionary, forKey:"mFilledBezierPath")
  }

  //····················································································································
  //   accessibleObjects
  //····················································································································

  override func accessibleObjects (objects : inout [EBManagedObject]) {
    super.accessibleObjects (objects: &objects)
  }

  //····················································································································
  //   accessibleObjectsForSaveOperation
  //····················································································································

  override func accessibleObjectsForSaveOperation (objects : inout [EBManagedObject]) {
    super.accessibleObjectsForSaveOperation (objects: &objects)
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    ReadOnlyArrayOf_DeviceSymbolTypeInProject
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class ReadOnlyArrayOf_DeviceSymbolTypeInProject : ReadOnlyAbstractArrayProperty <DeviceSymbolTypeInProject> {

  //····················································································································
  //   Observers of 'mSymbolTypeName' stored property
  //····················································································································

  private var mObserversOf_mSymbolTypeName = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_mSymbolTypeName (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_mSymbolTypeName.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.mSymbolTypeName_property.addEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_mSymbolTypeName (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_mSymbolTypeName.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.mSymbolTypeName_property.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_mSymbolTypeName_toElementsOfSet (_ inSet : Set<DeviceSymbolTypeInProject>) {
    for managedObject in inSet {
      self.mObserversOf_mSymbolTypeName.apply { (_ observer : EBEvent) in
        managedObject.mSymbolTypeName_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_mSymbolTypeName_fromElementsOfSet (_ inSet : Set<DeviceSymbolTypeInProject>) {
    self.mObserversOf_mSymbolTypeName.apply { (_ observer : EBEvent) in
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.mSymbolTypeName_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'mStrokeBezierPath' stored property
  //····················································································································

  private var mObserversOf_mStrokeBezierPath = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_mStrokeBezierPath (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_mStrokeBezierPath.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.mStrokeBezierPath_property.addEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_mStrokeBezierPath (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_mStrokeBezierPath.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.mStrokeBezierPath_property.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_mStrokeBezierPath_toElementsOfSet (_ inSet : Set<DeviceSymbolTypeInProject>) {
    for managedObject in inSet {
      self.mObserversOf_mStrokeBezierPath.apply { (_ observer : EBEvent) in
        managedObject.mStrokeBezierPath_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_mStrokeBezierPath_fromElementsOfSet (_ inSet : Set<DeviceSymbolTypeInProject>) {
    self.mObserversOf_mStrokeBezierPath.apply { (_ observer : EBEvent) in
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.mStrokeBezierPath_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'mFilledBezierPath' stored property
  //····················································································································

  private var mObserversOf_mFilledBezierPath = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_mFilledBezierPath (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_mFilledBezierPath.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.mFilledBezierPath_property.addEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_mFilledBezierPath (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_mFilledBezierPath.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.mFilledBezierPath_property.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_mFilledBezierPath_toElementsOfSet (_ inSet : Set<DeviceSymbolTypeInProject>) {
    for managedObject in inSet {
      self.mObserversOf_mFilledBezierPath.apply { (_ observer : EBEvent) in
        managedObject.mFilledBezierPath_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_mFilledBezierPath_fromElementsOfSet (_ inSet : Set<DeviceSymbolTypeInProject>) {
    self.mObserversOf_mFilledBezierPath.apply { (_ observer : EBEvent) in
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.mFilledBezierPath_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'shape' transient property
  //····················································································································

  private var mObserversOf_shape = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_shape (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_shape.insert (inObserver)
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
    self.mObserversOf_shape.remove (inObserver)
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

  final func addEBObserversOf_shape_toElementsOfSet (_ inSet : Set<DeviceSymbolTypeInProject>) {
    for managedObject in inSet {
      self.mObserversOf_shape.apply { (_ observer : EBEvent) in
        managedObject.shape_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_shape_fromElementsOfSet (_ inSet : Set<DeviceSymbolTypeInProject>) {
    for managedObject in inSet {
      self.mObserversOf_shape.apply { (_ observer : EBEvent) in
        managedObject.shape_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    TransientArrayOf_DeviceSymbolTypeInProject
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class TransientArrayOf_DeviceSymbolTypeInProject : ReadOnlyArrayOf_DeviceSymbolTypeInProject {

  //····················································································································

  var mReadModelFunction : Optional < () -> EBSelection < [DeviceSymbolTypeInProject] > > = nil

  //····················································································································

  override var propset : Set <DeviceSymbolTypeInProject> {
    self.computeArrayAndSet ()
    return self.mSet
  }

  //····················································································································

  override var prop : EBSelection < [DeviceSymbolTypeInProject] > {
    self.computeArrayAndSet ()
    return self.mCachedValue!  
  }
 
  //····················································································································

  override var propval : [DeviceSymbolTypeInProject] {
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

  private var mSet = Set <DeviceSymbolTypeInProject> ()

  //····················································································································

  private var mCachedValue : EBSelection < [DeviceSymbolTypeInProject] >? = nil

  //····················································································································

  private func computeArrayAndSet () {
    if let unwrappedComputeFunction = self.mReadModelFunction, self.mCachedValue == nil {
      let cachedValue = unwrappedComputeFunction ()
      self.mCachedValue = cachedValue
      let newSet : Set <DeviceSymbolTypeInProject>
      switch cachedValue {
      case .multiple, .empty :
        newSet = Set <DeviceSymbolTypeInProject> ()
      case .single (let array) :
        newSet = Set (array)
      }
    //--- Removed object set
      let removedSet = self.mSet.subtracting (newSet)
    //--- Remove observers of stored properties
      self.removeEBObserversOf_mSymbolTypeName_fromElementsOfSet (removedSet)
      self.removeEBObserversOf_mStrokeBezierPath_fromElementsOfSet (removedSet)
      self.removeEBObserversOf_mFilledBezierPath_fromElementsOfSet (removedSet)
    //--- Remove observers of transient properties
      self.removeEBObserversOf_shape_fromElementsOfSet (removedSet)
    //--- Added object set
      let addedSet = newSet.subtracting (self.mSet)
     //--- Add observers of stored properties
      self.addEBObserversOf_mSymbolTypeName_toElementsOfSet (addedSet)
      self.addEBObserversOf_mStrokeBezierPath_toElementsOfSet (addedSet)
      self.addEBObserversOf_mFilledBezierPath_toElementsOfSet (addedSet)
     //--- Add observers of transient properties
      self.addEBObserversOf_shape_toElementsOfSet (addedSet)
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
//    To many relationship read write: DeviceSymbolTypeInProject
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class ReadWriteArrayOf_DeviceSymbolTypeInProject : ReadOnlyArrayOf_DeviceSymbolTypeInProject {

  //····················································································································
 
  func setProp (_ value :  [DeviceSymbolTypeInProject]) { } // Abstract method
  
  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    To many relationship: DeviceSymbolTypeInProject
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class StoredArrayOf_DeviceSymbolTypeInProject : ReadWriteArrayOf_DeviceSymbolTypeInProject, EBSignatureObserverProtocol {

  //····················································································································

  var setOppositeRelationship : Optional < (_ inManagedObject : DeviceSymbolTypeInProject) -> Void > = nil
  var resetOppositeRelationship : Optional < (_ inManagedObject : DeviceSymbolTypeInProject) -> Void > = nil

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
      var objectArray = [DeviceSymbolTypeInProject] ()
      for dictionary in array {
        if let object = newInstanceOfEntityNamed (self.ebUndoManager, "DeviceSymbolTypeInProject") as? DeviceSymbolTypeInProject {
          object.setUpAtomicPropertiesWithDictionary (dictionary)
          objectArray.append (object)
        }
      }
      self.setProp (objectArray)
    }
  }

 //····················································································································

  private var mSet = Set <DeviceSymbolTypeInProject> ()
  private var mValue = [DeviceSymbolTypeInProject] () {
    didSet {
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
            self.resetOppositeRelationship? (managedObject)
            managedObject.mSymbolTypeName_property.mSetterDelegate = nil
            managedObject.mStrokeBezierPath_property.mSetterDelegate = nil
            managedObject.mFilledBezierPath_property.mSetterDelegate = nil
          }
        //--- Remove observers of stored properties
          self.removeEBObserversOf_mSymbolTypeName_fromElementsOfSet (removedObjectSet)
          self.removeEBObserversOf_mStrokeBezierPath_fromElementsOfSet (removedObjectSet)
          self.removeEBObserversOf_mFilledBezierPath_fromElementsOfSet (removedObjectSet)
        //--- Remove observers of transient properties
          self.removeEBObserversOf_shape_fromElementsOfSet (removedObjectSet)
        }
       //--- Added object set
        let addedObjectSet = self.mSet.subtracting (oldSet)
        if addedObjectSet.count > 0 {
          for managedObject : DeviceSymbolTypeInProject in addedObjectSet {
            managedObject.setSignatureObserver (observer: self)
            self.setOppositeRelationship? (managedObject)
            managedObject.mSymbolTypeName_property.mSetterDelegate = { [weak self] inValue in self?.writeInPreferences () }
            managedObject.mStrokeBezierPath_property.mSetterDelegate = { [weak self] inValue in self?.writeInPreferences () }
            managedObject.mFilledBezierPath_property.mSetterDelegate = { [weak self] inValue in self?.writeInPreferences () }
          }
        //--- Add observers of stored properties
          self.addEBObserversOf_mSymbolTypeName_toElementsOfSet (addedObjectSet)
          self.addEBObserversOf_mStrokeBezierPath_toElementsOfSet (addedObjectSet)
          self.addEBObserversOf_mFilledBezierPath_toElementsOfSet (addedObjectSet)
        //--- Add observers of transient properties
          self.addEBObserversOf_shape_toElementsOfSet (addedObjectSet)
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

  override var prop : EBSelection < [DeviceSymbolTypeInProject] > { return .single (self.mValue) }

  //····················································································································

  override func setProp (_ inValue : [DeviceSymbolTypeInProject]) { self.mValue = inValue }

  //····················································································································

  override var propval : [DeviceSymbolTypeInProject] { return self.mValue }

  //····················································································································

  override var propset : Set <DeviceSymbolTypeInProject> { return self.mSet }

 //····················································································································

  @objc func performUndo (_ oldValue : [DeviceSymbolTypeInProject]) {
    self.mValue = oldValue
  }

  //····················································································································

  func remove (_ object : DeviceSymbolTypeInProject) {
    if self.mSet.contains (object) {
      var array = self.mValue
      let idx = array.firstIndex (of: object)
      array.remove (at: idx!)
      self.mValue = array
    }
  }
  
  //····················································································································

  func add (_ object : DeviceSymbolTypeInProject) {
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
