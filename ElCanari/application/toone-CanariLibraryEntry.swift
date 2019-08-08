//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    ReadOnlyObject_CanariLibraryEntry 
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class ReadOnlyObject_CanariLibraryEntry : ReadOnlyAbstractObjectProperty <CanariLibraryEntry> {

  //····················································································································

  internal override func notifyModelDidChangeFrom (oldValue inOldValue : CanariLibraryEntry?) {
    super.notifyModelDidChangeFrom (oldValue: inOldValue)
  //--- Remove observers from removed objects
    inOldValue?.mPath_property.removeEBObserversFrom (&self.mObserversOf_mPath) // Stored property
    inOldValue?.mUses_property.removeEBObserversFrom (&self.mObserversOf_mUses) // Stored property
    inOldValue?.mLibraryRepositoryURL_property.removeEBObserversFrom (&self.mObserversOf_mLibraryRepositoryURL) // Stored property
    inOldValue?.mUserAndPasswordTag_property.removeEBObserversFrom (&self.mObserversOf_mUserAndPasswordTag) // Stored property
    inOldValue?.mStatusImage_property.removeEBObserversFrom (&self.mObserversOf_mStatusImage) // Transient property
  //--- Add observers to added objects
    self.mInternalValue?.mPath_property.addEBObserversFrom (&self.mObserversOf_mPath) // Stored property
    self.mInternalValue?.mUses_property.addEBObserversFrom (&self.mObserversOf_mUses) // Stored property
    self.mInternalValue?.mLibraryRepositoryURL_property.addEBObserversFrom (&self.mObserversOf_mLibraryRepositoryURL) // Stored property
    self.mInternalValue?.mUserAndPasswordTag_property.addEBObserversFrom (&self.mObserversOf_mUserAndPasswordTag) // Stored property
    self.mInternalValue?.mStatusImage_property.addEBObserversFrom (&self.mObserversOf_mStatusImage) // Transient property
  }

  //····················································································································
  //   Observers of 'mPath' stored property
  //····················································································································

  private var mObserversOf_mPath = EBWeakEventSet ()

  //····················································································································

  var mPath_property_selection : EBSelection <String?> {
    if let model = self.propval {
      switch (model.mPath_property_selection) {
      case .empty :
        return .empty
      case .multiple :
        return .multiple
      case .single (let v) :
        return .single (v)
      }
    }else{
      return .single (nil)
    }
  }

  //····················································································································

  final func addEBObserverOf_mPath (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_mPath.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
       v?.mPath_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_mPath (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_mPath.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.mPath_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································

  final func addEBObserversOf_mPath_toElementsOfSet (_ inSet : Set<CanariLibraryEntry>) {
    for managedObject in inSet {
      self.mObserversOf_mPath.apply { (_ observer : EBEvent) in
        managedObject.mPath_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_mPath_fromElementsOfSet (_ inSet : Set<CanariLibraryEntry>) {
    self.mObserversOf_mPath.apply { (_ observer : EBEvent) in
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.mPath_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'mUses' stored property
  //····················································································································

  private var mObserversOf_mUses = EBWeakEventSet ()

  //····················································································································

  var mUses_property_selection : EBSelection <Bool?> {
    if let model = self.propval {
      switch (model.mUses_property_selection) {
      case .empty :
        return .empty
      case .multiple :
        return .multiple
      case .single (let v) :
        return .single (v)
      }
    }else{
      return .single (nil)
    }
  }

  //····················································································································

  final func addEBObserverOf_mUses (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_mUses.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
       v?.mUses_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_mUses (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_mUses.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.mUses_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································

  final func addEBObserversOf_mUses_toElementsOfSet (_ inSet : Set<CanariLibraryEntry>) {
    for managedObject in inSet {
      self.mObserversOf_mUses.apply { (_ observer : EBEvent) in
        managedObject.mUses_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_mUses_fromElementsOfSet (_ inSet : Set<CanariLibraryEntry>) {
    self.mObserversOf_mUses.apply { (_ observer : EBEvent) in
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.mUses_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'mLibraryRepositoryURL' stored property
  //····················································································································

  private var mObserversOf_mLibraryRepositoryURL = EBWeakEventSet ()

  //····················································································································

  var mLibraryRepositoryURL_property_selection : EBSelection <String?> {
    if let model = self.propval {
      switch (model.mLibraryRepositoryURL_property_selection) {
      case .empty :
        return .empty
      case .multiple :
        return .multiple
      case .single (let v) :
        return .single (v)
      }
    }else{
      return .single (nil)
    }
  }

  //····················································································································

  final func addEBObserverOf_mLibraryRepositoryURL (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_mLibraryRepositoryURL.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
       v?.mLibraryRepositoryURL_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_mLibraryRepositoryURL (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_mLibraryRepositoryURL.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.mLibraryRepositoryURL_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································

  final func addEBObserversOf_mLibraryRepositoryURL_toElementsOfSet (_ inSet : Set<CanariLibraryEntry>) {
    for managedObject in inSet {
      self.mObserversOf_mLibraryRepositoryURL.apply { (_ observer : EBEvent) in
        managedObject.mLibraryRepositoryURL_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_mLibraryRepositoryURL_fromElementsOfSet (_ inSet : Set<CanariLibraryEntry>) {
    self.mObserversOf_mLibraryRepositoryURL.apply { (_ observer : EBEvent) in
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.mLibraryRepositoryURL_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'mUserAndPasswordTag' stored property
  //····················································································································

  private var mObserversOf_mUserAndPasswordTag = EBWeakEventSet ()

  //····················································································································

  var mUserAndPasswordTag_property_selection : EBSelection <String?> {
    if let model = self.propval {
      switch (model.mUserAndPasswordTag_property_selection) {
      case .empty :
        return .empty
      case .multiple :
        return .multiple
      case .single (let v) :
        return .single (v)
      }
    }else{
      return .single (nil)
    }
  }

  //····················································································································

  final func addEBObserverOf_mUserAndPasswordTag (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_mUserAndPasswordTag.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
       v?.mUserAndPasswordTag_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_mUserAndPasswordTag (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_mUserAndPasswordTag.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.mUserAndPasswordTag_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································

  final func addEBObserversOf_mUserAndPasswordTag_toElementsOfSet (_ inSet : Set<CanariLibraryEntry>) {
    for managedObject in inSet {
      self.mObserversOf_mUserAndPasswordTag.apply { (_ observer : EBEvent) in
        managedObject.mUserAndPasswordTag_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_mUserAndPasswordTag_fromElementsOfSet (_ inSet : Set<CanariLibraryEntry>) {
    self.mObserversOf_mUserAndPasswordTag.apply { (_ observer : EBEvent) in
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.mUserAndPasswordTag_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'mStatusImage' transient property
  //····················································································································

  private var mObserversOf_mStatusImage = EBWeakEventSet ()

  //····················································································································

  var mStatusImage_property_selection : EBSelection <NSImage?> {
    if let model = self.propval {
      switch (model.mStatusImage_property_selection) {
      case .empty :
        return .empty
      case .multiple :
        return .multiple
      case .single (let v) :
        return .single (v)
      }
    }else{
      return .single (nil)
    }
  }

  //····················································································································

  final func addEBObserverOf_mStatusImage (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_mStatusImage.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.mStatusImage_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_mStatusImage (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_mStatusImage.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.mStatusImage_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································

  final func addEBObserversOf_mStatusImage_toElementsOfSet (_ inSet : Set<CanariLibraryEntry>) {
    for managedObject in inSet {
      self.mObserversOf_mStatusImage.apply { (_ observer : EBEvent) in
        managedObject.mStatusImage_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_mStatusImage_fromElementsOfSet (_ inSet : Set<CanariLibraryEntry>) {
    for managedObject in inSet {
      self.mObserversOf_mStatusImage.apply { (_ observer : EBEvent) in
        managedObject.mStatusImage_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    TransientObject CanariLibraryEntry
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class TransientObject_CanariLibraryEntry : ReadOnlyObject_CanariLibraryEntry {

  //····················································································································
  //   Data provider
  //····················································································································

  private var mDataProvider : ReadOnlyObject_CanariLibraryEntry? = nil
  private var mTransientKind : PropertyKind = .empty

  //····················································································································

  func setDataProvider (_ inProvider : ReadOnlyObject_CanariLibraryEntry?) {
    if self.mDataProvider !== inProvider {
      self.mDataProvider?.detachClient (self)
      self.mDataProvider = inProvider
      self.mDataProvider?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newObject : CanariLibraryEntry? 
    if let dataProvider = self.mDataProvider {
      switch dataProvider.prop {
      case .empty :
        newObject = nil
        self.mTransientKind = .empty
      case .single (let v) :
        newObject = v
        self.mTransientKind = .single
       case .multiple :
        newObject = nil
        self.mTransientKind = .empty
      }
    }else{
      newObject = nil
      self.mTransientKind = .empty
    }
    self.mInternalValue = newObject
    super.notifyModelDidChange ()
  }

  //····················································································································

  override var prop : EBSelection < CanariLibraryEntry? > {
    switch self.mTransientKind {
    case .empty :
      return .empty
    case .single :
      if let internalValue = self.mInternalValue {
        return .single (internalValue)
      }else{
        return .empty
      }
    case .multiple :
      return .multiple
    }
  }

  //····················································································································

  override var propval : CanariLibraryEntry? { return self.mInternalValue }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    ReadWriteObject_CanariLibraryEntry
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class ReadWriteObject_CanariLibraryEntry : ReadOnlyObject_CanariLibraryEntry {

  //····················································································································
 
  func setProp (_ inValue : CanariLibraryEntry?) { } // Abstract method
  
  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    Proxy: ProxyObject_CanariLibraryEntry
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class ProxyObject_CanariLibraryEntry : ReadWriteObject_CanariLibraryEntry {

  //····················································································································

  private var mModel : ReadWriteObject_CanariLibraryEntry? = nil

  //····················································································································

  func setModel (_ inModel : ReadWriteObject_CanariLibraryEntry?) {
    if self.mModel !== inModel {
      self.mModel?.detachClient (self)
      self.mModel = inModel
      self.mModel?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newModel : CanariLibraryEntry?
    if let model = self.mModel {
      switch model.prop {
      case .empty :
        newModel = nil
      case .single (let v) :
        newModel = v
       case .multiple :
        newModel = nil
      }
    }else{
      newModel = nil
    }
    self.mInternalValue = newModel
    super.notifyModelDidChange ()
  }

  //····················································································································

  override func setProp (_ inValue : CanariLibraryEntry?) {
    self.mModel?.setProp (inValue)
  }

  //····················································································································

  override var prop : EBSelection < CanariLibraryEntry? > {
    if let model = self.mModel {
      return model.prop
    }else{
      return .empty
    }
  }

  //····················································································································

  override var propval : CanariLibraryEntry? {
    if let model = self.mModel {
      switch model.prop {
      case .empty, .multiple :
        return nil
      case .single (let v) :
        return v
      }
    }else{
      return nil
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    StoredObject_CanariLibraryEntry 
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class StoredObject_CanariLibraryEntry : ReadWriteObject_CanariLibraryEntry, EBSignatureObserverProtocol {

  //····················································································································
  //   Undo manager
  //····················································································································

  weak var ebUndoManager : EBUndoManager? = nil // SOULD BE WEAK

 //····················································································································
  //   Opposite relationship management
  //····················································································································

  private var mSetOppositeRelationship : Optional < (_ inManagedObject : CanariLibraryEntry) -> Void > = nil
  private var mResetOppositeRelationship : Optional < (_ inManagedObject : CanariLibraryEntry) -> Void > = nil

  //····················································································································

  func setOppositeRelationShipFunctions (setter inSetter : @escaping (_ inManagedObject : CanariLibraryEntry) -> Void,
                                         resetter inResetter : @escaping (_ inManagedObject : CanariLibraryEntry) -> Void) {
    self.mSetOppositeRelationship = inSetter
    self.mResetOppositeRelationship = inResetter
  }
  
  //····················································································································

  var mValueExplorer : NSButton? {
    didSet {
      if let unwrappedExplorer = self.mValueExplorer {
        switch self.prop {
        case .empty, .multiple :
          break ;
        case .single (let v) :
          updateManagedObjectToOneRelationshipDisplay (object: v, button: unwrappedExplorer)
        }
      }
    }
  }

 //····················································································································
  // Model will change 
  //····················································································································

  override func notifyModelDidChangeFrom (oldValue inOldValue : CanariLibraryEntry?) {
  //--- Register old value in undo manager
    self.ebUndoManager?.registerUndo (withTarget: self, selector:#selector(performUndo(_:)), object: inOldValue)
  //---
    if let object = inOldValue {
      object.setSignatureObserver (observer: nil)
      self.mResetOppositeRelationship? (object)
    }
  //---
    if let object = self.mInternalValue {
      object.setSignatureObserver (observer: self)
      self.mSetOppositeRelationship? (object)
    }
  //---
    super.notifyModelDidChangeFrom (oldValue: inOldValue)
  }
 
  //····················································································································

  @objc func performUndo (_ oldValue : CanariLibraryEntry?) {
    self.mInternalValue = oldValue
  }
 
  //····················································································································
  // Model did change 
  //····················································································································

  override func notifyModelDidChange () {
  //--- Update explorer
    if let valueExplorer = self.mValueExplorer {
      updateManagedObjectToOneRelationshipDisplay (object: self.mInternalValue, button: valueExplorer)
    }
  //--- Notify observers
    self.postEvent ()
    self.clearSignatureCache ()
  //---
    super.notifyModelDidChange ()
  }

  //····················································································································

  override var prop : EBSelection < CanariLibraryEntry? > {
    if let object = self.mInternalValue {
      return .single (object)
    }else{
      return .empty
    }
  }

  //····················································································································

  override func setProp (_ inValue : CanariLibraryEntry?) { self.mInternalValue = inValue }

  //····················································································································

  override var propval : CanariLibraryEntry? { return self.mInternalValue }

  //····················································································································
  //   signature
  //····················································································································

  private weak var mSignatureObserver : EBSignatureObserverProtocol? = nil // SOULD BE WEAK

  //····················································································································

  private var mSignatureCache : UInt32? = nil

  //····················································································································

  final func setSignatureObserver (observer inObserver : EBSignatureObserverProtocol?) {
    self.mSignatureObserver = inObserver
 // §   self.mInternalValue?.setSignatureObserver (observer: observer)
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
    if let object = self.mInternalValue {
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

