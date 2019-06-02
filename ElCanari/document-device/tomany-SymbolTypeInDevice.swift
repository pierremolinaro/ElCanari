//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    ReadOnlyArrayOf_SymbolTypeInDevice
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class ReadOnlyArrayOf_SymbolTypeInDevice : ReadOnlyAbstractArrayProperty <SymbolTypeInDevice> {

  //····················································································································

  internal override func updateObservers (removedSet inRemovedSet : Set <SymbolTypeInDevice>, addedSet inAddedSet : Set <SymbolTypeInDevice>) {
    super.updateObservers (removedSet: inRemovedSet, addedSet: inAddedSet)
  //--- Remove observers from removed objects
    self.removeEBObserversOf_mTypeName_fromElementsOfSet (inRemovedSet) // Stored property
    self.removeEBObserversOf_mVersion_fromElementsOfSet (inRemovedSet) // Stored property
    self.removeEBObserversOf_mFileData_fromElementsOfSet (inRemovedSet) // Stored property
    self.removeEBObserversOf_mStrokeBezierPath_fromElementsOfSet (inRemovedSet) // Stored property
    self.removeEBObserversOf_mFilledBezierPath_fromElementsOfSet (inRemovedSet) // Stored property
    self.removeEBObserversOf_versionString_fromElementsOfSet (inRemovedSet) // Transient property
    self.removeEBObserversOf_instanceCount_fromElementsOfSet (inRemovedSet) // Transient property
    self.removeEBObserversOf_pinNameShape_fromElementsOfSet (inRemovedSet) // Transient property
  //--- Add observers to added objects
    self.addEBObserversOf_mTypeName_toElementsOfSet (inAddedSet) // Stored property
    self.addEBObserversOf_mVersion_toElementsOfSet (inAddedSet) // Stored property
    self.addEBObserversOf_mFileData_toElementsOfSet (inAddedSet) // Stored property
    self.addEBObserversOf_mStrokeBezierPath_toElementsOfSet (inAddedSet) // Stored property
    self.addEBObserversOf_mFilledBezierPath_toElementsOfSet (inAddedSet) // Stored property
    self.addEBObserversOf_versionString_toElementsOfSet (inAddedSet) // Transient property
    self.addEBObserversOf_instanceCount_toElementsOfSet (inAddedSet) // Transient property
    self.addEBObserversOf_pinNameShape_toElementsOfSet (inAddedSet) // Transient property
  }

  //····················································································································
  //   Observers of 'mTypeName' stored property
  //····················································································································

  private var mObserversOf_mTypeName = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_mTypeName (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_mTypeName.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.mTypeName_property.addEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_mTypeName (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_mTypeName.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.mTypeName_property.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_mTypeName_toElementsOfSet (_ inSet : Set<SymbolTypeInDevice>) {
    for managedObject in inSet {
      self.mObserversOf_mTypeName.apply { (_ observer : EBEvent) in
        managedObject.mTypeName_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_mTypeName_fromElementsOfSet (_ inSet : Set<SymbolTypeInDevice>) {
    self.mObserversOf_mTypeName.apply { (_ observer : EBEvent) in
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.mTypeName_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'mVersion' stored property
  //····················································································································

  private var mObserversOf_mVersion = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_mVersion (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_mVersion.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.mVersion_property.addEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_mVersion (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_mVersion.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.mVersion_property.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_mVersion_toElementsOfSet (_ inSet : Set<SymbolTypeInDevice>) {
    for managedObject in inSet {
      self.mObserversOf_mVersion.apply { (_ observer : EBEvent) in
        managedObject.mVersion_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_mVersion_fromElementsOfSet (_ inSet : Set<SymbolTypeInDevice>) {
    self.mObserversOf_mVersion.apply { (_ observer : EBEvent) in
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.mVersion_property.removeEBObserver (observer)
      }
    }
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

  final func addEBObserversOf_mFileData_toElementsOfSet (_ inSet : Set<SymbolTypeInDevice>) {
    for managedObject in inSet {
      self.mObserversOf_mFileData.apply { (_ observer : EBEvent) in
        managedObject.mFileData_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_mFileData_fromElementsOfSet (_ inSet : Set<SymbolTypeInDevice>) {
    self.mObserversOf_mFileData.apply { (_ observer : EBEvent) in
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.mFileData_property.removeEBObserver (observer)
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

  final func addEBObserversOf_mStrokeBezierPath_toElementsOfSet (_ inSet : Set<SymbolTypeInDevice>) {
    for managedObject in inSet {
      self.mObserversOf_mStrokeBezierPath.apply { (_ observer : EBEvent) in
        managedObject.mStrokeBezierPath_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_mStrokeBezierPath_fromElementsOfSet (_ inSet : Set<SymbolTypeInDevice>) {
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

  final func addEBObserversOf_mFilledBezierPath_toElementsOfSet (_ inSet : Set<SymbolTypeInDevice>) {
    for managedObject in inSet {
      self.mObserversOf_mFilledBezierPath.apply { (_ observer : EBEvent) in
        managedObject.mFilledBezierPath_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_mFilledBezierPath_fromElementsOfSet (_ inSet : Set<SymbolTypeInDevice>) {
    self.mObserversOf_mFilledBezierPath.apply { (_ observer : EBEvent) in
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.mFilledBezierPath_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'versionString' transient property
  //····················································································································

  private var mObserversOf_versionString = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_versionString (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_versionString.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.versionString_property.addEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_versionString (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_versionString.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.versionString_property.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_versionString_toElementsOfSet (_ inSet : Set<SymbolTypeInDevice>) {
    for managedObject in inSet {
      self.mObserversOf_versionString.apply { (_ observer : EBEvent) in
        managedObject.versionString_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_versionString_fromElementsOfSet (_ inSet : Set<SymbolTypeInDevice>) {
    for managedObject in inSet {
      self.mObserversOf_versionString.apply { (_ observer : EBEvent) in
        managedObject.versionString_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'instanceCount' transient property
  //····················································································································

  private var mObserversOf_instanceCount = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_instanceCount (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_instanceCount.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.instanceCount_property.addEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_instanceCount (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_instanceCount.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.instanceCount_property.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_instanceCount_toElementsOfSet (_ inSet : Set<SymbolTypeInDevice>) {
    for managedObject in inSet {
      self.mObserversOf_instanceCount.apply { (_ observer : EBEvent) in
        managedObject.instanceCount_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_instanceCount_fromElementsOfSet (_ inSet : Set<SymbolTypeInDevice>) {
    for managedObject in inSet {
      self.mObserversOf_instanceCount.apply { (_ observer : EBEvent) in
        managedObject.instanceCount_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'pinNameShape' transient property
  //····················································································································

  private var mObserversOf_pinNameShape = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_pinNameShape (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_pinNameShape.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.pinNameShape_property.addEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_pinNameShape (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_pinNameShape.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.pinNameShape_property.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_pinNameShape_toElementsOfSet (_ inSet : Set<SymbolTypeInDevice>) {
    for managedObject in inSet {
      self.mObserversOf_pinNameShape.apply { (_ observer : EBEvent) in
        managedObject.pinNameShape_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_pinNameShape_fromElementsOfSet (_ inSet : Set<SymbolTypeInDevice>) {
    for managedObject in inSet {
      self.mObserversOf_pinNameShape.apply { (_ observer : EBEvent) in
        managedObject.pinNameShape_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    TransientArrayOf SymbolTypeInDevice
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class TransientArrayOf_SymbolTypeInDevice : ReadOnlyArrayOf_SymbolTypeInDevice {

  //····················································································································
  //   Sort
  //····················································································································

  private var mIsOrderedBefore : Optional < (_ left : SymbolTypeInDevice, _ right : SymbolTypeInDevice) -> Bool > = nil 
  private var mSortObserver : EBModelNotifierEvent? = nil

  //····················································································································
  //   Data provider
  //····················································································································

  private var mDataProvider : ReadOnlyArrayOf_SymbolTypeInDevice? = nil
  private var mTransientKind : PropertyKind = .empty

 
  func setDataProvider (_ inProvider : ReadOnlyArrayOf_SymbolTypeInDevice,
                        sortCallback inSortCallBack : Optional < (_ left : SymbolTypeInDevice, _ right : SymbolTypeInDevice) -> Bool >,
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
    let newArray : [SymbolTypeInDevice] 
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

  override var prop : EBSelection < [SymbolTypeInDevice] > {
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

  override var propval : [SymbolTypeInDevice] { return self.mInternalArrayValue }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    TransientArrayOfSuperOf SymbolTypeInDevice
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class TransientArrayOfSuperOf_SymbolTypeInDevice <SUPER : EBManagedObject> : ReadOnlyArrayOf_SymbolTypeInDevice {

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
    var newArray = [SymbolTypeInDevice] ()
    for superObject in newModelArray {
      if let object = superObject as? SymbolTypeInDevice {
        newArray.append (object)
      }
    }
    self.mInternalArrayValue = newArray
    super.notifyModelDidChange ()
  }

  //····················································································································

  override var prop : EBSelection < [SymbolTypeInDevice] > {
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

  override var propval : [SymbolTypeInDevice] { return self.mInternalArrayValue }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    To many relationship read write: SymbolTypeInDevice
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class ReadWriteArrayOf_SymbolTypeInDevice : ReadOnlyArrayOf_SymbolTypeInDevice {

  //····················································································································
 
  func setProp (_ value :  [SymbolTypeInDevice]) { } // Abstract method
  
  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    Proxy: ProxyArrayOf_SymbolTypeInDevice
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class ProxyArrayOf_SymbolTypeInDevice : ReadWriteArrayOf_SymbolTypeInDevice {

  //····················································································································

  private var mModel : ReadWriteArrayOf_SymbolTypeInDevice? = nil

  //····················································································································

  func setModel (_ inModel : ReadWriteArrayOf_SymbolTypeInDevice?) {
    if self.mModel !== inModel {
      self.mModel?.detachClient (self)
      self.mModel = inModel
      self.mModel?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newModelArray : [SymbolTypeInDevice]
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

  override func setProp (_ inArrayValue : [SymbolTypeInDevice]) {
    self.mModel?.setProp (inArrayValue)
  }

  //····················································································································

  override var prop : EBSelection < [SymbolTypeInDevice] > {
    if let model = self.mModel {
      return model.prop
    }else{
      return .empty
    }
  }

  //····················································································································

  override var propval : [SymbolTypeInDevice] {
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
//    To many relationship: SymbolTypeInDevice
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class StoredArrayOf_SymbolTypeInDevice : ReadWriteArrayOf_SymbolTypeInDevice, EBSignatureObserverProtocol {

  //····················································································································
  //   Undo manager
  //····················································································································

  weak var ebUndoManager : EBUndoManager? = nil // SOULD BE WEAK

  //····················································································································
  //   Opposite relationship management
  //····················································································································

  private var mSetOppositeRelationship : Optional < (_ inManagedObject : SymbolTypeInDevice) -> Void > = nil
  private var mResetOppositeRelationship : Optional < (_ inManagedObject : SymbolTypeInDevice) -> Void > = nil

  //····················································································································

  func setOppositeRelationShipFunctions (setter inSetter : @escaping (_ inManagedObject : SymbolTypeInDevice) -> Void,
                                         resetter inResetter : @escaping (_ inManagedObject : SymbolTypeInDevice) -> Void) {
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
      var objectArray = [SymbolTypeInDevice] ()
      for dictionary in array {
        if let object = newInstanceOfEntityNamed (self.ebUndoManager, "SymbolTypeInDevice") as? SymbolTypeInDevice {
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

  override func notifyModelDidChangeFrom (oldValue inOldValue : [SymbolTypeInDevice]) {
  //--- Register old value in undo manager
    self.ebUndoManager?.registerUndo (withTarget: self, selector:#selector(performUndo(_:)), object: inOldValue)
  //---
    super.notifyModelDidChangeFrom (oldValue: inOldValue)
  }
 
  //····················································································································

  @objc func performUndo (_ oldValue : [SymbolTypeInDevice]) {
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

  internal override func updateObservers (removedSet inRemovedSet : Set <SymbolTypeInDevice>, addedSet inAddedSet : Set <SymbolTypeInDevice>) {
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

  override var prop : EBSelection < [SymbolTypeInDevice] > { return .single (self.mInternalArrayValue) }

  //····················································································································

  override func setProp (_ inValue : [SymbolTypeInDevice]) { self.mInternalArrayValue = inValue }

  //····················································································································

  override var propval : [SymbolTypeInDevice] { return self.mInternalArrayValue }

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

  func remove (_ object : SymbolTypeInDevice) {
    if let idx = self.mInternalArrayValue.firstIndex (of: object) {
      self.mInternalArrayValue.remove (at: idx)
    }
  }
  
  //····················································································································

  func add (_ object : SymbolTypeInDevice) {
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

