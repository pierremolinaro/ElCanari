//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    ReadOnlyArrayOf_FontInProject
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class ReadOnlyArrayOf_FontInProject : ReadOnlyAbstractArrayProperty <FontInProject> {

  //····················································································································

  internal override func updateObservers (removedSet inRemovedSet : Set <FontInProject>, addedSet inAddedSet : Set <FontInProject>) {
    super.updateObservers (removedSet: inRemovedSet, addedSet: inAddedSet)
  //--- Remove observers from removed objects
    self.removeEBObserversOf_mFontVersion_fromElementsOfSet (inRemovedSet) // Stored property
    self.removeEBObserversOf_mDescriptiveString_fromElementsOfSet (inRemovedSet) // Stored property
    self.removeEBObserversOf_mFontName_fromElementsOfSet (inRemovedSet) // Stored property
    self.removeEBObserversOf_versionString_fromElementsOfSet (inRemovedSet) // Transient property
    self.removeEBObserversOf_sizeString_fromElementsOfSet (inRemovedSet) // Transient property
  //--- Add observers to added objects
    self.addEBObserversOf_mFontVersion_toElementsOfSet (inAddedSet) // Stored property
    self.addEBObserversOf_mDescriptiveString_toElementsOfSet (inAddedSet) // Stored property
    self.addEBObserversOf_mFontName_toElementsOfSet (inAddedSet) // Stored property
    self.addEBObserversOf_versionString_toElementsOfSet (inAddedSet) // Transient property
    self.addEBObserversOf_sizeString_toElementsOfSet (inAddedSet) // Transient property
  }

  //····················································································································
  //   Observers of 'mFontVersion' stored property
  //····················································································································

  private var mObserversOf_mFontVersion = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_mFontVersion (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_mFontVersion.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.mFontVersion_property.addEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_mFontVersion (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_mFontVersion.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.mFontVersion_property.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_mFontVersion_toElementsOfSet (_ inSet : Set<FontInProject>) {
    for managedObject in inSet {
      self.mObserversOf_mFontVersion.apply { (_ observer : EBEvent) in
        managedObject.mFontVersion_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_mFontVersion_fromElementsOfSet (_ inSet : Set<FontInProject>) {
    self.mObserversOf_mFontVersion.apply { (_ observer : EBEvent) in
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.mFontVersion_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'mDescriptiveString' stored property
  //····················································································································

  private var mObserversOf_mDescriptiveString = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_mDescriptiveString (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_mDescriptiveString.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.mDescriptiveString_property.addEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_mDescriptiveString (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_mDescriptiveString.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.mDescriptiveString_property.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_mDescriptiveString_toElementsOfSet (_ inSet : Set<FontInProject>) {
    for managedObject in inSet {
      self.mObserversOf_mDescriptiveString.apply { (_ observer : EBEvent) in
        managedObject.mDescriptiveString_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_mDescriptiveString_fromElementsOfSet (_ inSet : Set<FontInProject>) {
    self.mObserversOf_mDescriptiveString.apply { (_ observer : EBEvent) in
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.mDescriptiveString_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'mFontName' stored property
  //····················································································································

  private var mObserversOf_mFontName = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_mFontName (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_mFontName.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.mFontName_property.addEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_mFontName (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_mFontName.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.mFontName_property.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_mFontName_toElementsOfSet (_ inSet : Set<FontInProject>) {
    for managedObject in inSet {
      self.mObserversOf_mFontName.apply { (_ observer : EBEvent) in
        managedObject.mFontName_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_mFontName_fromElementsOfSet (_ inSet : Set<FontInProject>) {
    self.mObserversOf_mFontName.apply { (_ observer : EBEvent) in
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.mFontName_property.removeEBObserver (observer)
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

  final func addEBObserversOf_versionString_toElementsOfSet (_ inSet : Set<FontInProject>) {
    for managedObject in inSet {
      self.mObserversOf_versionString.apply { (_ observer : EBEvent) in
        managedObject.versionString_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_versionString_fromElementsOfSet (_ inSet : Set<FontInProject>) {
    for managedObject in inSet {
      self.mObserversOf_versionString.apply { (_ observer : EBEvent) in
        managedObject.versionString_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'sizeString' transient property
  //····················································································································

  private var mObserversOf_sizeString = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_sizeString (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_sizeString.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.sizeString_property.addEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_sizeString (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_sizeString.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.sizeString_property.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_sizeString_toElementsOfSet (_ inSet : Set<FontInProject>) {
    for managedObject in inSet {
      self.mObserversOf_sizeString.apply { (_ observer : EBEvent) in
        managedObject.sizeString_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_sizeString_fromElementsOfSet (_ inSet : Set<FontInProject>) {
    for managedObject in inSet {
      self.mObserversOf_sizeString.apply { (_ observer : EBEvent) in
        managedObject.sizeString_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    TransientArrayOf FontInProject
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class TransientArrayOf_FontInProject : ReadOnlyArrayOf_FontInProject {

  //····················································································································
  //   Data provider
  //····················································································································

  private var mDataProvider : ReadOnlyArrayOf_FontInProject? = nil
  private var mTransientKind : PropertyKind = .empty

  //····················································································································

  func setDataProvider (_ inProvider : ReadOnlyArrayOf_FontInProject?) {
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
    let newArray : [FontInProject] 
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

  override var prop : EBSelection < [FontInProject] > {
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

  override var propval : [FontInProject] { return self.mInternalArrayValue }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    TransientArrayOfSuperOf FontInProject
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class TransientArrayOfSuperOf_FontInProject <SUPER : EBManagedObject> : ReadOnlyArrayOf_FontInProject {

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
    var newArray = [FontInProject] ()
    for superObject in newModelArray {
      if let object = superObject as? FontInProject {
        newArray.append (object)
      }
    }
    self.mInternalArrayValue = newArray
    super.notifyModelDidChange ()
  }

  //····················································································································

  override var prop : EBSelection < [FontInProject] > {
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

  override var propval : [FontInProject] { return self.mInternalArrayValue }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    To many relationship read write: FontInProject
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class ReadWriteArrayOf_FontInProject : ReadOnlyArrayOf_FontInProject {

  //····················································································································
 
  func setProp (_ value :  [FontInProject]) { } // Abstract method
  
  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    Proxy: ProxyArrayOf_FontInProject
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class ProxyArrayOf_FontInProject : ReadWriteArrayOf_FontInProject {

  //····················································································································

  private var mModel : ReadWriteArrayOf_FontInProject? = nil

  //····················································································································

  func setModel (_ inModel : ReadWriteArrayOf_FontInProject?) {
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
    let newModelArray : [FontInProject]
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

  override func setProp (_ inArrayValue : [FontInProject]) {
    self.mModel?.setProp (inArrayValue)
  }

  //····················································································································

  override var prop : EBSelection < [FontInProject] > {
    if let model = self.mModel {
      return model.prop
    }else{
      return .empty
    }
  }

  //····················································································································

  override var propval : [FontInProject] {
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
//    To many relationship: FontInProject
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class StoredArrayOf_FontInProject : ReadWriteArrayOf_FontInProject, EBSignatureObserverProtocol {

  //····················································································································
  //   Opposite relationship management
  //····················································································································

  private var mSetOppositeRelationship : Optional < (_ inManagedObject : FontInProject) -> Void > = nil
  private var mResetOppositeRelationship : Optional < (_ inManagedObject : FontInProject) -> Void > = nil

  //····················································································································

  func setOppositeRelationShipFunctions (setter inSetter : @escaping (_ inManagedObject : FontInProject) -> Void,
                                         resetter inResetter : @escaping (_ inManagedObject : FontInProject) -> Void) {
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
      var objectArray = [FontInProject] ()
      for dictionary in array {
        if let object = newInstanceOfEntityNamed (self.ebUndoManager, "FontInProject") as? FontInProject {
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

  override func notifyModelDidChangeFrom (oldValue inOldValue : [FontInProject]) {
  //--- Register old value in undo manager
    self.ebUndoManager?.registerUndo (withTarget: self, selector:#selector(performUndo(_:)), object: inOldValue)
  //---
    super.notifyModelDidChangeFrom (oldValue: inOldValue)
  }
 
  //····················································································································

  @objc func performUndo (_ oldValue : [FontInProject]) {
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

  internal override func updateObservers (removedSet inRemovedSet : Set <FontInProject>, addedSet inAddedSet : Set <FontInProject>) {
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

  override var prop : EBSelection < [FontInProject] > { return .single (self.mInternalArrayValue) }

  //····················································································································

  override func setProp (_ inValue : [FontInProject]) { self.mInternalArrayValue = inValue }

  //····················································································································

  override var propval : [FontInProject] { return self.mInternalArrayValue }

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

  func remove (_ object : FontInProject) {
    if let idx = self.mInternalArrayValue.firstIndex (of: object) {
      self.mInternalArrayValue.remove (at: idx)
    }
  }
  
  //····················································································································

  func add (_ object : FontInProject) {
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

