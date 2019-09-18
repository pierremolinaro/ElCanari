//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    ReadOnlyArrayOf_SheetInProject
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class ReadOnlyArrayOf_SheetInProject : ReadOnlyAbstractArrayProperty <SheetInProject> {

  //····················································································································

  internal override func updateObservers (removedSet inRemovedSet : Set <SheetInProject>, addedSet inAddedSet : Set <SheetInProject>) {
    super.updateObservers (removedSet: inRemovedSet, addedSet: inAddedSet)
  //--- Remove observers from removed objects
    self.removeEBObserversOf_mSheetTitle_fromElementsOfSet (inRemovedSet) // Stored property
    self.removeEBObserversOf_issues_fromElementsOfSet (inRemovedSet) // Transient property
    self.removeEBObserversOf_connectedPoints_fromElementsOfSet (inRemovedSet) // Transient property
    self.removeEBObserversOf_connexionWarnings_fromElementsOfSet (inRemovedSet) // Transient property
    self.removeEBObserversOf_connexionErrors_fromElementsOfSet (inRemovedSet) // Transient property
    self.removeEBObserversOf_sheetDescriptor_fromElementsOfSet (inRemovedSet) // Transient property
  //--- Add observers to added objects
    self.addEBObserversOf_mSheetTitle_toElementsOfSet (inAddedSet) // Stored property
    self.addEBObserversOf_issues_toElementsOfSet (inAddedSet) // Transient property
    self.addEBObserversOf_connectedPoints_toElementsOfSet (inAddedSet) // Transient property
    self.addEBObserversOf_connexionWarnings_toElementsOfSet (inAddedSet) // Transient property
    self.addEBObserversOf_connexionErrors_toElementsOfSet (inAddedSet) // Transient property
    self.addEBObserversOf_sheetDescriptor_toElementsOfSet (inAddedSet) // Transient property
  }

  //····················································································································
  //   Observers of 'mSheetTitle' stored property
  //····················································································································

  private var mObserversOf_mSheetTitle = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_mSheetTitle (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_mSheetTitle.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.mSheetTitle_property.addEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_mSheetTitle (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_mSheetTitle.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.mSheetTitle_property.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_mSheetTitle_toElementsOfSet (_ inSet : Set<SheetInProject>) {
    for managedObject in inSet {
      self.mObserversOf_mSheetTitle.apply { (_ observer : EBEvent) in
        managedObject.mSheetTitle_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_mSheetTitle_fromElementsOfSet (_ inSet : Set<SheetInProject>) {
    self.mObserversOf_mSheetTitle.apply { (_ observer : EBEvent) in
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.mSheetTitle_property.removeEBObserver (observer)
      }
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

  final func addEBObserversOf_issues_toElementsOfSet (_ inSet : Set<SheetInProject>) {
    for managedObject in inSet {
      self.mObserversOf_issues.apply { (_ observer : EBEvent) in
        managedObject.issues_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_issues_fromElementsOfSet (_ inSet : Set<SheetInProject>) {
    for managedObject in inSet {
      self.mObserversOf_issues.apply { (_ observer : EBEvent) in
        managedObject.issues_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'connectedPoints' transient property
  //····················································································································

  private var mObserversOf_connectedPoints = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_connectedPoints (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_connectedPoints.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.connectedPoints_property.addEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_connectedPoints (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_connectedPoints.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.connectedPoints_property.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_connectedPoints_toElementsOfSet (_ inSet : Set<SheetInProject>) {
    for managedObject in inSet {
      self.mObserversOf_connectedPoints.apply { (_ observer : EBEvent) in
        managedObject.connectedPoints_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_connectedPoints_fromElementsOfSet (_ inSet : Set<SheetInProject>) {
    for managedObject in inSet {
      self.mObserversOf_connectedPoints.apply { (_ observer : EBEvent) in
        managedObject.connectedPoints_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'connexionWarnings' transient property
  //····················································································································

  private var mObserversOf_connexionWarnings = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_connexionWarnings (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_connexionWarnings.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.connexionWarnings_property.addEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_connexionWarnings (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_connexionWarnings.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.connexionWarnings_property.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_connexionWarnings_toElementsOfSet (_ inSet : Set<SheetInProject>) {
    for managedObject in inSet {
      self.mObserversOf_connexionWarnings.apply { (_ observer : EBEvent) in
        managedObject.connexionWarnings_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_connexionWarnings_fromElementsOfSet (_ inSet : Set<SheetInProject>) {
    for managedObject in inSet {
      self.mObserversOf_connexionWarnings.apply { (_ observer : EBEvent) in
        managedObject.connexionWarnings_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'connexionErrors' transient property
  //····················································································································

  private var mObserversOf_connexionErrors = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_connexionErrors (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_connexionErrors.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.connexionErrors_property.addEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_connexionErrors (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_connexionErrors.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.connexionErrors_property.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_connexionErrors_toElementsOfSet (_ inSet : Set<SheetInProject>) {
    for managedObject in inSet {
      self.mObserversOf_connexionErrors.apply { (_ observer : EBEvent) in
        managedObject.connexionErrors_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_connexionErrors_fromElementsOfSet (_ inSet : Set<SheetInProject>) {
    for managedObject in inSet {
      self.mObserversOf_connexionErrors.apply { (_ observer : EBEvent) in
        managedObject.connexionErrors_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'sheetDescriptor' transient property
  //····················································································································

  private var mObserversOf_sheetDescriptor = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_sheetDescriptor (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_sheetDescriptor.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.sheetDescriptor_property.addEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_sheetDescriptor (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_sheetDescriptor.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.sheetDescriptor_property.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_sheetDescriptor_toElementsOfSet (_ inSet : Set<SheetInProject>) {
    for managedObject in inSet {
      self.mObserversOf_sheetDescriptor.apply { (_ observer : EBEvent) in
        managedObject.sheetDescriptor_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_sheetDescriptor_fromElementsOfSet (_ inSet : Set<SheetInProject>) {
    for managedObject in inSet {
      self.mObserversOf_sheetDescriptor.apply { (_ observer : EBEvent) in
        managedObject.sheetDescriptor_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    TransientArrayOf SheetInProject
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class TransientArrayOf_SheetInProject : ReadOnlyArrayOf_SheetInProject {

  //····················································································································
  //   Sort
  //····················································································································

  private var mIsOrderedBefore : Optional < (_ left : SheetInProject, _ right : SheetInProject) -> Bool > = nil 
  private var mSortObserver : EBModelNotifierEvent? = nil

  //····················································································································
  //   Data provider
  //····················································································································

  private var mDataProvider : ReadOnlyArrayOf_SheetInProject? = nil
  private var mTransientKind : PropertyKind = .empty

 
  func setDataProvider (_ inProvider : ReadOnlyArrayOf_SheetInProject,
                        sortCallback inSortCallBack : Optional < (_ left : SheetInProject, _ right : SheetInProject) -> Bool >,
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
    let newArray : [SheetInProject] 
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

  override var prop : EBSelection < [SheetInProject] > {
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

  override var propval : [SheetInProject] { return self.mInternalArrayValue }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    TransientArrayOfSuperOf SheetInProject
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class TransientArrayOfSuperOf_SheetInProject <SUPER : EBManagedObject> : ReadOnlyArrayOf_SheetInProject {

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
    var newArray = [SheetInProject] ()
    for superObject in newModelArray {
      if let object = superObject as? SheetInProject {
        newArray.append (object)
      }
    }
    self.mInternalArrayValue = newArray
    super.notifyModelDidChange ()
  }

  //····················································································································

  override var prop : EBSelection < [SheetInProject] > {
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

  override var propval : [SheetInProject] { return self.mInternalArrayValue }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    To many relationship read write: SheetInProject
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class ReadWriteArrayOf_SheetInProject : ReadOnlyArrayOf_SheetInProject {

  //····················································································································
 
  func setProp (_ value :  [SheetInProject]) { } // Abstract method
  
  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    Proxy: ProxyArrayOf_SheetInProject
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class ProxyArrayOf_SheetInProject : ReadWriteArrayOf_SheetInProject {

  //····················································································································

  private var mModel : ReadWriteArrayOf_SheetInProject? = nil

  //····················································································································

  func setModel (_ inModel : ReadWriteArrayOf_SheetInProject?) {
    if self.mModel !== inModel {
      self.mModel?.detachClient (self)
      self.mModel = inModel
      self.mModel?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newModelArray : [SheetInProject]
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

  override func setProp (_ inArrayValue : [SheetInProject]) {
    self.mModel?.setProp (inArrayValue)
  }

  //····················································································································

  override var prop : EBSelection < [SheetInProject] > {
    if let model = self.mModel {
      return model.prop
    }else{
      return .empty
    }
  }

  //····················································································································

  override var propval : [SheetInProject] {
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
//    Stored Array: SheetInProject
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class StoredArrayOf_SheetInProject : ReadWriteArrayOf_SheetInProject, EBSignatureObserverProtocol {

  //····················································································································

  init (usedForSignature inUsedForSignature : Bool) {
    mUsedForSignature = inUsedForSignature
    super.init ()
  }

  //····················································································································
  //   Signature ?
  //····················································································································

  private let mUsedForSignature : Bool
  
  //····················································································································
  //   Undo manager
  //····················································································································

  weak var ebUndoManager : EBUndoManager? = nil // SOULD BE WEAK

  //····················································································································
  //   Opposite relationship management
  //····················································································································

  private var mSetOppositeRelationship : Optional < (_ inManagedObject : SheetInProject) -> Void > = nil
  private var mResetOppositeRelationship : Optional < (_ inManagedObject : SheetInProject) -> Void > = nil

  //····················································································································

  func setOppositeRelationShipFunctions (setter inSetter : @escaping (_ inManagedObject : SheetInProject) -> Void,
                                         resetter inResetter : @escaping (_ inManagedObject : SheetInProject) -> Void) {
    self.mSetOppositeRelationship = inSetter
    self.mResetOppositeRelationship = inResetter
  }
  
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
  // Model will change 
  //····················································································································

  override func notifyModelDidChangeFrom (oldValue inOldValue : [SheetInProject]) {
  //--- Register old value in undo manager
    self.ebUndoManager?.registerUndo (withTarget: self, selector:#selector(performUndo(_:)), object: inOldValue)
  //---
    super.notifyModelDidChangeFrom (oldValue: inOldValue)
  }
 
  //····················································································································

  @objc func performUndo (_ oldValue : [SheetInProject]) {
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
  //---
    super.notifyModelDidChange ()
  }

  //····················································································································
  // Update observers 
  //····················································································································

  internal override func updateObservers (removedSet inRemovedSet : Set <SheetInProject>, addedSet inAddedSet : Set <SheetInProject>) {
    for managedObject in inRemovedSet {
      if self.mUsedForSignature {
        managedObject.setSignatureObserver (observer: nil)
      }
      self.mResetOppositeRelationship? (managedObject)
   }
  //---
    for managedObject in inAddedSet {
      if self.mUsedForSignature {
        managedObject.setSignatureObserver (observer: self)
      }
      self.mSetOppositeRelationship? (managedObject)
    }
  //---
    super.updateObservers (removedSet: inRemovedSet, addedSet: inAddedSet)
 }
 
  //····················································································································

  override var prop : EBSelection < [SheetInProject] > { return .single (self.mInternalArrayValue) }

  //····················································································································

  override func setProp (_ inValue : [SheetInProject]) { self.mInternalArrayValue = inValue }

  //····················································································································

  override var propval : [SheetInProject] { return self.mInternalArrayValue }

  //····················································································································

  func remove (_ object : SheetInProject) {
    if let idx = self.mInternalArrayValue.firstIndex (of: object) {
      self.mInternalArrayValue.remove (at: idx)
    }
  }
  
  //····················································································································

  func add (_ object : SheetInProject) {
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
    self.mSignatureObserver?.clearSignatureCache ()
    self.mSignatureObserver = observer
    observer?.clearSignatureCache ()
    self.clearSignatureCache ()
 }

  //····················································································································

  final func signature () -> UInt32 {
    let computedSignature : UInt32
    if let s = self.mSignatureCache {
      computedSignature = s
    }else{
      computedSignature = self.computeSignature ()
      self.mSignatureCache = computedSignature
    }
    return computedSignature
  }
  
  //····················································································································

  final private func computeSignature () -> UInt32 {
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
//    Stand alone Array: SheetInProject
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class StandAloneArrayOf_SheetInProject : ReadWriteArrayOf_SheetInProject {

  //····················································································································

  override var prop : EBSelection < [SheetInProject] > { return .single (self.mInternalArrayValue) }

  //····················································································································

  override func setProp (_ inValue : [SheetInProject]) { self.mInternalArrayValue = inValue }

  //····················································································································

  override var propval : [SheetInProject] { return self.mInternalArrayValue }

  //····················································································································

  override func notifyModelDidChange () {
    self.postEvent ()
    super.notifyModelDidChange ()
  }

  //····················································································································

  func remove (_ object : SheetInProject) {
    if let idx = self.mInternalArrayValue.firstIndex (of: object) {
      self.mInternalArrayValue.remove (at: idx)
    }
  }
  
  //····················································································································

  func add (_ object : SheetInProject) {
    if !self.internalSetValue.contains (object) {
      self.mInternalArrayValue.append (object)
    }
  }
  
  //····················································································································
 
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    Preferences array: SheetInProject
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class PreferencesArrayOf_SheetInProject : StoredArrayOf_SheetInProject {

  //····················································································································

  private let mPrefKey : String
  private let mObserverForWritingPreferences = EBOutletEvent ()
  
  //····················································································································

  init (prefKey : String) {
    self.mPrefKey = prefKey
    super.init (usedForSignature: false)
    if let array = UserDefaults.standard.array (forKey: prefKey) as? [NSDictionary] {
      var objectArray = [SheetInProject] ()
      for dictionary in array {
        if let object = newInstanceOfEntityNamed (self.ebUndoManager, "SheetInProject") as? SheetInProject {
          object.setUpAtomicPropertiesWithDictionary (dictionary)
          objectArray.append (object)
        }
      }
      self.setProp (objectArray)
    }
    self.addEBObserverOf_mSheetTitle (self.mObserverForWritingPreferences)
    self.mObserverForWritingPreferences.mEventCallBack = { self.writeInPreferences () }
 }

  //····················································································································
 
  private func writeInPreferences () {
    var dictionaryArray = [NSDictionary] ()
    for object in self.mInternalArrayValue {
      let d = NSMutableDictionary ()
      object.saveIntoDictionary (d)
      d [ENTITY_KEY] = nil // Remove entity key, not used in preferences
      dictionaryArray.append (d)
    }
    UserDefaults.standard.set (dictionaryArray, forKey: self.mPrefKey)
  }

  //····················································································································
 
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

