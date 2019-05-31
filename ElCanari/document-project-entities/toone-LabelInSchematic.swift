//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    ReadOnlyObject_LabelInSchematic 
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class ReadOnlyObject_LabelInSchematic : ReadOnlyAbstractObjectProperty <LabelInSchematic> {

  //····················································································································

  internal override func notifyModelDidChangeFrom (oldValue inOldValue : LabelInSchematic?) {
    super.notifyModelDidChangeFrom (oldValue: inOldValue)
  //--- Remove observers from removed objects
    inOldValue?.mOrientation_property.removeEBObserversFrom (&self.mObserversOf_mOrientation) // Stored property
    inOldValue?.location_property.removeEBObserversFrom (&self.mObserversOf_location) // Transient property
    inOldValue?.netName_property.removeEBObserversFrom (&self.mObserversOf_netName) // Transient property
    inOldValue?.selectionDisplay_property.removeEBObserversFrom (&self.mObserversOf_selectionDisplay) // Transient property
    inOldValue?.netClassName_property.removeEBObserversFrom (&self.mObserversOf_netClassName) // Transient property
    inOldValue?.objectDisplay_property.removeEBObserversFrom (&self.mObserversOf_objectDisplay) // Transient property
  //--- Add observers to added objects
    self.mInternalValue?.mOrientation_property.addEBObserversFrom (&self.mObserversOf_mOrientation) // Stored property
    self.mInternalValue?.location_property.addEBObserversFrom (&self.mObserversOf_location) // Transient property
    self.mInternalValue?.netName_property.addEBObserversFrom (&self.mObserversOf_netName) // Transient property
    self.mInternalValue?.selectionDisplay_property.addEBObserversFrom (&self.mObserversOf_selectionDisplay) // Transient property
    self.mInternalValue?.netClassName_property.addEBObserversFrom (&self.mObserversOf_netClassName) // Transient property
    self.mInternalValue?.objectDisplay_property.addEBObserversFrom (&self.mObserversOf_objectDisplay) // Transient property
  }

  //····················································································································
  //   Observers of 'mOrientation' stored property
  //····················································································································

  private var mObserversOf_mOrientation = EBWeakEventSet ()

  //····················································································································

  var mOrientation_property_selection : EBSelection <QuadrantRotation?> {
    if let model = self.propval {
      switch (model.mOrientation_property_selection) {
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

  final func addEBObserverOf_mOrientation (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_mOrientation.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
       v?.mOrientation_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_mOrientation (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_mOrientation.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.mOrientation_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································

  final func addEBObserversOf_mOrientation_toElementsOfSet (_ inSet : Set<LabelInSchematic>) {
    for managedObject in inSet {
      self.mObserversOf_mOrientation.apply { (_ observer : EBEvent) in
        managedObject.mOrientation_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_mOrientation_fromElementsOfSet (_ inSet : Set<LabelInSchematic>) {
    self.mObserversOf_mOrientation.apply { (_ observer : EBEvent) in
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.mOrientation_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'location' transient property
  //····················································································································

  private var mObserversOf_location = EBWeakEventSet ()

  //····················································································································

  var location_property_selection : EBSelection <CanariPoint?> {
    if let model = self.propval {
      switch (model.location_property_selection) {
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

  final func addEBObserverOf_location (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_location.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.location_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_location (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_location.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.location_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································

  final func addEBObserversOf_location_toElementsOfSet (_ inSet : Set<LabelInSchematic>) {
    for managedObject in inSet {
      self.mObserversOf_location.apply { (_ observer : EBEvent) in
        managedObject.location_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_location_fromElementsOfSet (_ inSet : Set<LabelInSchematic>) {
    for managedObject in inSet {
      self.mObserversOf_location.apply { (_ observer : EBEvent) in
        managedObject.location_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'netName' transient property
  //····················································································································

  private var mObserversOf_netName = EBWeakEventSet ()

  //····················································································································

  var netName_property_selection : EBSelection <String?> {
    if let model = self.propval {
      switch (model.netName_property_selection) {
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

  final func addEBObserverOf_netName (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_netName.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.netName_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_netName (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_netName.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.netName_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································

  final func addEBObserversOf_netName_toElementsOfSet (_ inSet : Set<LabelInSchematic>) {
    for managedObject in inSet {
      self.mObserversOf_netName.apply { (_ observer : EBEvent) in
        managedObject.netName_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_netName_fromElementsOfSet (_ inSet : Set<LabelInSchematic>) {
    for managedObject in inSet {
      self.mObserversOf_netName.apply { (_ observer : EBEvent) in
        managedObject.netName_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'selectionDisplay' transient property
  //····················································································································

  private var mObserversOf_selectionDisplay = EBWeakEventSet ()

  //····················································································································

  var selectionDisplay_property_selection : EBSelection <EBShape?> {
    if let model = self.propval {
      switch (model.selectionDisplay_property_selection) {
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

  final func addEBObserverOf_selectionDisplay (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_selectionDisplay.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.selectionDisplay_property.addEBObserver (inObserver)
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
      v?.selectionDisplay_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································

  final func addEBObserversOf_selectionDisplay_toElementsOfSet (_ inSet : Set<LabelInSchematic>) {
    for managedObject in inSet {
      self.mObserversOf_selectionDisplay.apply { (_ observer : EBEvent) in
        managedObject.selectionDisplay_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_selectionDisplay_fromElementsOfSet (_ inSet : Set<LabelInSchematic>) {
    for managedObject in inSet {
      self.mObserversOf_selectionDisplay.apply { (_ observer : EBEvent) in
        managedObject.selectionDisplay_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'netClassName' transient property
  //····················································································································

  private var mObserversOf_netClassName = EBWeakEventSet ()

  //····················································································································

  var netClassName_property_selection : EBSelection <String?> {
    if let model = self.propval {
      switch (model.netClassName_property_selection) {
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

  final func addEBObserverOf_netClassName (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_netClassName.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.netClassName_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_netClassName (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_netClassName.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.netClassName_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································

  final func addEBObserversOf_netClassName_toElementsOfSet (_ inSet : Set<LabelInSchematic>) {
    for managedObject in inSet {
      self.mObserversOf_netClassName.apply { (_ observer : EBEvent) in
        managedObject.netClassName_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_netClassName_fromElementsOfSet (_ inSet : Set<LabelInSchematic>) {
    for managedObject in inSet {
      self.mObserversOf_netClassName.apply { (_ observer : EBEvent) in
        managedObject.netClassName_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'objectDisplay' transient property
  //····················································································································

  private var mObserversOf_objectDisplay = EBWeakEventSet ()

  //····················································································································

  var objectDisplay_property_selection : EBSelection <EBShape?> {
    if let model = self.propval {
      switch (model.objectDisplay_property_selection) {
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

  final func addEBObserverOf_objectDisplay (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_objectDisplay.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.objectDisplay_property.addEBObserver (inObserver)
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
      v?.objectDisplay_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································

  final func addEBObserversOf_objectDisplay_toElementsOfSet (_ inSet : Set<LabelInSchematic>) {
    for managedObject in inSet {
      self.mObserversOf_objectDisplay.apply { (_ observer : EBEvent) in
        managedObject.objectDisplay_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_objectDisplay_fromElementsOfSet (_ inSet : Set<LabelInSchematic>) {
    for managedObject in inSet {
      self.mObserversOf_objectDisplay.apply { (_ observer : EBEvent) in
        managedObject.objectDisplay_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    TransientObject LabelInSchematic
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class TransientObject_LabelInSchematic : ReadOnlyObject_LabelInSchematic {

  //····················································································································
  //   Data provider
  //····················································································································

  private var mDataProvider : ReadOnlyObject_LabelInSchematic? = nil
  private var mTransientKind : PropertyKind = .empty

  //····················································································································

  func setDataProvider (_ inProvider : ReadOnlyObject_LabelInSchematic?) {
    if self.mDataProvider !== inProvider {
      self.mDataProvider?.detachClient (self)
      self.mDataProvider = inProvider
      self.mDataProvider?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newObject : LabelInSchematic? 
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

  override var prop : EBSelection < LabelInSchematic? > {
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

  override var propval : LabelInSchematic? { return self.mInternalValue }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    ReadWriteObject_LabelInSchematic
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class ReadWriteObject_LabelInSchematic : ReadOnlyObject_LabelInSchematic {

  //····················································································································
 
  func setProp (_ inValue : LabelInSchematic?) { } // Abstract method
  
  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    Proxy: ProxyObject_LabelInSchematic
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class ProxyObject_LabelInSchematic : ReadWriteObject_LabelInSchematic {

  //····················································································································

  private var mModel : ReadWriteObject_LabelInSchematic? = nil

  //····················································································································

  func setModel (_ inModel : ReadWriteObject_LabelInSchematic?) {
    if self.mModel !== inModel {
      self.mModel?.detachClient (self)
      self.mModel = inModel
      self.mModel?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newModel : LabelInSchematic?
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

  override func setProp (_ inValue : LabelInSchematic?) {
    self.mModel?.setProp (inValue)
  }

  //····················································································································

  override var prop : EBSelection < LabelInSchematic? > {
    if let model = self.mModel {
      return model.prop
    }else{
      return .empty
    }
  }

  //····················································································································

  override var propval : LabelInSchematic? {
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
//    StoredObject_LabelInSchematic 
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class StoredObject_LabelInSchematic : ReadWriteObject_LabelInSchematic, EBSignatureObserverProtocol {

  //····················································································································
  //   Undo manager
  //····················································································································

  weak var ebUndoManager : EBUndoManager? = nil // SOULD BE WEAK

 //····················································································································
  //   Opposite relationship management
  //····················································································································

  private var mSetOppositeRelationship : Optional < (_ inManagedObject : LabelInSchematic) -> Void > = nil
  private var mResetOppositeRelationship : Optional < (_ inManagedObject : LabelInSchematic) -> Void > = nil

  //····················································································································

  func setOppositeRelationShipFunctions (setter inSetter : @escaping (_ inManagedObject : LabelInSchematic) -> Void,
                                         resetter inResetter : @escaping (_ inManagedObject : LabelInSchematic) -> Void) {
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

  override func notifyModelDidChangeFrom (oldValue inOldValue : LabelInSchematic?) {
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

  @objc func performUndo (_ oldValue : LabelInSchematic?) {
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

  override var prop : EBSelection < LabelInSchematic? > {
    if let object = self.mInternalValue {
      return .single (object)
    }else{
      return .empty
    }
  }

  //····················································································································

  override func setProp (_ inValue : LabelInSchematic?) { self.mInternalValue = inValue }

  //····················································································································

  override var propval : LabelInSchematic? { return self.mInternalValue }

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

