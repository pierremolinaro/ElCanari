//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------
//    ReadOnlyObject_SymbolInstanceInDevice 
//----------------------------------------------------------------------------------------------------------------------

class ReadOnlyObject_SymbolInstanceInDevice : ReadOnlyAbstractObjectProperty <SymbolInstanceInDevice> {

  //····················································································································

  internal override func notifyModelDidChangeFrom (oldValue inOldValue : SymbolInstanceInDevice?) {
    super.notifyModelDidChangeFrom (oldValue: inOldValue)
  //--- Remove observers from removed objects
    if let oldValue = inOldValue {
 //     oldValue.mInstanceName_property.removeEBObserversFrom (&self.mObserversOf_mInstanceName) // Stored property
      oldValue.mInstanceName_property.removeEBObserver (self.mInstanceName_property) // Stored property
 //     oldValue.mX_property.removeEBObserversFrom (&self.mObserversOf_mX) // Stored property
      oldValue.mX_property.removeEBObserver (self.mX_property) // Stored property
 //     oldValue.mY_property.removeEBObserversFrom (&self.mObserversOf_mY) // Stored property
      oldValue.mY_property.removeEBObserver (self.mY_property) // Stored property
 //     oldValue.symbolQualifiedName_property.removeEBObserversFrom (&self.mObserversOf_symbolQualifiedName) // Transient property
      oldValue.symbolQualifiedName_property.removeEBObserver (self.symbolQualifiedName_property) // Transient property
 //     oldValue.symbolTypeName_property.removeEBObserversFrom (&self.mObserversOf_symbolTypeName) // Transient property
      oldValue.symbolTypeName_property.removeEBObserver (self.symbolTypeName_property) // Transient property
 //     oldValue.selectionDisplay_property.removeEBObserversFrom (&self.mObserversOf_selectionDisplay) // Transient property
      oldValue.selectionDisplay_property.removeEBObserver (self.selectionDisplay_property) // Transient property
 //     oldValue.unconnectedPins_property.removeEBObserversFrom (&self.mObserversOf_unconnectedPins) // Transient property
      oldValue.unconnectedPins_property.removeEBObserver (self.unconnectedPins_property) // Transient property
 //     oldValue.objectDisplay_property.removeEBObserversFrom (&self.mObserversOf_objectDisplay) // Transient property
      oldValue.objectDisplay_property.removeEBObserver (self.objectDisplay_property) // Transient property
    }
  //--- Add observers to added objects
    if let newValue = self.mInternalValue {
 //     newValue.mInstanceName_property.addEBObserversFrom (&self.mObserversOf_mInstanceName) // Stored property
      newValue.mInstanceName_property.addEBObserver (self.mInstanceName_property) // Stored property
 //     newValue.mX_property.addEBObserversFrom (&self.mObserversOf_mX) // Stored property
      newValue.mX_property.addEBObserver (self.mX_property) // Stored property
 //     newValue.mY_property.addEBObserversFrom (&self.mObserversOf_mY) // Stored property
      newValue.mY_property.addEBObserver (self.mY_property) // Stored property
  //    newValue.symbolQualifiedName_property.addEBObserversFrom (&self.mObserversOf_symbolQualifiedName) // Transient property
      newValue.symbolQualifiedName_property.addEBObserver (self.symbolQualifiedName_property) // Transient property
  //    newValue.symbolTypeName_property.addEBObserversFrom (&self.mObserversOf_symbolTypeName) // Transient property
      newValue.symbolTypeName_property.addEBObserver (self.symbolTypeName_property) // Transient property
  //    newValue.selectionDisplay_property.addEBObserversFrom (&self.mObserversOf_selectionDisplay) // Transient property
      newValue.selectionDisplay_property.addEBObserver (self.selectionDisplay_property) // Transient property
  //    newValue.unconnectedPins_property.addEBObserversFrom (&self.mObserversOf_unconnectedPins) // Transient property
      newValue.unconnectedPins_property.addEBObserver (self.unconnectedPins_property) // Transient property
  //    newValue.objectDisplay_property.addEBObserversFrom (&self.mObserversOf_objectDisplay) // Transient property
      newValue.objectDisplay_property.addEBObserver (self.objectDisplay_property) // Transient property
    }
  }

  //····················································································································
  //   Observers of 'mInstanceName' stored property
  //····················································································································

