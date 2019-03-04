//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol DeviceDocumentation_mFileName : class {
  var mFileName : String { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol DeviceDocumentation_mFileData : class {
  var mFileData : Data { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

protocol DeviceDocumentation_fileSize : class {
  var fileSize : Int? { get }
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    Entity: DeviceDocumentation
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class DeviceDocumentation : EBManagedObject,
         DeviceDocumentation_mFileName,
         DeviceDocumentation_mFileData,
         DeviceDocumentation_fileSize {

  //····················································································································
  //   Atomic property: mFileName
  //····················································································································

  var mFileName_property = EBStoredProperty_String (defaultValue: "")

  //····················································································································

  var mFileName : String {
    get {
      return self.mFileName_property.propval
    }
    set {
      self.mFileName_property.setProp (newValue)
    }
  }

  //····················································································································

  var mFileName_property_selection : EBSelection <String> {
    return self.mFileName_property.prop
  }

  //····················································································································
  //   Atomic property: mFileData
  //····················································································································

  var mFileData_property = EBStoredProperty_Data (defaultValue: Data ())

  //····················································································································

  var mFileData : Data {
    get {
      return self.mFileData_property.propval
    }
    set {
      self.mFileData_property.setProp (newValue)
    }
  }

  //····················································································································

  var mFileData_property_selection : EBSelection <Data> {
    return self.mFileData_property.prop
  }

  //····················································································································
  //   Transient property: fileSize
  //····················································································································

  var fileSize_property = EBTransientProperty_Int ()

  //····················································································································

  var fileSize_property_selection : EBSelection <Int> {
    return self.fileSize_property.prop
  }

  //····················································································································

  var fileSize : Int? {
    switch self.fileSize_property_selection {
    case .empty, .multiple :
      return nil
    case .single (let v) :
      return v
    }
  }

  //····················································································································
  //    init
  //····················································································································

  required init (_ undoManager : EBUndoManager?, file: String, _ line : Int) {
    super.init (undoManager, file: file, line)
  //--- Atomic property: mFileName
    self.mFileName_property.undoManager = self.undoManager
  //--- Atomic property: mFileData
    self.mFileData_property.undoManager = self.undoManager
  //--- Atomic property: fileSize
    self.fileSize_property.mReadModelFunction = { [weak self] in
      if let unwSelf = self {
        let kind = unwSelf.mFileData_property_selection.kind ()
        switch kind {
        case .noSelectionKind :
          return .empty
        case .multipleSelectionKind :
          return .multiple
        case .singleSelectionKind :
          switch (unwSelf.mFileData_property_selection) {
          case (.single (let v0)) :
            return .single (transient_DeviceDocumentation_fileSize (v0))
          default :
            return .empty
          }
        }
      }else{
        return .empty
      }
    }
    self.mFileData_property.addEBObserver (self.fileSize_property)
  //--- Install undoers and opposite setter for relationships
  //--- register properties for handling signature
    self.mFileData_property.setSignatureObserver (observer:self)
    self.mFileName_property.setSignatureObserver (observer:self)
  //--- Extern delegates
  }

  //····················································································································

  override func removeAllObservers () {
    super.removeAllObservers ()
    self.mFileData_property.removeEBObserver (self.fileSize_property)
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
      "mFileName",
      idx:self.mFileName_property.ebObjectIndex,
      y:&y,
      view:view,
      observerExplorer:&self.mFileName_property.mObserverExplorer,
      valueExplorer:&self.mFileName_property.mValueExplorer
    )
    createEntryForPropertyNamed (
      "mFileData",
      idx:self.mFileData_property.ebObjectIndex,
      y:&y,
      view:view,
      observerExplorer:&self.mFileData_property.mObserverExplorer,
      valueExplorer:&self.mFileData_property.mValueExplorer
    )
    createEntryForTitle ("Properties", y:&y, view:view)
    createEntryForPropertyNamed (
      "fileSize",
      idx:self.fileSize_property.ebObjectIndex,
      y:&y,
      view:view,
      observerExplorer:&self.fileSize_property.mObserverExplorer,
      valueExplorer:&self.fileSize_property.mValueExplorer
    )
    createEntryForTitle ("Transients", y:&y, view:view)
    createEntryForTitle ("ToMany Relationships", y:&y, view:view)
    createEntryForTitle ("ToOne Relationships", y:&y, view:view)
  }

  //····················································································································
  //    clearObjectExplorer
  //····················································································································

  override func clearObjectExplorer () {
  //--- Atomic property: mFileName
    self.mFileName_property.mObserverExplorer = nil
    self.mFileName_property.mValueExplorer = nil
  //--- Atomic property: mFileData
    self.mFileData_property.mObserverExplorer = nil
    self.mFileData_property.mValueExplorer = nil
  //---
    super.clearObjectExplorer ()
  }

  //····················································································································
  //    cleanUpToManyRelationships
  //····················································································································

  override func cleanUpToManyRelationships () {
  //---
    super.cleanUpToManyRelationships ()
  }

  //····················································································································
  //    cleanUpToOneRelationships
  //····················································································································

  override func cleanUpToOneRelationships () {
  //---
    super.cleanUpToOneRelationships ()
  }

  //····················································································································
  //    saveIntoDictionary
  //····················································································································

  override func saveIntoDictionary (_ ioDictionary : NSMutableDictionary) {
    super.saveIntoDictionary (ioDictionary)
  //--- Atomic property: mFileName
    self.mFileName_property.storeIn (dictionary: ioDictionary, forKey:"mFileName")
  //--- Atomic property: mFileData
    self.mFileData_property.storeIn (dictionary: ioDictionary, forKey:"mFileData")
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
  //--- Atomic property: mFileName
    self.mFileName_property.readFrom (dictionary: inDictionary, forKey:"mFileName")
  //--- Atomic property: mFileData
    self.mFileData_property.readFrom (dictionary: inDictionary, forKey:"mFileData")
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
    crc.accumulateUInt32 (self.mFileData_property.signature ())
    crc.accumulateUInt32 (self.mFileName_property.signature ())
    return crc
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    ReadOnlyArrayOf_DeviceDocumentation
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class ReadOnlyArrayOf_DeviceDocumentation : ReadOnlyAbstractArrayProperty <DeviceDocumentation> {

  //····················································································································
  //   Observers of 'mFileName' stored property
  //····················································································································

  private var mObserversOf_mFileName = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_mFileName (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_mFileName.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.mFileName_property.addEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_mFileName (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_mFileName.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.mFileName_property.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_mFileName_toElementsOfSet (_ inSet : Set<DeviceDocumentation>) {
    for managedObject in inSet {
      self.mObserversOf_mFileName.apply ( {(_ observer : EBEvent) in
        managedObject.mFileName_property.addEBObserver (observer)
      })
    }
  }

  //····················································································································

  final func removeEBObserversOf_mFileName_fromElementsOfSet (_ inSet : Set<DeviceDocumentation>) {
    self.mObserversOf_mFileName.apply ( {(_ observer : EBEvent) in
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.mFileName_property.removeEBObserver (observer)
      }
    })
  }

  //····················································································································
  //   Observers of 'mFileData' stored property
  //····················································································································

  private var mObserversOf_mFileData = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_mFileData (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_mFileData.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.mFileData_property.addEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_mFileData (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_mFileData.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.mFileData_property.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_mFileData_toElementsOfSet (_ inSet : Set<DeviceDocumentation>) {
    for managedObject in inSet {
      self.mObserversOf_mFileData.apply ( {(_ observer : EBEvent) in
        managedObject.mFileData_property.addEBObserver (observer)
      })
    }
  }

  //····················································································································

  final func removeEBObserversOf_mFileData_fromElementsOfSet (_ inSet : Set<DeviceDocumentation>) {
    self.mObserversOf_mFileData.apply ( {(_ observer : EBEvent) in
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.mFileData_property.removeEBObserver (observer)
      }
    })
  }

  //····················································································································
  //   Observers of 'fileSize' transient property
  //····················································································································

  private var mObserversOf_fileSize = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_fileSize (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_fileSize.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.fileSize_property.addEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_fileSize (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_fileSize.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.fileSize_property.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_fileSize_toElementsOfSet (_ inSet : Set<DeviceDocumentation>) {
    for managedObject in inSet {
      self.mObserversOf_fileSize.apply ( {(_ observer : EBEvent) in
        managedObject.fileSize_property.addEBObserver (observer)
      })
    }
  }

  //····················································································································

  final func removeEBObserversOf_fileSize_fromElementsOfSet (_ inSet : Set<DeviceDocumentation>) {
    for managedObject in inSet {
      self.mObserversOf_fileSize.apply ( {(_ observer : EBEvent) in
        managedObject.fileSize_property.removeEBObserver (observer)
      })
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    TransientArrayOf_DeviceDocumentation
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class TransientArrayOf_DeviceDocumentation : ReadOnlyArrayOf_DeviceDocumentation {

  //····················································································································

  var mReadModelFunction : Optional < () -> EBSelection < [DeviceDocumentation] > > = nil

  //····················································································································

  override var propset : Set <DeviceDocumentation> {
    self.computeArrayAndSet ()
    return self.mSet
  }

  //····················································································································

  override var prop : EBSelection < [DeviceDocumentation] > {
    self.computeArrayAndSet ()
    return self.mCachedValue!  
  }
 
  //····················································································································

  override var propval : [DeviceDocumentation] {
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

  private var mSet = Set <DeviceDocumentation> ()

  //····················································································································

  private var mCachedValue : EBSelection < [DeviceDocumentation] >? = nil

  //····················································································································

  private func computeArrayAndSet () {
    if let unwrappedComputeFunction = self.mReadModelFunction, self.mCachedValue == nil {
      self.mCachedValue = unwrappedComputeFunction ()
      let newSet : Set <DeviceDocumentation>
      switch self.mCachedValue! {
      case .multiple, .empty :
        newSet = Set <DeviceDocumentation> ()
      case .single (let array) :
       newSet = Set (array)
      }
    //--- Removed object set
      let removedSet = self.mSet.subtracting (newSet)
    //--- Remove observers of stored properties
      self.removeEBObserversOf_mFileName_fromElementsOfSet (removedSet)
      self.removeEBObserversOf_mFileData_fromElementsOfSet (removedSet)
    //--- Remove observers of transient properties
      self.removeEBObserversOf_fileSize_fromElementsOfSet (removedSet)
    //--- Added object set
      let addedSet = newSet.subtracting (self.mSet)
     //--- Add observers of stored properties
      self.addEBObserversOf_mFileName_toElementsOfSet (addedSet)
      self.addEBObserversOf_mFileData_toElementsOfSet (addedSet)
     //--- Add observers of transient properties
      self.addEBObserversOf_fileSize_toElementsOfSet (addedSet)
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
//    To many relationship read write: DeviceDocumentation
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class ReadWriteArrayOf_DeviceDocumentation : ReadOnlyArrayOf_DeviceDocumentation {

  //····················································································································
 
  func setProp (_ value :  [DeviceDocumentation]) { } // Abstract method
  
  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    To many relationship: DeviceDocumentation
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class StoredArrayOf_DeviceDocumentation : ReadWriteArrayOf_DeviceDocumentation, EBSignatureObserverProtocol {

  //····················································································································

  var setOppositeRelationship : Optional < (_ inManagedObject : DeviceDocumentation?) -> Void > = nil

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
      var objectArray = [DeviceDocumentation] ()
      for dictionary in array {
        if let object = newInstanceOfEntityNamed (self.undoManager, "DeviceDocumentation") as? DeviceDocumentation {
          object.setUpAtomicPropertiesWithDictionary (dictionary)
          objectArray.append (object)
        }
      }
      self.setProp (objectArray)
    }
  }

 //····················································································································

  private var mSet = Set <DeviceDocumentation> ()
  private var mValue = [DeviceDocumentation] () {
    didSet {
      self.postEvent ()
      if oldValue != self.mValue {
        let oldSet = self.mSet
        self.mSet = Set (self.mValue)
      //--- Register old value in undo manager
        self.undoManager?.registerUndo (withTarget: self, selector:#selector(performUndo(_:)), object:oldValue)
      //--- Update explorer
        if let valueExplorer = self.mValueExplorer {
          updateManagedObjectToManyRelationshipDisplay (objectArray: self.mValue, popUpButton: valueExplorer)
        }
      //--- Removed object set
        let removedObjectSet = oldSet.subtracting (self.mSet)
        for managedObject in removedObjectSet {
          managedObject.setSignatureObserver (observer: nil)
          self.setOppositeRelationship? (nil)
          managedObject.mFileName_property.mSetterDelegate = nil
          managedObject.mFileData_property.mSetterDelegate = nil
        }
        self.removeEBObserversOf_mFileName_fromElementsOfSet (removedObjectSet)
        self.removeEBObserversOf_mFileData_fromElementsOfSet (removedObjectSet)
        self.removeEBObserversOf_fileSize_fromElementsOfSet (removedObjectSet)
      //--- Added object set
        let addedObjectSet = self.mSet.subtracting (oldSet)
        for managedObject : DeviceDocumentation in addedObjectSet {
          managedObject.setSignatureObserver (observer: self)
          self.setOppositeRelationship? (managedObject)
          managedObject.mFileName_property.mSetterDelegate = { [weak self] inValue in self?.writeInPreferences () }
          managedObject.mFileData_property.mSetterDelegate = { [weak self] inValue in self?.writeInPreferences () }
        }
        self.addEBObserversOf_mFileName_toElementsOfSet (addedObjectSet)
        self.addEBObserversOf_mFileData_toElementsOfSet (addedObjectSet)
        self.addEBObserversOf_fileSize_toElementsOfSet (addedObjectSet)
      //--- Notify observers
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
        d [kEntityKey] = nil // Remove entity key, not used in preferences
        dictionaryArray.append (d)
      }
      UserDefaults.standard.set (dictionaryArray, forKey: prefKey)
    }
  }

  //····················································································································

  override var prop : EBSelection < [DeviceDocumentation] > { return .single (self.mValue) }

  //····················································································································

  override func setProp (_ inValue : [DeviceDocumentation]) { self.mValue = inValue }

  //····················································································································

  override var propval : [DeviceDocumentation] { return self.mValue }

  //····················································································································

  override var propset : Set <DeviceDocumentation> { return self.mSet }

 //····················································································································

  @objc func performUndo (_ oldValue : [DeviceDocumentation]) {
    self.mValue = oldValue
  }

  //····················································································································

  func remove (_ object : DeviceDocumentation) {
    if self.mSet.contains (object) {
      var array = self.mValue
      let idx = array.firstIndex (of: object)
      array.remove (at: idx!)
      self.mValue = array
    }
  }
  
  //····················································································································

  func add (_ object : DeviceDocumentation) {
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
