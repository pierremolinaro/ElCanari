//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------
//    ReadOnlyObject_SymbolPinInstanceInDevice 
//----------------------------------------------------------------------------------------------------------------------

class ReadOnlyObject_SymbolPinInstanceInDevice : ReadOnlyAbstractObjectProperty <SymbolPinInstanceInDevice> {

  //····················································································································

  internal override func notifyModelDidChangeFrom (oldValue inOldValue : SymbolPinInstanceInDevice?) {
    super.notifyModelDidChangeFrom (oldValue: inOldValue)
  //--- Remove observers from removed objects
    inOldValue?.pinName_property.removeEBObserversFrom (&self.mObserversOf_pinName) // Transient property
    inOldValue?.symbolName_property.removeEBObserversFrom (&self.mObserversOf_symbolName) // Transient property
    inOldValue?.pinQualifiedName_property.removeEBObserversFrom (&self.mObserversOf_pinQualifiedName) // Transient property
    inOldValue?.isConnected_property.removeEBObserversFrom (&self.mObserversOf_isConnected) // Transient property
    inOldValue?.numberShape_property.removeEBObserversFrom (&self.mObserversOf_numberShape) // Transient property
  //--- Add observers to added objects
    self.mInternalValue?.pinName_property.addEBObserversFrom (&self.mObserversOf_pinName) // Transient property
    self.mInternalValue?.symbolName_property.addEBObserversFrom (&self.mObserversOf_symbolName) // Transient property
    self.mInternalValue?.pinQualifiedName_property.addEBObserversFrom (&self.mObserversOf_pinQualifiedName) // Transient property
    self.mInternalValue?.isConnected_property.addEBObserversFrom (&self.mObserversOf_isConnected) // Transient property
    self.mInternalValue?.numberShape_property.addEBObserversFrom (&self.mObserversOf_numberShape) // Transient property
  }

  //····················································································································
  //   Observers of 'pinName' transient property
  //····················································································································

  private var mObserversOf_pinName = EBWeakEventSet ()

  //····················································································································