  final let mInstanceName_property = EBGenericTransientProperty <String?> ()
//  private final var mObserversOf_mInstanceName = EBWeakEventSet ()

  //····················································································································

  final var mInstanceName_property_selection : EBSelection <String?> { // §
    return self.mInstanceName_property.selection
  }

  //····················································································································

  final func addEBObserverOf_mInstanceName (_ inObserver : EBEvent) {
    self.mInstanceName_property.addEBObserver (inObserver)
/*    self.mObserversOf_mInstanceName.insert (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
       v?.mInstanceName_property.addEBObserver (inObserver)
    } */
  }

  //····················································································································

  final func removeEBObserverOf_mInstanceName (_ inObserver : EBEvent) {
    self.mInstanceName_property.removeEBObserver (inObserver)
/*    self.mObserversOf_mInstanceName.remove (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.mInstanceName_property.removeEBObserver (inObserver)
    } */
  }

  //····················································································································
  //   Observers of 'mX' stored property
  //····················································································································

  final let mX_property = EBGenericTransientProperty <Int?> ()
//  private final var mObserversOf_mX = EBWeakEventSet ()

  //····················································································································

  final var mX_property_selection : EBSelection <Int?> { // §
    return self.mX_property.selection
  }

  //····················································································································

  final func addEBObserverOf_mX (_ inObserver : EBEvent) {
    self.mX_property.addEBObserver (inObserver)
/*    self.mObserversOf_mX.insert (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
       v?.mX_property.addEBObserver (inObserver)
    } */
  }

  //····················································································································

  final func removeEBObserverOf_mX (_ inObserver : EBEvent) {
    self.mX_property.removeEBObserver (inObserver)
/*    self.mObserversOf_mX.remove (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.mX_property.removeEBObserver (inObserver)
    } */
  }

  //····················································································································
  //   Observers of 'mY' stored property
  //····················································································································

  final let mY_property = EBGenericTransientProperty <Int?> ()
//  private final var mObserversOf_mY = EBWeakEventSet ()

  //····················································································································

  final var mY_property_selection : EBSelection <Int?> { // §
    return self.mY_property.selection
  }

  //····················································································································

  final func addEBObserverOf_mY (_ inObserver : EBEvent) {
    self.mY_property.addEBObserver (inObserver)
/*    self.mObserversOf_mY.insert (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
       v?.mY_property.addEBObserver (inObserver)
    } */
  }

  //····················································································································

  final func removeEBObserverOf_mY (_ inObserver : EBEvent) {
    self.mY_property.removeEBObserver (inObserver)
/*    self.mObserversOf_mY.remove (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.mY_property.removeEBObserver (inObserver)
    } */
  }

  //····················································································································
  //   Observers of 'symbolQualifiedName' transient property
  //····················································································································

  final let symbolQualifiedName_property = EBGenericTransientProperty <String?> ()
//  private final var mObserversOf_symbolQualifiedName = EBWeakEventSet ()

  //····················································································································

  final var symbolQualifiedName_property_selection : EBSelection <String?> {
    return self.symbolQualifiedName_property.selection
  }

  //····················································································································

  final func addEBObserverOf_symbolQualifiedName (_ inObserver : EBEvent) {
    self.symbolQualifiedName_property.addEBObserver (inObserver)
/*    self.mObserversOf_symbolQualifiedName.insert (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.symbolQualifiedName_property.addEBObserver (inObserver)
    } */
  }

  //····················································································································

  final func removeEBObserverOf_symbolQualifiedName (_ inObserver : EBEvent) {
    self.symbolQualifiedName_property.removeEBObserver (inObserver)
/*    self.mObserversOf_symbolQualifiedName.remove (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.symbolQualifiedName_property.removeEBObserver (inObserver)
    }*/
  }

  //····················································································································
  //   Observers of 'symbolTypeName' transient property
  //····················································································································

  final let symbolTypeName_property = EBGenericTransientProperty <String?> ()
//  private final var mObserversOf_symbolTypeName = EBWeakEventSet ()

  //····················································································································

  final var symbolTypeName_property_selection : EBSelection <String?> {
    return self.symbolTypeName_property.selection
  }

  //····················································································································

  final func addEBObserverOf_symbolTypeName (_ inObserver : EBEvent) {
    self.symbolTypeName_property.addEBObserver (inObserver)
/*    self.mObserversOf_symbolTypeName.insert (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.symbolTypeName_property.addEBObserver (inObserver)
    } */
  }

