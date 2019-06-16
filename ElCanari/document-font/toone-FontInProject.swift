//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    ReadOnlyObject_FontInProject 
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class ReadOnlyObject_FontInProject : ReadOnlyAbstractObjectProperty <FontInProject> {

  //····················································································································

  internal override func notifyModelDidChangeFrom (oldValue inOldValue : FontInProject?) {
    super.notifyModelDidChangeFrom (oldValue: inOldValue)
  //--- Remove observers from removed objects
    inOldValue?.mNominalSize_property.removeEBObserversFrom (&self.mObserversOf_mNominalSize) // Stored property
    inOldValue?.mFontName_property.removeEBObserversFrom (&self.mObserversOf_mFontName) // Stored property
    inOldValue?.mFontVersion_property.removeEBObserversFrom (&self.mObserversOf_mFontVersion) // Stored property
    inOldValue?.mDescriptiveString_property.removeEBObserversFrom (&self.mObserversOf_mDescriptiveString) // Stored property
    inOldValue?.versionString_property.removeEBObserversFrom (&self.mObserversOf_versionString) // Transient property
    inOldValue?.sizeString_property.removeEBObserversFrom (&self.mObserversOf_sizeString) // Transient property
    inOldValue?.descriptor_property.removeEBObserversFrom (&self.mObserversOf_descriptor) // Transient property
  //--- Add observers to added objects
    self.mInternalValue?.mNominalSize_property.addEBObserversFrom (&self.mObserversOf_mNominalSize) // Stored property
    self.mInternalValue?.mFontName_property.addEBObserversFrom (&self.mObserversOf_mFontName) // Stored property
    self.mInternalValue?.mFontVersion_property.addEBObserversFrom (&self.mObserversOf_mFontVersion) // Stored property
    self.mInternalValue?.mDescriptiveString_property.addEBObserversFrom (&self.mObserversOf_mDescriptiveString) // Stored property
    self.mInternalValue?.versionString_property.addEBObserversFrom (&self.mObserversOf_versionString) // Transient property
    self.mInternalValue?.sizeString_property.addEBObserversFrom (&self.mObserversOf_sizeString) // Transient property
    self.mInternalValue?.descriptor_property.addEBObserversFrom (&self.mObserversOf_descriptor) // Transient property
  }

  //····················································································································
  //   Observers of 'mNominalSize' stored property
  //····················································································································

  private var mObserversOf_mNominalSize = EBWeakEventSet ()

  //····················································································································

  var mNominalSize_property_selection : EBSelection <Int?> {
    if let model = self.propval {
      switch (model.mNominalSize_property_selection) {
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

  final func addEBObserverOf_mNominalSize (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_mNominalSize.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
       v?.mNominalSize_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_mNominalSize (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_mNominalSize.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.mNominalSize_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································

  final func addEBObserversOf_mNominalSize_toElementsOfSet (_ inSet : Set<FontInProject>) {
    for managedObject in inSet {
      self.mObserversOf_mNominalSize.apply { (_ observer : EBEvent) in
        managedObject.mNominalSize_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_mNominalSize_fromElementsOfSet (_ inSet : Set<FontInProject>) {
    self.mObserversOf_mNominalSize.apply { (_ observer : EBEvent) in
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.mNominalSize_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'mFontName' stored property
  //····················································································································

  private var mObserversOf_mFontName = EBWeakEventSet ()

  //····················································································································

  var mFontName_property_selection : EBSelection <String?> {
    if let model = self.propval {
      switch (model.mFontName_property_selection) {
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

  final func addEBObserverOf_mFontName (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_mFontName.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
       v?.mFontName_property.addEBObserver (inObserver)
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
      v?.mFontName_property.removeEBObserver (inObserver)
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
  //   Observers of 'mFontVersion' stored property
  //····················································································································

  private var mObserversOf_mFontVersion = EBWeakEventSet ()

  //····················································································································

  var mFontVersion_property_selection : EBSelection <Int?> {
    if let model = self.propval {
      switch (model.mFontVersion_property_selection) {
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

  final func addEBObserverOf_mFontVersion (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_mFontVersion.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
       v?.mFontVersion_property.addEBObserver (inObserver)
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
      v?.mFontVersion_property.removeEBObserver (inObserver)
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

  var mDescriptiveString_property_selection : EBSelection <String?> {
    if let model = self.propval {
      switch (model.mDescriptiveString_property_selection) {
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

  final func addEBObserverOf_mDescriptiveString (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_mDescriptiveString.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
       v?.mDescriptiveString_property.addEBObserver (inObserver)
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
      v?.mDescriptiveString_property.removeEBObserver (inObserver)
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
  //   Observers of 'versionString' transient property
  //····················································································································

  private var mObserversOf_versionString = EBWeakEventSet ()

  //····················································································································

  var versionString_property_selection : EBSelection <String?> {
    if let model = self.propval {
      switch (model.versionString_property_selection) {
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

  final func addEBObserverOf_versionString (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_versionString.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.versionString_property.addEBObserver (inObserver)
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
      v?.versionString_property.removeEBObserver (inObserver)
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

  var sizeString_property_selection : EBSelection <String?> {
    if let model = self.propval {
      switch (model.sizeString_property_selection) {
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

  final func addEBObserverOf_sizeString (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_sizeString.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.sizeString_property.addEBObserver (inObserver)
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
      v?.sizeString_property.removeEBObserver (inObserver)
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
  //   Observers of 'descriptor' transient property
  //····················································································································

  private var mObserversOf_descriptor = EBWeakEventSet ()

  //····················································································································

  var descriptor_property_selection : EBSelection <BoardFontDescriptor?> {
    if let model = self.propval {
      switch (model.descriptor_property_selection) {
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

  final func addEBObserverOf_descriptor (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_descriptor.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.descriptor_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_descriptor (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_descriptor.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.descriptor_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································

  final func addEBObserversOf_descriptor_toElementsOfSet (_ inSet : Set<FontInProject>) {
    for managedObject in inSet {
      self.mObserversOf_descriptor.apply { (_ observer : EBEvent) in
        managedObject.descriptor_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_descriptor_fromElementsOfSet (_ inSet : Set<FontInProject>) {
    for managedObject in inSet {
      self.mObserversOf_descriptor.apply { (_ observer : EBEvent) in
        managedObject.descriptor_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observable toMany property: mTexts
  //····················································································································

  private var mObserversOf_mTexts = EBWeakEventSet ()

  //····················································································································

  var mTexts_property_selection : EBSelection <[BoardText]> {
    if let model = self.propval {
      switch (model.mTexts_property_selection) {
      case .empty :
        return .empty
      case .multiple :
        return .multiple
      case .single (let v) :
        return .single (v)
      }
    }else{
      return .empty
    }
  }

  //····················································································································

  final func addEBObserverOf_mTexts (_ inObserver : EBEvent) {
    self.mObserversOf_mTexts.insert (inObserver)
    if let object = self.propval {
      object.mTexts_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_mTexts (_ inObserver : EBEvent) {
    self.mObserversOf_mTexts.remove (inObserver)
    if let object = self.propval {
      object.mTexts_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    TransientObject FontInProject
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class TransientObject_FontInProject : ReadOnlyObject_FontInProject {

  //····················································································································
  //   Data provider
  //····················································································································

  private var mDataProvider : ReadOnlyObject_FontInProject? = nil
  private var mTransientKind : PropertyKind = .empty

  //····················································································································

  func setDataProvider (_ inProvider : ReadOnlyObject_FontInProject?) {
    if self.mDataProvider !== inProvider {
      self.mDataProvider?.detachClient (self)
      self.mDataProvider = inProvider
      self.mDataProvider?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newObject : FontInProject? 
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

  override var prop : EBSelection < FontInProject? > {
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

  override var propval : FontInProject? { return self.mInternalValue }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    ReadWriteObject_FontInProject
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class ReadWriteObject_FontInProject : ReadOnlyObject_FontInProject {

  //····················································································································
 
  func setProp (_ inValue : FontInProject?) { } // Abstract method
  
  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    Proxy: ProxyObject_FontInProject
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class ProxyObject_FontInProject : ReadWriteObject_FontInProject {

  //····················································································································

  private var mModel : ReadWriteObject_FontInProject? = nil

  //····················································································································

  func setModel (_ inModel : ReadWriteObject_FontInProject?) {
    if self.mModel !== inModel {
      self.mModel?.detachClient (self)
      self.mModel = inModel
      self.mModel?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newModel : FontInProject?
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

  override func setProp (_ inValue : FontInProject?) {
    self.mModel?.setProp (inValue)
  }

  //····················································································································

  override var prop : EBSelection < FontInProject? > {
    if let model = self.mModel {
      return model.prop
    }else{
      return .empty
    }
  }

  //····················································································································

  override var propval : FontInProject? {
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
//    StoredObject_FontInProject 
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class StoredObject_FontInProject : ReadWriteObject_FontInProject, EBSignatureObserverProtocol {

  //····················································································································
  //   Undo manager
  //····················································································································

  weak var ebUndoManager : EBUndoManager? = nil // SOULD BE WEAK

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

  override func notifyModelDidChangeFrom (oldValue inOldValue : FontInProject?) {
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

  @objc func performUndo (_ oldValue : FontInProject?) {
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

  override var prop : EBSelection < FontInProject? > {
    if let object = self.mInternalValue {
      return .single (object)
    }else{
      return .empty
    }
  }

  //····················································································································

  override func setProp (_ inValue : FontInProject?) { self.mInternalValue = inValue }

  //····················································································································

  override var propval : FontInProject? { return self.mInternalValue }

  //····················································································································
  //   signature
  //····················································································································

  private weak var mSignatureObserver : EBSignatureObserverProtocol? = nil // SOULD BE WEAK

  //····················································································································

  private var mSignatureCache : UInt32? = nil

  //····················································································································

  final func setSignatureObserver (observer : EBSignatureObserverProtocol?) {
    self.mSignatureObserver = observer
    self.mInternalValue?.setSignatureObserver (observer: observer)
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