  var pinName_property_selection : EBSelection <String?> {
    if let model = self.propval {
      switch (model.pinName_property_selection) {
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

  final func addEBObserverOf_pinName (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_pinName.insert (inObserver)
    switch self.prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.pinName_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_pinName (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_pinName.remove (inObserver)
    switch self.prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.pinName_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································

  final func addEBObserversOf_pinName_toElementsOfSet (_ inSet : Set<SymbolPinInstanceInDevice>) {
    for managedObject in inSet {
      self.mObserversOf_pinName.apply { (_ observer : EBEvent) in
        managedObject.pinName_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_pinName_fromElementsOfSet (_ inSet : Set<SymbolPinInstanceInDevice>) {
    for managedObject in inSet {
      self.mObserversOf_pinName.apply { (_ observer : EBEvent) in
        managedObject.pinName_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'symbolName' transient property
  //····················································································································

  private var mObserversOf_symbolName = EBWeakEventSet ()

  //····················································································································

  var symbolName_property_selection : EBSelection <String?> {
    if let model = self.propval {
      switch (model.symbolName_property_selection) {
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

  final func addEBObserverOf_symbolName (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_symbolName.insert (inObserver)
    switch self.prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.symbolName_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_symbolName (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_symbolName.remove (inObserver)
    switch self.prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.symbolName_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································

  final func addEBObserversOf_symbolName_toElementsOfSet (_ inSet : Set<SymbolPinInstanceInDevice>) {
    for managedObject in inSet {
      self.mObserversOf_symbolName.apply { (_ observer : EBEvent) in
        managedObject.symbolName_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_symbolName_fromElementsOfSet (_ inSet : Set<SymbolPinInstanceInDevice>) {
    for managedObject in inSet {
      self.mObserversOf_symbolName.apply { (_ observer : EBEvent) in
        managedObject.symbolName_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'pinQualifiedName' transient property
  //····················································································································

  private var mObserversOf_pinQualifiedName = EBWeakEventSet ()

  //····················································································································

  var pinQualifiedName_property_selection : EBSelection <PinQualifiedNameStruct?> {
    if let model = self.propval {
      switch (model.pinQualifiedName_property_selection) {
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

  final func addEBObserverOf_pinQualifiedName (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_pinQualifiedName.insert (inObserver)
    switch self.prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.pinQualifiedName_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_pinQualifiedName (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_pinQualifiedName.remove (inObserver)
    switch self.prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.pinQualifiedName_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································

  final func addEBObserversOf_pinQualifiedName_toElementsOfSet (_ inSet : Set<SymbolPinInstanceInDevice>) {
    for managedObject in inSet {
      self.mObserversOf_pinQualifiedName.apply { (_ observer : EBEvent) in
        managedObject.pinQualifiedName_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_pinQualifiedName_fromElementsOfSet (_ inSet : Set<SymbolPinInstanceInDevice>) {
    for managedObject in inSet {
      self.mObserversOf_pinQualifiedName.apply { (_ observer : EBEvent) in
        managedObject.pinQualifiedName_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'isConnected' transient property
  //····················································································································

  private var mObserversOf_isConnected = EBWeakEventSet ()

  //····················································································································

  var isConnected_property_selection : EBSelection <Bool?> {
    if let model = self.propval {
      switch (model.isConnected_property_selection) {
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

  final func addEBObserverOf_isConnected (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_isConnected.insert (inObserver)
    switch self.prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.isConnected_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_isConnected (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_isConnected.remove (inObserver)
    switch self.prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.isConnected_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································

  final func addEBObserversOf_isConnected_toElementsOfSet (_ inSet : Set<SymbolPinInstanceInDevice>) {
    for managedObject in inSet {
      self.mObserversOf_isConnected.apply { (_ observer : EBEvent) in
        managedObject.isConnected_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_isConnected_fromElementsOfSet (_ inSet : Set<SymbolPinInstanceInDevice>) {
    for managedObject in inSet {
      self.mObserversOf_isConnected.apply { (_ observer : EBEvent) in
        managedObject.isConnected_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'numberShape' transient property
  //····················································································································

  private var mObserversOf_numberShape = EBWeakEventSet ()

  //····················································································································

  var numberShape_property_selection : EBSelection <EBShape?> {
    if let model = self.propval {
      switch (model.numberShape_property_selection) {
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

  final func addEBObserverOf_numberShape (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_numberShape.insert (inObserver)
    switch self.prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.numberShape_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_numberShape (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_numberShape.remove (inObserver)
    switch self.prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.numberShape_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································

  final func addEBObserversOf_numberShape_toElementsOfSet (_ inSet : Set<SymbolPinInstanceInDevice>) {
    for managedObject in inSet {
      self.mObserversOf_numberShape.apply { (_ observer : EBEvent) in
        managedObject.numberShape_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_numberShape_fromElementsOfSet (_ inSet : Set<SymbolPinInstanceInDevice>) {
    for managedObject in inSet {
      self.mObserversOf_numberShape.apply { (_ observer : EBEvent) in
        managedObject.numberShape_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//    TransientObject SymbolPinInstanceInDevice
//----------------------------------------------------------------------------------------------------------------------

class TransientObject_SymbolPinInstanceInDevice : ReadOnlyObject_SymbolPinInstanceInDevice {

  //····················································································································
  //   Data provider
  //····················································································································

  private var mDataProvider : ReadOnlyObject_SymbolPinInstanceInDevice? = nil
  private var mTransientKind : PropertyKind = .empty

  //····················································································································

  func setDataProvider (_ inProvider : ReadOnlyObject_SymbolPinInstanceInDevice?) {
    if self.mDataProvider !== inProvider {
      self.mDataProvider?.detachClient (self)
      self.mDataProvider = inProvider
      self.mDataProvider?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newObject : SymbolPinInstanceInDevice? 
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

  override var prop : EBSelection < SymbolPinInstanceInDevice? > {
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

  override var propval : SymbolPinInstanceInDevice? { return self.mInternalValue }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//    ReadWriteObject_SymbolPinInstanceInDevice
//----------------------------------------------------------------------------------------------------------------------

class ReadWriteObject_SymbolPinInstanceInDevice : ReadOnlyObject_SymbolPinInstanceInDevice {

  //····················································································································
 
  func setProp (_ inValue : SymbolPinInstanceInDevice?) { } // Abstract method
  
  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//    Proxy: ProxyObject_SymbolPinInstanceInDevice
//----------------------------------------------------------------------------------------------------------------------

final class ProxyObject_SymbolPinInstanceInDevice : ReadWriteObject_SymbolPinInstanceInDevice {

  //····················································································································

  private var mModel : ReadWriteObject_SymbolPinInstanceInDevice? = nil

  //····················································································································

  func setModel (_ inModel : ReadWriteObject_SymbolPinInstanceInDevice?) {
    if self.mModel !== inModel {
      self.mModel?.detachClient (self)
      self.mModel = inModel
      self.mModel?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newModel : SymbolPinInstanceInDevice?
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

  override func setProp (_ inValue : SymbolPinInstanceInDevice?) {
    self.mModel?.setProp (inValue)
  }

  //····················································································································

  override var prop : EBSelection < SymbolPinInstanceInDevice? > {
    if let model = self.mModel {
      return model.prop
    }else{
      return .empty
    }
  }

  //····················································································································

  override var propval : SymbolPinInstanceInDevice? {
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

//----------------------------------------------------------------------------------------------------------------------
//    StoredObject_SymbolPinInstanceInDevice 
//----------------------------------------------------------------------------------------------------------------------

final class StoredObject_SymbolPinInstanceInDevice : ReadWriteObject_SymbolPinInstanceInDevice, EBSignatureObserverProtocol, EBObservableObjectProtocol {

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

  private var mSetOppositeRelationship : Optional < (_ inManagedObject : SymbolPinInstanceInDevice) -> Void > = nil
  private var mResetOppositeRelationship : Optional < (_ inManagedObject : SymbolPinInstanceInDevice) -> Void > = nil

  //····················································································································

  func setOppositeRelationShipFunctions (setter inSetter : @escaping (_ inManagedObject : SymbolPinInstanceInDevice) -> Void,
                                         resetter inResetter : @escaping (_ inManagedObject : SymbolPinInstanceInDevice) -> Void) {
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

  override func notifyModelDidChangeFrom (oldValue inOldValue : SymbolPinInstanceInDevice?) {
  //--- Register old value in undo manager
    self.ebUndoManager?.registerUndo (withTarget: self) { $0.mInternalValue = inOldValue }
  //---
    if let object = inOldValue {
      if self.mUsedForSignature {
        object.setSignatureObserver (observer: nil)
      }
      self.mResetOppositeRelationship? (object)
    }
  //---
    if let object = self.mInternalValue {
      if self.mUsedForSignature {
        object.setSignatureObserver (observer: self)
      }
      self.mSetOppositeRelationship? (object)
    }
  //---
    super.notifyModelDidChangeFrom (oldValue: inOldValue)
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

  override var prop : EBSelection < SymbolPinInstanceInDevice? > {
    if let object = self.mInternalValue {
      return .single (object)
    }else{
      return .empty
    }
  }

  //····················································································································

  override func setProp (_ inValue : SymbolPinInstanceInDevice?) { self.mInternalValue = inValue }

  //····················································································································

  override var propval : SymbolPinInstanceInDevice? { return self.mInternalValue }

  //····················································································································
  //   signature
  //····················································································································

  private weak var mSignatureObserver : EBSignatureObserverProtocol? = nil // SOULD BE WEAK

  //····················································································································

  private var mSignatureCache : UInt32? = nil

  //····················································································································

  final func setSignatureObserver (observer inObserver : EBSignatureObserverProtocol?) {
    self.mSignatureObserver?.clearSignatureCache ()
    self.mSignatureObserver = inObserver
    inObserver?.clearSignatureCache ()
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

//----------------------------------------------------------------------------------------------------------------------

