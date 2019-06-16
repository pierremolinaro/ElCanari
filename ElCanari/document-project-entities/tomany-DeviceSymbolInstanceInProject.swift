//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    ReadOnlyArrayOf_DeviceSymbolInstanceInProject
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class ReadOnlyArrayOf_DeviceSymbolInstanceInProject : ReadOnlyAbstractArrayProperty <DeviceSymbolInstanceInProject> {

  //····················································································································

  internal override func updateObservers (removedSet inRemovedSet : Set <DeviceSymbolInstanceInProject>, addedSet inAddedSet : Set <DeviceSymbolInstanceInProject>) {
    super.updateObservers (removedSet: inRemovedSet, addedSet: inAddedSet)
  //--- Remove observers from removed objects
    self.removeEBObserversOf_mSymbolInstanceName_fromElementsOfSet (inRemovedSet) // Stored property
    self.removeEBObserversOf_symbolAndTypeName_fromElementsOfSet (inRemovedSet) // Transient property
    self.removeEBObserversOf_symbolTypeName_fromElementsOfSet (inRemovedSet) // Transient property
    self.removeEBObserversOf_filledBezierPath_fromElementsOfSet (inRemovedSet) // Transient property
    self.removeEBObserversOf_strokeBezierPath_fromElementsOfSet (inRemovedSet) // Transient property
  //--- Add observers to added objects
    self.addEBObserversOf_mSymbolInstanceName_toElementsOfSet (inAddedSet) // Stored property
    self.addEBObserversOf_symbolAndTypeName_toElementsOfSet (inAddedSet) // Transient property
    self.addEBObserversOf_symbolTypeName_toElementsOfSet (inAddedSet) // Transient property
    self.addEBObserversOf_filledBezierPath_toElementsOfSet (inAddedSet) // Transient property
    self.addEBObserversOf_strokeBezierPath_toElementsOfSet (inAddedSet) // Transient property
  }

  //····················································································································
  //   Observers of 'mSymbolInstanceName' stored property
  //····················································································································

  private var mObserversOf_mSymbolInstanceName = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_mSymbolInstanceName (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_mSymbolInstanceName.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.mSymbolInstanceName_property.addEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_mSymbolInstanceName (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_mSymbolInstanceName.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.mSymbolInstanceName_property.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_mSymbolInstanceName_toElementsOfSet (_ inSet : Set<DeviceSymbolInstanceInProject>) {
    for managedObject in inSet {
      self.mObserversOf_mSymbolInstanceName.apply { (_ observer : EBEvent) in
        managedObject.mSymbolInstanceName_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_mSymbolInstanceName_fromElementsOfSet (_ inSet : Set<DeviceSymbolInstanceInProject>) {
    self.mObserversOf_mSymbolInstanceName.apply { (_ observer : EBEvent) in
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.mSymbolInstanceName_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'symbolAndTypeName' transient property
  //····················································································································

  private var mObserversOf_symbolAndTypeName = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_symbolAndTypeName (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_symbolAndTypeName.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.symbolAndTypeName_property.addEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_symbolAndTypeName (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_symbolAndTypeName.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.symbolAndTypeName_property.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_symbolAndTypeName_toElementsOfSet (_ inSet : Set<DeviceSymbolInstanceInProject>) {
    for managedObject in inSet {
      self.mObserversOf_symbolAndTypeName.apply { (_ observer : EBEvent) in
        managedObject.symbolAndTypeName_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_symbolAndTypeName_fromElementsOfSet (_ inSet : Set<DeviceSymbolInstanceInProject>) {
    for managedObject in inSet {
      self.mObserversOf_symbolAndTypeName.apply { (_ observer : EBEvent) in
        managedObject.symbolAndTypeName_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'symbolTypeName' transient property
  //····················································································································

  private var mObserversOf_symbolTypeName = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_symbolTypeName (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_symbolTypeName.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.symbolTypeName_property.addEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_symbolTypeName (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_symbolTypeName.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.symbolTypeName_property.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_symbolTypeName_toElementsOfSet (_ inSet : Set<DeviceSymbolInstanceInProject>) {
    for managedObject in inSet {
      self.mObserversOf_symbolTypeName.apply { (_ observer : EBEvent) in
        managedObject.symbolTypeName_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_symbolTypeName_fromElementsOfSet (_ inSet : Set<DeviceSymbolInstanceInProject>) {
    for managedObject in inSet {
      self.mObserversOf_symbolTypeName.apply { (_ observer : EBEvent) in
        managedObject.symbolTypeName_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'filledBezierPath' transient property
  //····················································································································

  private var mObserversOf_filledBezierPath = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_filledBezierPath (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_filledBezierPath.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.filledBezierPath_property.addEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_filledBezierPath (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_filledBezierPath.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.filledBezierPath_property.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_filledBezierPath_toElementsOfSet (_ inSet : Set<DeviceSymbolInstanceInProject>) {
    for managedObject in inSet {
      self.mObserversOf_filledBezierPath.apply { (_ observer : EBEvent) in
        managedObject.filledBezierPath_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_filledBezierPath_fromElementsOfSet (_ inSet : Set<DeviceSymbolInstanceInProject>) {
    for managedObject in inSet {
      self.mObserversOf_filledBezierPath.apply { (_ observer : EBEvent) in
        managedObject.filledBezierPath_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'strokeBezierPath' transient property
  //····················································································································

  private var mObserversOf_strokeBezierPath = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_strokeBezierPath (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_strokeBezierPath.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.strokeBezierPath_property.addEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_strokeBezierPath (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_strokeBezierPath.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.strokeBezierPath_property.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_strokeBezierPath_toElementsOfSet (_ inSet : Set<DeviceSymbolInstanceInProject>) {
    for managedObject in inSet {
      self.mObserversOf_strokeBezierPath.apply { (_ observer : EBEvent) in
        managedObject.strokeBezierPath_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_strokeBezierPath_fromElementsOfSet (_ inSet : Set<DeviceSymbolInstanceInProject>) {
    for managedObject in inSet {
      self.mObserversOf_strokeBezierPath.apply { (_ observer : EBEvent) in
        managedObject.strokeBezierPath_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    TransientArrayOf DeviceSymbolInstanceInProject
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class TransientArrayOf_DeviceSymbolInstanceInProject : ReadOnlyArrayOf_DeviceSymbolInstanceInProject {

  //····················································································································
  //   Sort
  //····················································································································

  private var mIsOrderedBefore : Optional < (_ left : DeviceSymbolInstanceInProject, _ right : DeviceSymbolInstanceInProject) -> Bool > = nil 
  private var mSortObserver : EBModelNotifierEvent? = nil

  //····················································································································
  //   Data provider
  //····················································································································

  private var mDataProvider : ReadOnlyArrayOf_DeviceSymbolInstanceInProject? = nil
  private var mTransientKind : PropertyKind = .empty

 
  func setDataProvider (_ inProvider : ReadOnlyArrayOf_DeviceSymbolInstanceInProject,
                        sortCallback inSortCallBack : Optional < (_ left : DeviceSymbolInstanceInProject, _ right : DeviceSymbolInstanceInProject) -> Bool >,
                        addSortObserversCallback inAddSortObserversCallback : (EBModelNotifierEvent) -> Void,
                        removeSortObserversCallback inRemoveSortObserversCallback : @escaping (EBModelNotifierEvent) -> Void) {
    if self.mDataProvider !== inProvider {
      self.mSortObserver?.removeSortObservers ()
      self.mSortObserver = nil
      self.mDataProvider?.detachClient (self)
      self.mDataProvider = inProvider
      self.mIsOrderedBefore = inSortCallBack
      self.mDataProvider?.attachClient (self)
      if inSortCallBack != nil {
        self.mSortObserver = EBModelNotifierEvent (
          self,
          addSortObserversCallback: inAddSortObserversCallback,
          removeSortObserversCallback: inRemoveSortObserversCallback
        )
      }else{
        self.mInternalArrayValue = []
      }
    }
  }

  //····················································································································

  func resetDataProvider () {
    if self.mDataProvider != nil {
      self.mSortObserver = nil
      self.mDataProvider?.detachClient (self)
      self.mDataProvider = nil
      self.mIsOrderedBefore = nil
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newArray : [DeviceSymbolInstanceInProject] 
    if let dataProvider = self.mDataProvider {
      switch dataProvider.prop {
      case .empty :
        newArray = []
        self.mTransientKind = .empty
      case .single (let v) :
        if let sortFunction = self.mIsOrderedBefore {
          newArray = v.sorted { sortFunction ($0, $1) }
        }else{
          newArray = v
        }
        self.mTransientKind = .single
       case .multiple :
        newArray = []
        self.mTransientKind = .multiple
      }
    }else{
      newArray = []
      self.mTransientKind = .empty
    }
    self.mInternalArrayValue = newArray
    super.notifyModelDidChange ()
  }

  //····················································································································

  override var prop : EBSelection < [DeviceSymbolInstanceInProject] > {
    switch self.mTransientKind {
    case .empty :
      return .empty
    case .single :
      return .single (self.mInternalArrayValue)
    case .multiple :
      return .multiple
    }
  }

  //····················································································································

  override var propval : [DeviceSymbolInstanceInProject] { return self.mInternalArrayValue }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    TransientArrayOfSuperOf DeviceSymbolInstanceInProject
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class TransientArrayOfSuperOf_DeviceSymbolInstanceInProject <SUPER : EBManagedObject> : ReadOnlyArrayOf_DeviceSymbolInstanceInProject {

  //····················································································································
  //   Data provider
  //····················································································································

  private var mDataProvider : ReadOnlyAbstractArrayProperty <SUPER>? = nil
  private var mTransientKind : PropertyKind = .empty

  //····················································································································

  func setDataProvider (_ inProvider : ReadOnlyAbstractArrayProperty <SUPER>?) {
    if self.mDataProvider !== inProvider {
      self.mDataProvider?.detachClient (self)
      self.mDataProvider = inProvider
      self.mDataProvider?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    var newModelArray : [SUPER] 
    if let dataProvider = self.mDataProvider {
      switch dataProvider.prop {
      case .empty :
        newModelArray = []
        self.mTransientKind = .empty
      case .single (let v) :
        newModelArray = v
        self.mTransientKind = .single
       case .multiple :
        newModelArray = []
        self.mTransientKind = .multiple
      }
    }else{
      newModelArray = []
      self.mTransientKind = .empty
    }
    var newArray = [DeviceSymbolInstanceInProject] ()
    for superObject in newModelArray {
      if let object = superObject as? DeviceSymbolInstanceInProject {
        newArray.append (object)
      }
    }
    self.mInternalArrayValue = newArray
    super.notifyModelDidChange ()
  }

  //····················································································································

  override var prop : EBSelection < [DeviceSymbolInstanceInProject] > {
    switch self.mTransientKind {
    case .empty :
      return .empty
    case .single :
      return .single (self.mInternalArrayValue)
    case .multiple :
      return .multiple
    }
  }

  //····················································································································

  override var propval : [DeviceSymbolInstanceInProject] { return self.mInternalArrayValue }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    To many relationship read write: DeviceSymbolInstanceInProject
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class ReadWriteArrayOf_DeviceSymbolInstanceInProject : ReadOnlyArrayOf_DeviceSymbolInstanceInProject {

  //····················································································································
 
  func setProp (_ value :  [DeviceSymbolInstanceInProject]) { } // Abstract method
  
  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    Proxy: ProxyArrayOf_DeviceSymbolInstanceInProject
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class ProxyArrayOf_DeviceSymbolInstanceInProject : ReadWriteArrayOf_DeviceSymbolInstanceInProject {

  //····················································································································

  private var mModel : ReadWriteArrayOf_DeviceSymbolInstanceInProject? = nil

  //····················································································································

  func setModel (_ inModel : ReadWriteArrayOf_DeviceSymbolInstanceInProject?) {
    if self.mModel !== inModel {
      self.mModel?.detachClient (self)
      self.mModel = inModel
      self.mModel?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newModelArray : [DeviceSymbolInstanceInProject]
    if let model = self.mModel {
      switch model.prop {
      case .empty :
        newModelArray = []
      case .single (let v) :
        newModelArray = v
       case .multiple :
        newModelArray = []
      }
    }else{
      newModelArray = []
    }
    self.mInternalArrayValue = newModelArray
    super.notifyModelDidChange ()
  }

  //····················································································································

  override func setProp (_ inArrayValue : [DeviceSymbolInstanceInProject]) {
    self.mModel?.setProp (inArrayValue)
  }

  //····················································································································

  override var prop : EBSelection < [DeviceSymbolInstanceInProject] > {
    if let model = self.mModel {
      return model.prop
    }else{
      return .empty
    }
  }

  //····················································································································

  override var propval : [DeviceSymbolInstanceInProject] {
    if let model = self.mModel {
      switch model.prop {
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

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    To many relationship: DeviceSymbolInstanceInProject
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class StoredArrayOf_DeviceSymbolInstanceInProject : ReadWriteArrayOf_DeviceSymbolInstanceInProject, EBSignatureObserverProtocol {

  //····················································································································
  //   Undo manager
  //····················································································································

  weak var ebUndoManager : EBUndoManager? = nil // SOULD BE WEAK

  //····················································································································
  //   Opposite relationship management
  //····················································································································

  private var mSetOppositeRelationship : Optional < (_ inManagedObject : DeviceSymbolInstanceInProject) -> Void > = nil
  private var mResetOppositeRelationship : Optional < (_ inManagedObject : DeviceSymbolInstanceInProject) -> Void > = nil

  //····················································································································

  func setOppositeRelationShipFunctions (setter inSetter : @escaping (_ inManagedObject : DeviceSymbolInstanceInProject) -> Void,
                                         resetter inResetter : @escaping (_ inManagedObject : DeviceSymbolInstanceInProject) -> Void) {
    self.mSetOppositeRelationship = inSetter
    self.mResetOppositeRelationship = inResetter
  }
  
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
  //  Init
  //····················································································································

  convenience init (prefKey : String) {
    self.init ()
    self.mPrefKey = prefKey
    if let array = UserDefaults.standard.array (forKey: prefKey) as? [NSDictionary] {
      var objectArray = [DeviceSymbolInstanceInProject] ()
      for dictionary in array {
        if let object = newInstanceOfEntityNamed (self.ebUndoManager, "DeviceSymbolInstanceInProject") as? DeviceSymbolInstanceInProject {
          object.setUpAtomicPropertiesWithDictionary (dictionary)
          objectArray.append (object)
        }
      }
      self.setProp (objectArray)
    }
  }

  //····················································································································
  // Model will change 
  //····················································································································

  override func notifyModelDidChangeFrom (oldValue inOldValue : [DeviceSymbolInstanceInProject]) {
  //--- Register old value in undo manager
    self.ebUndoManager?.registerUndo (withTarget: self, selector:#selector(performUndo(_:)), object: inOldValue)
  //---
    super.notifyModelDidChangeFrom (oldValue: inOldValue)
  }
 
  //····················································································································

  @objc func performUndo (_ oldValue : [DeviceSymbolInstanceInProject]) {
    self.mInternalArrayValue = oldValue
  }
 
  //····················································································································
  // Model did change 
  //····················································································································

  override func notifyModelDidChange () {
  //--- Update explorer
    if let valueExplorer = self.mValueExplorer {
      updateManagedObjectToManyRelationshipDisplay (objectArray: self.mInternalArrayValue, popUpButton: valueExplorer)
    }
  //--- Notify observers
    self.postEvent ()
    self.clearSignatureCache ()
  //--- Write in preferences ?
    self.writeInPreferences ()
  //---
    super.notifyModelDidChange ()
  }

  //····················································································································
  // Update observers 
  //····················································································································

  internal override func updateObservers (removedSet inRemovedSet : Set <DeviceSymbolInstanceInProject>, addedSet inAddedSet : Set <DeviceSymbolInstanceInProject>) {
    for managedObject in inRemovedSet {
      managedObject.setSignatureObserver (observer: nil)
      self.mResetOppositeRelationship? (managedObject)
    }
  //---
    for managedObject in inAddedSet {
      managedObject.setSignatureObserver (observer: self)
      self.mSetOppositeRelationship? (managedObject)
    }
  //---
    super.updateObservers (removedSet: inRemovedSet, addedSet: inAddedSet)
 }
 
  //····················································································································

  override var prop : EBSelection < [DeviceSymbolInstanceInProject] > { return .single (self.mInternalArrayValue) }

  //····················································································································

  override func setProp (_ inValue : [DeviceSymbolInstanceInProject]) { self.mInternalArrayValue = inValue }

  //····················································································································

  override var propval : [DeviceSymbolInstanceInProject] { return self.mInternalArrayValue }

  //····················································································································

  private func writeInPreferences () {
    if let prefKey = self.mPrefKey {
      var dictionaryArray = [NSDictionary] ()
      for object in self.mInternalArrayValue {
        let d = NSMutableDictionary ()
        object.saveIntoDictionary (d)
        d [ENTITY_KEY] = nil // Remove entity key, not used in preferences
        dictionaryArray.append (d)
      }
      UserDefaults.standard.set (dictionaryArray, forKey: prefKey)
    }
  }

  //····················································································································

  func remove (_ object : DeviceSymbolInstanceInProject) {
    if let idx = self.mInternalArrayValue.firstIndex (of: object) {
      self.mInternalArrayValue.remove (at: idx)
    }
  }
  
  //····················································································································

  func add (_ object : DeviceSymbolInstanceInProject) {
    if !self.internalSetValue.contains (object) {
      self.mInternalArrayValue.append (object)
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
    for object in self.mInternalArrayValue {
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
    for object in self.mInternalArrayValue {
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
