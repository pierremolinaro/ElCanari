//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    ReadOnlyArrayOf_DeviceMasterPadInProject
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class ReadOnlyArrayOf_DeviceMasterPadInProject : ReadOnlyAbstractArrayProperty <DeviceMasterPadInProject> {

  //····················································································································

  internal override func updateObservers (removedSet inRemovedSet : Set <DeviceMasterPadInProject>, addedSet inAddedSet : Set <DeviceMasterPadInProject>) {
    super.updateObservers (removedSet: inRemovedSet, addedSet: inAddedSet)
  //--- Remove observers from removed objects
    self.removeEBObserversOf_mCenterX_fromElementsOfSet (inRemovedSet) // Stored property
    self.removeEBObserversOf_mCenterY_fromElementsOfSet (inRemovedSet) // Stored property
    self.removeEBObserversOf_mWidth_fromElementsOfSet (inRemovedSet) // Stored property
    self.removeEBObserversOf_mHeight_fromElementsOfSet (inRemovedSet) // Stored property
    self.removeEBObserversOf_mHoleDiameter_fromElementsOfSet (inRemovedSet) // Stored property
    self.removeEBObserversOf_mShape_fromElementsOfSet (inRemovedSet) // Stored property
    self.removeEBObserversOf_mStyle_fromElementsOfSet (inRemovedSet) // Stored property
    self.removeEBObserversOf_mName_fromElementsOfSet (inRemovedSet) // Stored property
  //--- Add observers to added objects
    self.addEBObserversOf_mCenterX_toElementsOfSet (inAddedSet) // Stored property
    self.addEBObserversOf_mCenterY_toElementsOfSet (inAddedSet) // Stored property
    self.addEBObserversOf_mWidth_toElementsOfSet (inAddedSet) // Stored property
    self.addEBObserversOf_mHeight_toElementsOfSet (inAddedSet) // Stored property
    self.addEBObserversOf_mHoleDiameter_toElementsOfSet (inAddedSet) // Stored property
    self.addEBObserversOf_mShape_toElementsOfSet (inAddedSet) // Stored property
    self.addEBObserversOf_mStyle_toElementsOfSet (inAddedSet) // Stored property
    self.addEBObserversOf_mName_toElementsOfSet (inAddedSet) // Stored property
  }

  //····················································································································
  //   Observers of 'mCenterX' stored property
  //····················································································································

  private var mObserversOf_mCenterX = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_mCenterX (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_mCenterX.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.mCenterX_property.addEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_mCenterX (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_mCenterX.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.mCenterX_property.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_mCenterX_toElementsOfSet (_ inSet : Set<DeviceMasterPadInProject>) {
    for managedObject in inSet {
      self.mObserversOf_mCenterX.apply { (_ observer : EBEvent) in
        managedObject.mCenterX_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_mCenterX_fromElementsOfSet (_ inSet : Set<DeviceMasterPadInProject>) {
    self.mObserversOf_mCenterX.apply { (_ observer : EBEvent) in
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.mCenterX_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'mCenterY' stored property
  //····················································································································

  private var mObserversOf_mCenterY = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_mCenterY (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_mCenterY.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.mCenterY_property.addEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_mCenterY (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_mCenterY.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.mCenterY_property.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_mCenterY_toElementsOfSet (_ inSet : Set<DeviceMasterPadInProject>) {
    for managedObject in inSet {
      self.mObserversOf_mCenterY.apply { (_ observer : EBEvent) in
        managedObject.mCenterY_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_mCenterY_fromElementsOfSet (_ inSet : Set<DeviceMasterPadInProject>) {
    self.mObserversOf_mCenterY.apply { (_ observer : EBEvent) in
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.mCenterY_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'mWidth' stored property
  //····················································································································

  private var mObserversOf_mWidth = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_mWidth (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_mWidth.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.mWidth_property.addEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_mWidth (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_mWidth.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.mWidth_property.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_mWidth_toElementsOfSet (_ inSet : Set<DeviceMasterPadInProject>) {
    for managedObject in inSet {
      self.mObserversOf_mWidth.apply { (_ observer : EBEvent) in
        managedObject.mWidth_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_mWidth_fromElementsOfSet (_ inSet : Set<DeviceMasterPadInProject>) {
    self.mObserversOf_mWidth.apply { (_ observer : EBEvent) in
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.mWidth_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'mHeight' stored property
  //····················································································································

  private var mObserversOf_mHeight = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_mHeight (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_mHeight.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.mHeight_property.addEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_mHeight (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_mHeight.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.mHeight_property.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_mHeight_toElementsOfSet (_ inSet : Set<DeviceMasterPadInProject>) {
    for managedObject in inSet {
      self.mObserversOf_mHeight.apply { (_ observer : EBEvent) in
        managedObject.mHeight_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_mHeight_fromElementsOfSet (_ inSet : Set<DeviceMasterPadInProject>) {
    self.mObserversOf_mHeight.apply { (_ observer : EBEvent) in
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.mHeight_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'mHoleDiameter' stored property
  //····················································································································

  private var mObserversOf_mHoleDiameter = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_mHoleDiameter (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_mHoleDiameter.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.mHoleDiameter_property.addEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_mHoleDiameter (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_mHoleDiameter.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.mHoleDiameter_property.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_mHoleDiameter_toElementsOfSet (_ inSet : Set<DeviceMasterPadInProject>) {
    for managedObject in inSet {
      self.mObserversOf_mHoleDiameter.apply { (_ observer : EBEvent) in
        managedObject.mHoleDiameter_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_mHoleDiameter_fromElementsOfSet (_ inSet : Set<DeviceMasterPadInProject>) {
    self.mObserversOf_mHoleDiameter.apply { (_ observer : EBEvent) in
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.mHoleDiameter_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'mShape' stored property
  //····················································································································

  private var mObserversOf_mShape = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_mShape (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_mShape.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.mShape_property.addEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_mShape (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_mShape.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.mShape_property.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_mShape_toElementsOfSet (_ inSet : Set<DeviceMasterPadInProject>) {
    for managedObject in inSet {
      self.mObserversOf_mShape.apply { (_ observer : EBEvent) in
        managedObject.mShape_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_mShape_fromElementsOfSet (_ inSet : Set<DeviceMasterPadInProject>) {
    self.mObserversOf_mShape.apply { (_ observer : EBEvent) in
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.mShape_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'mStyle' stored property
  //····················································································································

  private var mObserversOf_mStyle = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_mStyle (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_mStyle.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.mStyle_property.addEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_mStyle (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_mStyle.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.mStyle_property.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_mStyle_toElementsOfSet (_ inSet : Set<DeviceMasterPadInProject>) {
    for managedObject in inSet {
      self.mObserversOf_mStyle.apply { (_ observer : EBEvent) in
        managedObject.mStyle_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_mStyle_fromElementsOfSet (_ inSet : Set<DeviceMasterPadInProject>) {
    self.mObserversOf_mStyle.apply { (_ observer : EBEvent) in
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.mStyle_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'mName' stored property
  //····················································································································

  private var mObserversOf_mName = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_mName (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_mName.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.mName_property.addEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_mName (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_mName.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.mName_property.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_mName_toElementsOfSet (_ inSet : Set<DeviceMasterPadInProject>) {
    for managedObject in inSet {
      self.mObserversOf_mName.apply { (_ observer : EBEvent) in
        managedObject.mName_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_mName_fromElementsOfSet (_ inSet : Set<DeviceMasterPadInProject>) {
    self.mObserversOf_mName.apply { (_ observer : EBEvent) in
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.mName_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    TransientArrayOf DeviceMasterPadInProject
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class TransientArrayOf_DeviceMasterPadInProject : ReadOnlyArrayOf_DeviceMasterPadInProject {

  //····················································································································
  //   Data provider
  //····················································································································

  private var mDataProvider : ReadOnlyArrayOf_DeviceMasterPadInProject? = nil
  private var mTransientKind : PropertyKind = .empty

  //····················································································································

  func setDataProvider (_ inProvider : ReadOnlyArrayOf_DeviceMasterPadInProject?) {
    if self.mDataProvider !== inProvider {
      self.mDataProvider?.detachClient (self)
      self.mDataProvider = inProvider
      self.mDataProvider?.attachClient (self)
      if inProvider == nil {
        self.mInternalArrayValue = []
      }
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newArray : [DeviceMasterPadInProject] 
    if let dataProvider = self.mDataProvider {
      switch dataProvider.prop {
      case .empty :
        newArray = []
        self.mTransientKind = .empty
      case .single (let v) :
        newArray = v
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

  override var prop : EBSelection < [DeviceMasterPadInProject] > {
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

  override var propval : [DeviceMasterPadInProject] { return self.mInternalArrayValue }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    TransientArrayOfSuperOf DeviceMasterPadInProject
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class TransientArrayOfSuperOf_DeviceMasterPadInProject <SUPER : EBManagedObject> : ReadOnlyArrayOf_DeviceMasterPadInProject {

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
    var newArray = [DeviceMasterPadInProject] ()
    for superObject in newModelArray {
      if let object = superObject as? DeviceMasterPadInProject {
        newArray.append (object)
      }
    }
    self.mInternalArrayValue = newArray
    super.notifyModelDidChange ()
  }

  //····················································································································

  override var prop : EBSelection < [DeviceMasterPadInProject] > {
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

  override var propval : [DeviceMasterPadInProject] { return self.mInternalArrayValue }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    To many relationship read write: DeviceMasterPadInProject
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class ReadWriteArrayOf_DeviceMasterPadInProject : ReadOnlyArrayOf_DeviceMasterPadInProject {

  //····················································································································
 
  func setProp (_ value :  [DeviceMasterPadInProject]) { } // Abstract method
  
  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    Proxy: ProxyArrayOf_DeviceMasterPadInProject
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class ProxyArrayOf_DeviceMasterPadInProject : ReadWriteArrayOf_DeviceMasterPadInProject {

  //····················································································································

  private var mModel : ReadWriteArrayOf_DeviceMasterPadInProject? = nil

  //····················································································································

  func setModel (_ inModel : ReadWriteArrayOf_DeviceMasterPadInProject?) {
    if self.mModel !== inModel {
      self.mModel?.detachClient (self)
      self.mModel = inModel
      self.mModel?.attachClient (self)
      /* if inModel == nil {
        self.mInternalArrayValue = []
      } */
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newModelArray : [DeviceMasterPadInProject]
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

  override func setProp (_ inArrayValue : [DeviceMasterPadInProject]) {
    self.mModel?.setProp (inArrayValue)
  }

  //····················································································································

  override var prop : EBSelection < [DeviceMasterPadInProject] > {
    if let model = self.mModel {
      return model.prop
    }else{
      return .empty
    }
  }

  //····················································································································

  override var propval : [DeviceMasterPadInProject] {
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
//    To many relationship: DeviceMasterPadInProject
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class StoredArrayOf_DeviceMasterPadInProject : ReadWriteArrayOf_DeviceMasterPadInProject, EBSignatureObserverProtocol {

  //····················································································································
  //   Undo manager
  //····················································································································

  weak var ebUndoManager : EBUndoManager? = nil // SOULD BE WEAK

  //····················································································································
  //   Opposite relationship management
  //····················································································································

  private var mSetOppositeRelationship : Optional < (_ inManagedObject : DeviceMasterPadInProject) -> Void > = nil
  private var mResetOppositeRelationship : Optional < (_ inManagedObject : DeviceMasterPadInProject) -> Void > = nil

  //····················································································································

  func setOppositeRelationShipFunctions (setter inSetter : @escaping (_ inManagedObject : DeviceMasterPadInProject) -> Void,
                                         resetter inResetter : @escaping (_ inManagedObject : DeviceMasterPadInProject) -> Void) {
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
      var objectArray = [DeviceMasterPadInProject] ()
      for dictionary in array {
        if let object = newInstanceOfEntityNamed (self.ebUndoManager, "DeviceMasterPadInProject") as? DeviceMasterPadInProject {
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

  override func notifyModelDidChangeFrom (oldValue inOldValue : [DeviceMasterPadInProject]) {
  //--- Register old value in undo manager
    self.ebUndoManager?.registerUndo (withTarget: self, selector:#selector(performUndo(_:)), object: inOldValue)
  //---
    super.notifyModelDidChangeFrom (oldValue: inOldValue)
  }
 
  //····················································································································

  @objc func performUndo (_ oldValue : [DeviceMasterPadInProject]) {
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

  internal override func updateObservers (removedSet inRemovedSet : Set <DeviceMasterPadInProject>, addedSet inAddedSet : Set <DeviceMasterPadInProject>) {
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

  override var prop : EBSelection < [DeviceMasterPadInProject] > { return .single (self.mInternalArrayValue) }

  //····················································································································

  override func setProp (_ inValue : [DeviceMasterPadInProject]) { self.mInternalArrayValue = inValue }

  //····················································································································

  override var propval : [DeviceMasterPadInProject] { return self.mInternalArrayValue }

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

  func remove (_ object : DeviceMasterPadInProject) {
    if let idx = self.mInternalArrayValue.firstIndex (of: object) {
      self.mInternalArrayValue.remove (at: idx)
    }
  }
  
  //····················································································································

  func add (_ object : DeviceMasterPadInProject) {
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

