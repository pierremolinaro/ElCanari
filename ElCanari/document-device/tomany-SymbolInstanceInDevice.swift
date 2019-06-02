//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    ReadOnlyArrayOf_SymbolInstanceInDevice
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class ReadOnlyArrayOf_SymbolInstanceInDevice : ReadOnlyAbstractArrayProperty <SymbolInstanceInDevice> {

  //····················································································································

  internal override func updateObservers (removedSet inRemovedSet : Set <SymbolInstanceInDevice>, addedSet inAddedSet : Set <SymbolInstanceInDevice>) {
    super.updateObservers (removedSet: inRemovedSet, addedSet: inAddedSet)
  //--- Remove observers from removed objects
    self.removeEBObserversOf_mInstanceName_fromElementsOfSet (inRemovedSet) // Stored property
    self.removeEBObserversOf_mX_fromElementsOfSet (inRemovedSet) // Stored property
    self.removeEBObserversOf_mY_fromElementsOfSet (inRemovedSet) // Stored property
    self.removeEBObserversOf_symbolQualifiedName_fromElementsOfSet (inRemovedSet) // Transient property
    self.removeEBObserversOf_symbolTypeName_fromElementsOfSet (inRemovedSet) // Transient property
    self.removeEBObserversOf_selectionDisplay_fromElementsOfSet (inRemovedSet) // Transient property
    self.removeEBObserversOf_unconnectedPins_fromElementsOfSet (inRemovedSet) // Transient property
    self.removeEBObserversOf_objectDisplay_fromElementsOfSet (inRemovedSet) // Transient property
  //--- Add observers to added objects
    self.addEBObserversOf_mInstanceName_toElementsOfSet (inAddedSet) // Stored property
    self.addEBObserversOf_mX_toElementsOfSet (inAddedSet) // Stored property
    self.addEBObserversOf_mY_toElementsOfSet (inAddedSet) // Stored property
    self.addEBObserversOf_symbolQualifiedName_toElementsOfSet (inAddedSet) // Transient property
    self.addEBObserversOf_symbolTypeName_toElementsOfSet (inAddedSet) // Transient property
    self.addEBObserversOf_selectionDisplay_toElementsOfSet (inAddedSet) // Transient property
    self.addEBObserversOf_unconnectedPins_toElementsOfSet (inAddedSet) // Transient property
    self.addEBObserversOf_objectDisplay_toElementsOfSet (inAddedSet) // Transient property
  }

  //····················································································································
  //   Observers of 'mInstanceName' stored property
  //····················································································································

  private var mObserversOf_mInstanceName = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_mInstanceName (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_mInstanceName.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.mInstanceName_property.addEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_mInstanceName (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_mInstanceName.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.mInstanceName_property.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_mInstanceName_toElementsOfSet (_ inSet : Set<SymbolInstanceInDevice>) {
    for managedObject in inSet {
      self.mObserversOf_mInstanceName.apply { (_ observer : EBEvent) in
        managedObject.mInstanceName_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_mInstanceName_fromElementsOfSet (_ inSet : Set<SymbolInstanceInDevice>) {
    self.mObserversOf_mInstanceName.apply { (_ observer : EBEvent) in
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.mInstanceName_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'mX' stored property
  //····················································································································

  private var mObserversOf_mX = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_mX (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_mX.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.mX_property.addEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_mX (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_mX.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.mX_property.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_mX_toElementsOfSet (_ inSet : Set<SymbolInstanceInDevice>) {
    for managedObject in inSet {
      self.mObserversOf_mX.apply { (_ observer : EBEvent) in
        managedObject.mX_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_mX_fromElementsOfSet (_ inSet : Set<SymbolInstanceInDevice>) {
    self.mObserversOf_mX.apply { (_ observer : EBEvent) in
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.mX_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'mY' stored property
  //····················································································································

  private var mObserversOf_mY = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_mY (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_mY.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.mY_property.addEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_mY (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_mY.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.mY_property.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_mY_toElementsOfSet (_ inSet : Set<SymbolInstanceInDevice>) {
    for managedObject in inSet {
      self.mObserversOf_mY.apply { (_ observer : EBEvent) in
        managedObject.mY_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_mY_fromElementsOfSet (_ inSet : Set<SymbolInstanceInDevice>) {
    self.mObserversOf_mY.apply { (_ observer : EBEvent) in
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.mY_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'symbolQualifiedName' transient property
  //····················································································································

  private var mObserversOf_symbolQualifiedName = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_symbolQualifiedName (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_symbolQualifiedName.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.symbolQualifiedName_property.addEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_symbolQualifiedName (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_symbolQualifiedName.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.symbolQualifiedName_property.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_symbolQualifiedName_toElementsOfSet (_ inSet : Set<SymbolInstanceInDevice>) {
    for managedObject in inSet {
      self.mObserversOf_symbolQualifiedName.apply { (_ observer : EBEvent) in
        managedObject.symbolQualifiedName_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_symbolQualifiedName_fromElementsOfSet (_ inSet : Set<SymbolInstanceInDevice>) {
    for managedObject in inSet {
      self.mObserversOf_symbolQualifiedName.apply { (_ observer : EBEvent) in
        managedObject.symbolQualifiedName_property.removeEBObserver (observer)
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

  final func addEBObserversOf_symbolTypeName_toElementsOfSet (_ inSet : Set<SymbolInstanceInDevice>) {
    for managedObject in inSet {
      self.mObserversOf_symbolTypeName.apply { (_ observer : EBEvent) in
        managedObject.symbolTypeName_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_symbolTypeName_fromElementsOfSet (_ inSet : Set<SymbolInstanceInDevice>) {
    for managedObject in inSet {
      self.mObserversOf_symbolTypeName.apply { (_ observer : EBEvent) in
        managedObject.symbolTypeName_property.removeEBObserver (observer)
      }
    }
  }

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

  final func addEBObserversOf_selectionDisplay_toElementsOfSet (_ inSet : Set<SymbolInstanceInDevice>) {
    for managedObject in inSet {
      self.mObserversOf_selectionDisplay.apply { (_ observer : EBEvent) in
        managedObject.selectionDisplay_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_selectionDisplay_fromElementsOfSet (_ inSet : Set<SymbolInstanceInDevice>) {
    for managedObject in inSet {
      self.mObserversOf_selectionDisplay.apply { (_ observer : EBEvent) in
        managedObject.selectionDisplay_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'unconnectedPins' transient property
  //····················································································································

  private var mObserversOf_unconnectedPins = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_unconnectedPins (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_unconnectedPins.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.unconnectedPins_property.addEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_unconnectedPins (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_unconnectedPins.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.unconnectedPins_property.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_unconnectedPins_toElementsOfSet (_ inSet : Set<SymbolInstanceInDevice>) {
    for managedObject in inSet {
      self.mObserversOf_unconnectedPins.apply { (_ observer : EBEvent) in
        managedObject.unconnectedPins_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_unconnectedPins_fromElementsOfSet (_ inSet : Set<SymbolInstanceInDevice>) {
    for managedObject in inSet {
      self.mObserversOf_unconnectedPins.apply { (_ observer : EBEvent) in
        managedObject.unconnectedPins_property.removeEBObserver (observer)
      }
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

  final func addEBObserversOf_objectDisplay_toElementsOfSet (_ inSet : Set<SymbolInstanceInDevice>) {
    for managedObject in inSet {
      self.mObserversOf_objectDisplay.apply { (_ observer : EBEvent) in
        managedObject.objectDisplay_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_objectDisplay_fromElementsOfSet (_ inSet : Set<SymbolInstanceInDevice>) {
    for managedObject in inSet {
      self.mObserversOf_objectDisplay.apply { (_ observer : EBEvent) in
        managedObject.objectDisplay_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    TransientArrayOf SymbolInstanceInDevice
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class TransientArrayOf_SymbolInstanceInDevice : ReadOnlyArrayOf_SymbolInstanceInDevice {

  //····················································································································
  //   Sort
  //····················································································································

  private var mIsOrderedBefore : Optional < (_ left : SymbolInstanceInDevice, _ right : SymbolInstanceInDevice) -> Bool > = nil 
  private var mSortObserver : EBModelNotifierEvent? = nil

  //····················································································································
  //   Data provider
  //····················································································································

  private var mDataProvider : ReadOnlyArrayOf_SymbolInstanceInDevice? = nil
  private var mTransientKind : PropertyKind = .empty

 
  func setDataProvider (_ inProvider : ReadOnlyArrayOf_SymbolInstanceInDevice,
                        sortCallback inSortCallBack : Optional < (_ left : SymbolInstanceInDevice, _ right : SymbolInstanceInDevice) -> Bool >,
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
    let newArray : [SymbolInstanceInDevice] 
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

  override var prop : EBSelection < [SymbolInstanceInDevice] > {
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

  override var propval : [SymbolInstanceInDevice] { return self.mInternalArrayValue }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    TransientArrayOfSuperOf SymbolInstanceInDevice
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class TransientArrayOfSuperOf_SymbolInstanceInDevice <SUPER : EBManagedObject> : ReadOnlyArrayOf_SymbolInstanceInDevice {

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
    var newArray = [SymbolInstanceInDevice] ()
    for superObject in newModelArray {
      if let object = superObject as? SymbolInstanceInDevice {
        newArray.append (object)
      }
    }
    self.mInternalArrayValue = newArray
    super.notifyModelDidChange ()
  }

  //····················································································································

  override var prop : EBSelection < [SymbolInstanceInDevice] > {
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

  override var propval : [SymbolInstanceInDevice] { return self.mInternalArrayValue }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    To many relationship read write: SymbolInstanceInDevice
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class ReadWriteArrayOf_SymbolInstanceInDevice : ReadOnlyArrayOf_SymbolInstanceInDevice {

  //····················································································································
 
  func setProp (_ value :  [SymbolInstanceInDevice]) { } // Abstract method
  
  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    Proxy: ProxyArrayOf_SymbolInstanceInDevice
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class ProxyArrayOf_SymbolInstanceInDevice : ReadWriteArrayOf_SymbolInstanceInDevice {

  //····················································································································

  private var mModel : ReadWriteArrayOf_SymbolInstanceInDevice? = nil

  //····················································································································

  func setModel (_ inModel : ReadWriteArrayOf_SymbolInstanceInDevice?) {
    if self.mModel !== inModel {
      self.mModel?.detachClient (self)
      self.mModel = inModel
      self.mModel?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newModelArray : [SymbolInstanceInDevice]
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

  override func setProp (_ inArrayValue : [SymbolInstanceInDevice]) {
    self.mModel?.setProp (inArrayValue)
  }

  //····················································································································

  override var prop : EBSelection < [SymbolInstanceInDevice] > {
    if let model = self.mModel {
      return model.prop
    }else{
      return .empty
    }
  }

  //····················································································································

  override var propval : [SymbolInstanceInDevice] {
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
//    To many relationship: SymbolInstanceInDevice
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class StoredArrayOf_SymbolInstanceInDevice : ReadWriteArrayOf_SymbolInstanceInDevice, EBSignatureObserverProtocol {

  //····················································································································
  //   Undo manager
  //····················································································································

  weak var ebUndoManager : EBUndoManager? = nil // SOULD BE WEAK

  //····················································································································
  //   Opposite relationship management
  //····················································································································

  private var mSetOppositeRelationship : Optional < (_ inManagedObject : SymbolInstanceInDevice) -> Void > = nil
  private var mResetOppositeRelationship : Optional < (_ inManagedObject : SymbolInstanceInDevice) -> Void > = nil

  //····················································································································

  func setOppositeRelationShipFunctions (setter inSetter : @escaping (_ inManagedObject : SymbolInstanceInDevice) -> Void,
                                         resetter inResetter : @escaping (_ inManagedObject : SymbolInstanceInDevice) -> Void) {
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
      var objectArray = [SymbolInstanceInDevice] ()
      for dictionary in array {
        if let object = newInstanceOfEntityNamed (self.ebUndoManager, "SymbolInstanceInDevice") as? SymbolInstanceInDevice {
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

  override func notifyModelDidChangeFrom (oldValue inOldValue : [SymbolInstanceInDevice]) {
  //--- Register old value in undo manager
    self.ebUndoManager?.registerUndo (withTarget: self, selector:#selector(performUndo(_:)), object: inOldValue)
  //---
    super.notifyModelDidChangeFrom (oldValue: inOldValue)
  }
 
  //····················································································································

  @objc func performUndo (_ oldValue : [SymbolInstanceInDevice]) {
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

  internal override func updateObservers (removedSet inRemovedSet : Set <SymbolInstanceInDevice>, addedSet inAddedSet : Set <SymbolInstanceInDevice>) {
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

  override var prop : EBSelection < [SymbolInstanceInDevice] > { return .single (self.mInternalArrayValue) }

  //····················································································································

  override func setProp (_ inValue : [SymbolInstanceInDevice]) { self.mInternalArrayValue = inValue }

  //····················································································································

  override var propval : [SymbolInstanceInDevice] { return self.mInternalArrayValue }

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

  func remove (_ object : SymbolInstanceInDevice) {
    if let idx = self.mInternalArrayValue.firstIndex (of: object) {
      self.mInternalArrayValue.remove (at: idx)
    }
  }
  
  //····················································································································

  func add (_ object : SymbolInstanceInDevice) {
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

