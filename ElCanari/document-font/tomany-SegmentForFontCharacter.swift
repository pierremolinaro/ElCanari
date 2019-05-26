//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    ReadOnlyArrayOf_SegmentForFontCharacter
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class ReadOnlyArrayOf_SegmentForFontCharacter : ReadOnlyAbstractArrayProperty <SegmentForFontCharacter> {

  //····················································································································

  internal override func updateObservers (removedSet inRemovedSet : Set <SegmentForFontCharacter>, addedSet inAddedSet : Set <SegmentForFontCharacter>) {
    super.updateObservers (removedSet: inRemovedSet, addedSet: inAddedSet)
  //--- Remove observers from removed objects
    self.removeEBObserversOf_x1_fromElementsOfSet (inRemovedSet) // Stored property
    self.removeEBObserversOf_y1_fromElementsOfSet (inRemovedSet) // Stored property
    self.removeEBObserversOf_x2_fromElementsOfSet (inRemovedSet) // Stored property
    self.removeEBObserversOf_y2_fromElementsOfSet (inRemovedSet) // Stored property
    self.removeEBObserversOf_selectionDisplay_fromElementsOfSet (inRemovedSet) // Transient property
    self.removeEBObserversOf_objectDisplay_fromElementsOfSet (inRemovedSet) // Transient property
  //--- Add observers to added objects
    self.addEBObserversOf_x1_toElementsOfSet (inAddedSet) // Stored property
    self.addEBObserversOf_y1_toElementsOfSet (inAddedSet) // Stored property
    self.addEBObserversOf_x2_toElementsOfSet (inAddedSet) // Stored property
    self.addEBObserversOf_y2_toElementsOfSet (inAddedSet) // Stored property
    self.addEBObserversOf_selectionDisplay_toElementsOfSet (inAddedSet) // Transient property
    self.addEBObserversOf_objectDisplay_toElementsOfSet (inAddedSet) // Transient property
  }

  //····················································································································
  //   Observers of 'x1' stored property
  //····················································································································

  private var mObserversOf_x1 = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_x1 (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_x1.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.x1_property.addEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_x1 (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_x1.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.x1_property.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_x1_toElementsOfSet (_ inSet : Set<SegmentForFontCharacter>) {
    for managedObject in inSet {
      self.mObserversOf_x1.apply { (_ observer : EBEvent) in
        managedObject.x1_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_x1_fromElementsOfSet (_ inSet : Set<SegmentForFontCharacter>) {
    self.mObserversOf_x1.apply { (_ observer : EBEvent) in
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.x1_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'y1' stored property
  //····················································································································

  private var mObserversOf_y1 = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_y1 (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_y1.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.y1_property.addEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_y1 (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_y1.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.y1_property.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_y1_toElementsOfSet (_ inSet : Set<SegmentForFontCharacter>) {
    for managedObject in inSet {
      self.mObserversOf_y1.apply { (_ observer : EBEvent) in
        managedObject.y1_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_y1_fromElementsOfSet (_ inSet : Set<SegmentForFontCharacter>) {
    self.mObserversOf_y1.apply { (_ observer : EBEvent) in
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.y1_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'x2' stored property
  //····················································································································

  private var mObserversOf_x2 = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_x2 (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_x2.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.x2_property.addEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_x2 (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_x2.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.x2_property.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_x2_toElementsOfSet (_ inSet : Set<SegmentForFontCharacter>) {
    for managedObject in inSet {
      self.mObserversOf_x2.apply { (_ observer : EBEvent) in
        managedObject.x2_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_x2_fromElementsOfSet (_ inSet : Set<SegmentForFontCharacter>) {
    self.mObserversOf_x2.apply { (_ observer : EBEvent) in
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.x2_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'y2' stored property
  //····················································································································

  private var mObserversOf_y2 = EBWeakEventSet ()

  //····················································································································

  final func addEBObserverOf_y2 (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_y2.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.y2_property.addEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func removeEBObserverOf_y2 (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_y2.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      for managedObject in v {
        managedObject.y2_property.removeEBObserver (inObserver)
      }
    }
  }

  //····················································································································

  final func addEBObserversOf_y2_toElementsOfSet (_ inSet : Set<SegmentForFontCharacter>) {
    for managedObject in inSet {
      self.mObserversOf_y2.apply { (_ observer : EBEvent) in
        managedObject.y2_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_y2_fromElementsOfSet (_ inSet : Set<SegmentForFontCharacter>) {
    self.mObserversOf_y2.apply { (_ observer : EBEvent) in
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.y2_property.removeEBObserver (observer)
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

  final func addEBObserversOf_selectionDisplay_toElementsOfSet (_ inSet : Set<SegmentForFontCharacter>) {
    for managedObject in inSet {
      self.mObserversOf_selectionDisplay.apply { (_ observer : EBEvent) in
        managedObject.selectionDisplay_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_selectionDisplay_fromElementsOfSet (_ inSet : Set<SegmentForFontCharacter>) {
    for managedObject in inSet {
      self.mObserversOf_selectionDisplay.apply { (_ observer : EBEvent) in
        managedObject.selectionDisplay_property.removeEBObserver (observer)
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

  final func addEBObserversOf_objectDisplay_toElementsOfSet (_ inSet : Set<SegmentForFontCharacter>) {
    for managedObject in inSet {
      self.mObserversOf_objectDisplay.apply { (_ observer : EBEvent) in
        managedObject.objectDisplay_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_objectDisplay_fromElementsOfSet (_ inSet : Set<SegmentForFontCharacter>) {
    for managedObject in inSet {
      self.mObserversOf_objectDisplay.apply { (_ observer : EBEvent) in
        managedObject.objectDisplay_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    TransientArrayOf SegmentForFontCharacter
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class TransientArrayOf_SegmentForFontCharacter : ReadOnlyArrayOf_SegmentForFontCharacter {

  //····················································································································
  //   Data provider
  //····················································································································

  private var mDataProvider : ReadOnlyArrayOf_SegmentForFontCharacter? = nil
  private var mTransientKind : PropertyKind = .empty

  //····················································································································

  func setDataProvider (_ inProvider : ReadOnlyArrayOf_SegmentForFontCharacter?) {
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
    let newArray : [SegmentForFontCharacter] 
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

  override var prop : EBSelection < [SegmentForFontCharacter] > {
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

  override var propval : [SegmentForFontCharacter] { return self.mInternalArrayValue }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    TransientArrayOfSuperOf SegmentForFontCharacter
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class TransientArrayOfSuperOf_SegmentForFontCharacter <SUPER : EBManagedObject> : ReadOnlyArrayOf_SegmentForFontCharacter {

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
    var newArray = [SegmentForFontCharacter] ()
    for superObject in newModelArray {
      if let object = superObject as? SegmentForFontCharacter {
        newArray.append (object)
      }
    }
    self.mInternalArrayValue = newArray
    super.notifyModelDidChange ()
  }

  //····················································································································

  override var prop : EBSelection < [SegmentForFontCharacter] > {
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

  override var propval : [SegmentForFontCharacter] { return self.mInternalArrayValue }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    To many relationship read write: SegmentForFontCharacter
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class ReadWriteArrayOf_SegmentForFontCharacter : ReadOnlyArrayOf_SegmentForFontCharacter {

  //····················································································································
 
  func setProp (_ value :  [SegmentForFontCharacter]) { } // Abstract method
  
  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    Proxy: ProxyArrayOf_SegmentForFontCharacter
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class ProxyArrayOf_SegmentForFontCharacter : ReadWriteArrayOf_SegmentForFontCharacter {

  //····················································································································

  private var mModel : ReadWriteArrayOf_SegmentForFontCharacter? = nil

  //····················································································································

  func setModel (_ inModel : ReadWriteArrayOf_SegmentForFontCharacter?) {
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
    let newModelArray : [SegmentForFontCharacter]
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

  override func setProp (_ inArrayValue : [SegmentForFontCharacter]) {
    self.mModel?.setProp (inArrayValue)
  }

  //····················································································································

  override var prop : EBSelection < [SegmentForFontCharacter] > {
    if let model = self.mModel {
      return model.prop
    }else{
      return .empty
    }
  }

  //····················································································································

  override var propval : [SegmentForFontCharacter] {
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
//    To many relationship: SegmentForFontCharacter
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class StoredArrayOf_SegmentForFontCharacter : ReadWriteArrayOf_SegmentForFontCharacter, EBSignatureObserverProtocol {

  //····················································································································
  //   Opposite relationship management
  //····················································································································

  private var mSetOppositeRelationship : Optional < (_ inManagedObject : SegmentForFontCharacter) -> Void > = nil
  private var mResetOppositeRelationship : Optional < (_ inManagedObject : SegmentForFontCharacter) -> Void > = nil

  //····················································································································

  func setOppositeRelationShipFunctions (setter inSetter : @escaping (_ inManagedObject : SegmentForFontCharacter) -> Void,
                                         resetter inResetter : @escaping (_ inManagedObject : SegmentForFontCharacter) -> Void) {
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
      var objectArray = [SegmentForFontCharacter] ()
      for dictionary in array {
        if let object = newInstanceOfEntityNamed (self.ebUndoManager, "SegmentForFontCharacter") as? SegmentForFontCharacter {
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

  override func notifyModelDidChangeFrom (oldValue inOldValue : [SegmentForFontCharacter]) {
  //--- Register old value in undo manager
    self.ebUndoManager?.registerUndo (withTarget: self, selector:#selector(performUndo(_:)), object: inOldValue)
  //---
    super.notifyModelDidChangeFrom (oldValue: inOldValue)
  }
 
  //····················································································································

  @objc func performUndo (_ oldValue : [SegmentForFontCharacter]) {
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

  internal override func updateObservers (removedSet inRemovedSet : Set <SegmentForFontCharacter>, addedSet inAddedSet : Set <SegmentForFontCharacter>) {
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

  override var prop : EBSelection < [SegmentForFontCharacter] > { return .single (self.mInternalArrayValue) }

  //····················································································································

  override func setProp (_ inValue : [SegmentForFontCharacter]) { self.mInternalArrayValue = inValue }

  //····················································································································

  override var propval : [SegmentForFontCharacter] { return self.mInternalArrayValue }

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

  func remove (_ object : SegmentForFontCharacter) {
    if let idx = self.mInternalArrayValue.firstIndex (of: object) {
      self.mInternalArrayValue.remove (at: idx)
    }
  }
  
  //····················································································································

  func add (_ object : SegmentForFontCharacter) {
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