  //····················································································································

  final func removeEBObserverOf_symbolTypeName (_ inObserver : EBEvent) {
    self.symbolTypeName_property.removeEBObserver (inObserver)
/*    self.mObserversOf_symbolTypeName.remove (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.symbolTypeName_property.removeEBObserver (inObserver)
    }*/
  }

  //····················································································································
  //   Observers of 'selectionDisplay' transient property
  //····················································································································

  final let selectionDisplay_property = EBGenericTransientProperty <EBShape?> ()
//  private final var mObserversOf_selectionDisplay = EBWeakEventSet ()

  //····················································································································

  final var selectionDisplay_property_selection : EBSelection <EBShape?> {
    return self.selectionDisplay_property.selection
  }

  //····················································································································

  final func addEBObserverOf_selectionDisplay (_ inObserver : EBEvent) {
    self.selectionDisplay_property.addEBObserver (inObserver)
/*    self.mObserversOf_selectionDisplay.insert (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.selectionDisplay_property.addEBObserver (inObserver)
    } */
  }

  //····················································································································

  final func removeEBObserverOf_selectionDisplay (_ inObserver : EBEvent) {
    self.selectionDisplay_property.removeEBObserver (inObserver)
/*    self.mObserversOf_selectionDisplay.remove (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.selectionDisplay_property.removeEBObserver (inObserver)
    }*/
  }

  //····················································································································
  //   Observers of 'unconnectedPins' transient property
  //····················································································································

  final let unconnectedPins_property = EBGenericTransientProperty <UnconnectedSymbolPinsInDevice?> ()
//  private final var mObserversOf_unconnectedPins = EBWeakEventSet ()

  //····················································································································

  final var unconnectedPins_property_selection : EBSelection <UnconnectedSymbolPinsInDevice?> {
    return self.unconnectedPins_property.selection
  }

  //····················································································································

  final func addEBObserverOf_unconnectedPins (_ inObserver : EBEvent) {
    self.unconnectedPins_property.addEBObserver (inObserver)
/*    self.mObserversOf_unconnectedPins.insert (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.unconnectedPins_property.addEBObserver (inObserver)
    } */
  }

  //····················································································································

  final func removeEBObserverOf_unconnectedPins (_ inObserver : EBEvent) {
    self.unconnectedPins_property.removeEBObserver (inObserver)
/*    self.mObserversOf_unconnectedPins.remove (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.unconnectedPins_property.removeEBObserver (inObserver)
    }*/
  }

  //····················································································································
  //   Observers of 'objectDisplay' transient property
  //····················································································································

  final let objectDisplay_property = EBGenericTransientProperty <EBShape?> ()
//  private final var mObserversOf_objectDisplay = EBWeakEventSet ()

  //····················································································································

  final var objectDisplay_property_selection : EBSelection <EBShape?> {
    return self.objectDisplay_property.selection
  }

  //····················································································································

  final func addEBObserverOf_objectDisplay (_ inObserver : EBEvent) {
    self.objectDisplay_property.addEBObserver (inObserver)
/*    self.mObserversOf_objectDisplay.insert (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.objectDisplay_property.addEBObserver (inObserver)
    } */
  }

  //····················································································································

  final func removeEBObserverOf_objectDisplay (_ inObserver : EBEvent) {
    self.objectDisplay_property.removeEBObserver (inObserver)
/*    self.mObserversOf_objectDisplay.remove (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.objectDisplay_property.removeEBObserver (inObserver)
    }*/
  }

  //····················································································································
  //   Observable toMany property: mPinInstances
  //····················································································································

  private final var mObserversOf_mPinInstances = EBWeakEventSet ()

  //····················································································································

