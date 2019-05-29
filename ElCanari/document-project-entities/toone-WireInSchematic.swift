//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    ReadOnlyObject_WireInSchematic 
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class ReadOnlyObject_WireInSchematic : ReadOnlyAbstractObjectProperty <WireInSchematic> {

  //····················································································································

  internal override func notifyModelDidChangeFrom (oldValue inOldValue : WireInSchematic?) {
    super.notifyModelDidChangeFrom (oldValue: inOldValue)
  //--- Remove observers from removed objects
    inOldValue?.objectDisplay_property.removeEBObserversFrom (&self.mObserversOf_objectDisplay) // Transient property
    inOldValue?.selectionDisplay_property.removeEBObserversFrom (&self.mObserversOf_selectionDisplay) // Transient property
    inOldValue?.netName_property.removeEBObserversFrom (&self.mObserversOf_netName) // Transient property
    inOldValue?.hasNet_property.removeEBObserversFrom (&self.mObserversOf_hasNet) // Transient property
  //--- Add observers to added objects
    self.mInternalValue?.objectDisplay_property.addEBObserversFrom (&self.mObserversOf_objectDisplay) // Transient property
    self.mInternalValue?.selectionDisplay_property.addEBObserversFrom (&self.mObserversOf_selectionDisplay) // Transient property
    self.mInternalValue?.netName_property.addEBObserversFrom (&self.mObserversOf_netName) // Transient property
    self.mInternalValue?.hasNet_property.addEBObserversFrom (&self.mObserversOf_hasNet) // Transient property
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

  final func addEBObserversOf_objectDisplay_toElementsOfSet (_ inSet : Set<WireInSchematic>) {
    for managedObject in inSet {
      self.mObserversOf_objectDisplay.apply { (_ observer : EBEvent) in
        managedObject.objectDisplay_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_objectDisplay_fromElementsOfSet (_ inSet : Set<WireInSchematic>) {
    for managedObject in inSet {
      self.mObserversOf_objectDisplay.apply { (_ observer : EBEvent) in
        managedObject.objectDisplay_property.removeEBObserver (observer)
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

  final func addEBObserversOf_selectionDisplay_toElementsOfSet (_ inSet : Set<WireInSchematic>) {
    for managedObject in inSet {
      self.mObserversOf_selectionDisplay.apply { (_ observer : EBEvent) in
        managedObject.selectionDisplay_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_selectionDisplay_fromElementsOfSet (_ inSet : Set<WireInSchematic>) {
    for managedObject in inSet {
      self.mObserversOf_selectionDisplay.apply { (_ observer : EBEvent) in
        managedObject.selectionDisplay_property.removeEBObserver (observer)
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

  final func addEBObserversOf_netName_toElementsOfSet (_ inSet : Set<WireInSchematic>) {
    for managedObject in inSet {
      self.mObserversOf_netName.apply { (_ observer : EBEvent) in
        managedObject.netName_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_netName_fromElementsOfSet (_ inSet : Set<WireInSchematic>) {
    for managedObject in inSet {
      self.mObserversOf_netName.apply { (_ observer : EBEvent) in
        managedObject.netName_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'hasNet' transient property
  //····················································································································

  private var mObserversOf_hasNet = EBWeakEventSet ()

  //····················································································································

  var hasNet_property_selection : EBSelection <Bool?> {
    if let model = self.propval {
      switch (model.hasNet_property_selection) {
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

  final func addEBObserverOf_hasNet (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_hasNet.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.hasNet_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_hasNet (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_hasNet.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.hasNet_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································

  final func addEBObserversOf_hasNet_toElementsOfSet (_ inSet : Set<WireInSchematic>) {
    for managedObject in inSet {
      self.mObserversOf_hasNet.apply { (_ observer : EBEvent) in
        managedObject.hasNet_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_hasNet_fromElementsOfSet (_ inSet : Set<WireInSchematic>) {
    for managedObject in inSet {
      self.mObserversOf_hasNet.apply { (_ observer : EBEvent) in
        managedObject.hasNet_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    TransientObject WireInSchematic
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class TransientObject_WireInSchematic : ReadOnlyObject_WireInSchematic {

  //····················································································································
  //   Data provider
  //····················································································································

  private var mDataProvider : ReadOnlyObject_WireInSchematic? = nil
  private var mTransientKind : PropertyKind = .empty

  //····················································································································

  func setDataProvider (_ inProvider : ReadOnlyObject_WireInSchematic?) {
    if self.mDataProvider !== inProvider {
      self.mDataProvider?.detachClient (self)
      self.mDataProvider = inProvider
      self.mDataProvider?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newObject : WireInSchematic? 
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

  override var prop : EBSelection < WireInSchematic? > {
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

  override var propval : WireInSchematic? { return self.mInternalValue }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    ReadWriteObject_WireInSchematic
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class ReadWriteObject_WireInSchematic : ReadOnlyObject_WireInSchematic {

  //····················································································································
 
  func setProp (_ inValue : WireInSchematic?) { } // Abstract method
  
  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    Proxy: ProxyObject_WireInSchematic
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class ProxyObject_WireInSchematic : ReadWriteObject_WireInSchematic {

  //····················································································································

  private var mModel : ReadWriteObject_WireInSchematic? = nil

  //····················································································································

  func setModel (_ inModel : ReadWriteObject_WireInSchematic?) {
    if self.mModel !== inModel {
      self.mModel?.detachClient (self)
      self.mModel = inModel
      self.mModel?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newModel : WireInSchematic?
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

  override func setProp (_ inValue : WireInSchematic?) {
    self.mModel?.setProp (inValue)
  }

  //····················································································································

  override var prop : EBSelection < WireInSchematic? > {
    if let model = self.mModel {
      return model.prop
    }else{
      return .empty
    }
  }

  //····················································································································

  override var propval : WireInSchematic? {
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
//    StoredObject_WireInSchematic 
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class StoredObject_WireInSchematic : ReadWriteObject_WireInSchematic, EBSignatureObserverProtocol {

  //····················································································································
  //   Opposite relationship management
  //····················································································································

  private var mSetOppositeRelationship : Optional < (_ inManagedObject : WireInSchematic) -> Void > = nil
  private var mResetOppositeRelationship : Optional < (_ inManagedObject : WireInSchematic) -> Void > = nil

  //····················································································································

  func setOppositeRelationShipFunctions (setter inSetter : @escaping (_ inManagedObject : WireInSchematic) -> Void,
                                         resetter inResetter : @escaping (_ inManagedObject : WireInSchematic) -> Void) {
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

  override func notifyModelDidChangeFrom (oldValue inOldValue : WireInSchematic?) {
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

  @objc func performUndo (_ oldValue : WireInSchematic?) {
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

  override var prop : EBSelection < WireInSchematic? > {
    if let object = self.mInternalValue {
      return .single (object)
    }else{
      return .empty
    }
  }

  //····················································································································

  override func setProp (_ inValue : WireInSchematic?) { self.mInternalValue = inValue }

  //····················································································································

  override var propval : WireInSchematic? { return self.mInternalValue }

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