  final var mPinInstances_property_selection : EBSelection <[SymbolPinInstanceInDevice]> {
    if let model = self.propval {
      switch (model.mPinInstances_property.selection) {
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

  final func addEBObserverOf_mPinInstances (_ inObserver : EBEvent) {
    self.mObserversOf_mPinInstances.insert (inObserver)
    if let object = self.propval {
      object.mPinInstances_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_mPinInstances (_ inObserver : EBEvent) {
    self.mObserversOf_mPinInstances.remove (inObserver)
    if let object = self.propval {
      object.mPinInstances_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································
  //   INIT 
  //····················································································································

  override init () {
    super.init ()
  //--- Configure mInstanceName simple stored property
    self.mInstanceName_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.mInstanceName_property.selection {
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
  //--- Configure mX simple stored property
    self.mX_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.mX_property.selection {
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
  //--- Configure mY simple stored property
    self.mY_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.mY_property.selection {
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
  //--- Configure symbolQualifiedName transient property
    self.symbolQualifiedName_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.symbolQualifiedName_property.selection {
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
  //--- Configure symbolTypeName transient property
    self.symbolTypeName_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.symbolTypeName_property.selection {
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
  //--- Configure selectionDisplay transient property
    self.selectionDisplay_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.selectionDisplay_property.selection {
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
  //--- Configure unconnectedPins transient property
    self.unconnectedPins_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.unconnectedPins_property.selection {
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
  //--- Configure objectDisplay transient property
    self.objectDisplay_property.mReadModelFunction = { [weak self] in
      if let model = self?.mInternalValue {
        switch model.objectDisplay_property.selection {
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
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//   TransientObject SymbolInstanceInDevice
//----------------------------------------------------------------------------------------------------------------------

final class TransientObject_SymbolInstanceInDevice : ReadOnlyObject_SymbolInstanceInDevice {

  //····················································································································
  //   Data provider
  //····················································································································

  private var mDataProvider : ReadOnlyObject_SymbolInstanceInDevice? = nil
  private var mTransientKind : PropertyKind = .empty

  //····················································································································

  func setDataProvider (_ inProvider : ReadOnlyObject_SymbolInstanceInDevice?) {
    if self.mDataProvider !== inProvider {
      self.mDataProvider?.detachClient (self)
      self.mDataProvider = inProvider
      self.mDataProvider?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newObject : SymbolInstanceInDevice? 
    if let dataProvider = self.mDataProvider {
      switch dataProvider.selection {
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

  override var selection : EBSelection < SymbolInstanceInDevice? > {
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

  override var propval : SymbolInstanceInDevice? { return self.mInternalValue }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//    ReadWriteObject_SymbolInstanceInDevice
//----------------------------------------------------------------------------------------------------------------------

class ReadWriteObject_SymbolInstanceInDevice : ReadOnlyObject_SymbolInstanceInDevice {

  //····················································································································
 
  func setProp (_ inValue : SymbolInstanceInDevice?) { } // Abstract method
  
  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//    Proxy: ProxyObject_SymbolInstanceInDevice
//----------------------------------------------------------------------------------------------------------------------

final class ProxyObject_SymbolInstanceInDevice : ReadWriteObject_SymbolInstanceInDevice {

  //····················································································································

  private var mModel : ReadWriteObject_SymbolInstanceInDevice? = nil

  //····················································································································

  func setModel (_ inModel : ReadWriteObject_SymbolInstanceInDevice?) {
    if self.mModel !== inModel {
      self.mModel?.detachClient (self)
      self.mModel = inModel
      self.mModel?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newModel : SymbolInstanceInDevice?
    if let model = self.mModel {
      switch model.selection {
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

  override func setProp (_ inValue : SymbolInstanceInDevice?) {
    self.mModel?.setProp (inValue)
  }

  //····················································································································

  override var selection : EBSelection < SymbolInstanceInDevice? > {
    if let model = self.mModel {
      return model.selection
    }else{
      return .empty
    }
  }

  //····················································································································

  override var propval : SymbolInstanceInDevice? {
    if let model = self.mModel {
      switch model.selection {
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
//    StoredObject_SymbolInstanceInDevice 
//----------------------------------------------------------------------------------------------------------------------

final class StoredObject_SymbolInstanceInDevice : ReadWriteObject_SymbolInstanceInDevice, EBSignatureObserverProtocol, EBObservableObjectProtocol {

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

  weak final var ebUndoManager : EBUndoManager? = nil // SOULD BE WEAK

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

  var mValueExplorer : NSButton? {
    didSet {
      if let unwrappedExplorer = self.mValueExplorer {
        switch self.selection {
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

  override func notifyModelDidChangeFrom (oldValue inOldValue : SymbolInstanceInDevice?) {
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

  override var selection : EBSelection < SymbolInstanceInDevice? > {
    if let object = self.mInternalValue {
      return .single (object)
    }else{
      return .empty
    }
  }

  //····················································································································

  override func setProp (_ inValue : SymbolInstanceInDevice?) { self.mInternalValue = inValue }

  //····················································································································

  override var propval : SymbolInstanceInDevice? { return self.mInternalValue }

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

