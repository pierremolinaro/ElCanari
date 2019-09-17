//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    ReadOnlyObject_DeviceSymbolInstanceInProject 
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class ReadOnlyObject_DeviceSymbolInstanceInProject : ReadOnlyAbstractObjectProperty <DeviceSymbolInstanceInProject> {

  //····················································································································

  internal override func notifyModelDidChangeFrom (oldValue inOldValue : DeviceSymbolInstanceInProject?) {
    super.notifyModelDidChangeFrom (oldValue: inOldValue)
  //--- Remove observers from removed objects
    inOldValue?.mSymbolInstanceName_property.removeEBObserversFrom (&self.mObserversOf_mSymbolInstanceName) // Stored property
    inOldValue?.symbolAndTypeName_property.removeEBObserversFrom (&self.mObserversOf_symbolAndTypeName) // Transient property
    inOldValue?.symbolTypeName_property.removeEBObserversFrom (&self.mObserversOf_symbolTypeName) // Transient property
    inOldValue?.filledBezierPath_property.removeEBObserversFrom (&self.mObserversOf_filledBezierPath) // Transient property
    inOldValue?.strokeBezierPath_property.removeEBObserversFrom (&self.mObserversOf_strokeBezierPath) // Transient property
  //--- Add observers to added objects
    self.mInternalValue?.mSymbolInstanceName_property.addEBObserversFrom (&self.mObserversOf_mSymbolInstanceName) // Stored property
    self.mInternalValue?.symbolAndTypeName_property.addEBObserversFrom (&self.mObserversOf_symbolAndTypeName) // Transient property
    self.mInternalValue?.symbolTypeName_property.addEBObserversFrom (&self.mObserversOf_symbolTypeName) // Transient property
    self.mInternalValue?.filledBezierPath_property.addEBObserversFrom (&self.mObserversOf_filledBezierPath) // Transient property
    self.mInternalValue?.strokeBezierPath_property.addEBObserversFrom (&self.mObserversOf_strokeBezierPath) // Transient property
  }

  //····················································································································
  //   Observers of 'mSymbolInstanceName' stored property
  //····················································································································

  private var mObserversOf_mSymbolInstanceName = EBWeakEventSet ()

  //····················································································································

  var mSymbolInstanceName_property_selection : EBSelection <String?> {
    if let model = self.propval {
      switch (model.mSymbolInstanceName_property_selection) {
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

  final func addEBObserverOf_mSymbolInstanceName (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_mSymbolInstanceName.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
       v?.mSymbolInstanceName_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_mSymbolInstanceName (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_mSymbolInstanceName.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.mSymbolInstanceName_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································

  final func addEBObserversOf_mSymbolInstanceName_toElementsOfSet (_ inSet : Set<DeviceSymbolInstanceInProject>) {
    for managedObject in inSet {
      self.mObserversOf_mSymbolInstanceName.apply { (_ observer : EBEvent) in
        managedObject.mSymbolInstanceName_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_mSymbolInstanceName_fromElementsOfSet (_ inSet : Set<DeviceSymbolInstanceInProject>) {
    self.mObserversOf_mSymbolInstanceName.apply { (_ observer : EBEvent) in
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.mSymbolInstanceName_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'symbolAndTypeName' transient property
  //····················································································································

  private var mObserversOf_symbolAndTypeName = EBWeakEventSet ()

  //····················································································································

  var symbolAndTypeName_property_selection : EBSelection <SymbolInProjectIdentifier?> {
    if let model = self.propval {
      switch (model.symbolAndTypeName_property_selection) {
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

  final func addEBObserverOf_symbolAndTypeName (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_symbolAndTypeName.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.symbolAndTypeName_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_symbolAndTypeName (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_symbolAndTypeName.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.symbolAndTypeName_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································

  final func addEBObserversOf_symbolAndTypeName_toElementsOfSet (_ inSet : Set<DeviceSymbolInstanceInProject>) {
    for managedObject in inSet {
      self.mObserversOf_symbolAndTypeName.apply { (_ observer : EBEvent) in
        managedObject.symbolAndTypeName_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_symbolAndTypeName_fromElementsOfSet (_ inSet : Set<DeviceSymbolInstanceInProject>) {
    for managedObject in inSet {
      self.mObserversOf_symbolAndTypeName.apply { (_ observer : EBEvent) in
        managedObject.symbolAndTypeName_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'symbolTypeName' transient property
  //····················································································································

  private var mObserversOf_symbolTypeName = EBWeakEventSet ()

  //····················································································································

  var symbolTypeName_property_selection : EBSelection <String?> {
    if let model = self.propval {
      switch (model.symbolTypeName_property_selection) {
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

  final func addEBObserverOf_symbolTypeName (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_symbolTypeName.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.symbolTypeName_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_symbolTypeName (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_symbolTypeName.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.symbolTypeName_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································

  final func addEBObserversOf_symbolTypeName_toElementsOfSet (_ inSet : Set<DeviceSymbolInstanceInProject>) {
    for managedObject in inSet {
      self.mObserversOf_symbolTypeName.apply { (_ observer : EBEvent) in
        managedObject.symbolTypeName_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_symbolTypeName_fromElementsOfSet (_ inSet : Set<DeviceSymbolInstanceInProject>) {
    for managedObject in inSet {
      self.mObserversOf_symbolTypeName.apply { (_ observer : EBEvent) in
        managedObject.symbolTypeName_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'filledBezierPath' transient property
  //····················································································································

  private var mObserversOf_filledBezierPath = EBWeakEventSet ()

  //····················································································································

  var filledBezierPath_property_selection : EBSelection <NSBezierPath?> {
    if let model = self.propval {
      switch (model.filledBezierPath_property_selection) {
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

  final func addEBObserverOf_filledBezierPath (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_filledBezierPath.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.filledBezierPath_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_filledBezierPath (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_filledBezierPath.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.filledBezierPath_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································

  final func addEBObserversOf_filledBezierPath_toElementsOfSet (_ inSet : Set<DeviceSymbolInstanceInProject>) {
    for managedObject in inSet {
      self.mObserversOf_filledBezierPath.apply { (_ observer : EBEvent) in
        managedObject.filledBezierPath_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_filledBezierPath_fromElementsOfSet (_ inSet : Set<DeviceSymbolInstanceInProject>) {
    for managedObject in inSet {
      self.mObserversOf_filledBezierPath.apply { (_ observer : EBEvent) in
        managedObject.filledBezierPath_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'strokeBezierPath' transient property
  //····················································································································

  private var mObserversOf_strokeBezierPath = EBWeakEventSet ()

  //····················································································································

  var strokeBezierPath_property_selection : EBSelection <NSBezierPath?> {
    if let model = self.propval {
      switch (model.strokeBezierPath_property_selection) {
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

  final func addEBObserverOf_strokeBezierPath (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_strokeBezierPath.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.strokeBezierPath_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_strokeBezierPath (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_strokeBezierPath.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.strokeBezierPath_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································

  final func addEBObserversOf_strokeBezierPath_toElementsOfSet (_ inSet : Set<DeviceSymbolInstanceInProject>) {
    for managedObject in inSet {
      self.mObserversOf_strokeBezierPath.apply { (_ observer : EBEvent) in
        managedObject.strokeBezierPath_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_strokeBezierPath_fromElementsOfSet (_ inSet : Set<DeviceSymbolInstanceInProject>) {
    for managedObject in inSet {
      self.mObserversOf_strokeBezierPath.apply { (_ observer : EBEvent) in
        managedObject.strokeBezierPath_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    TransientObject DeviceSymbolInstanceInProject
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class TransientObject_DeviceSymbolInstanceInProject : ReadOnlyObject_DeviceSymbolInstanceInProject {

  //····················································································································
  //   Data provider
  //····················································································································

  private var mDataProvider : ReadOnlyObject_DeviceSymbolInstanceInProject? = nil
  private var mTransientKind : PropertyKind = .empty

  //····················································································································

  func setDataProvider (_ inProvider : ReadOnlyObject_DeviceSymbolInstanceInProject?) {
    if self.mDataProvider !== inProvider {
      self.mDataProvider?.detachClient (self)
      self.mDataProvider = inProvider
      self.mDataProvider?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newObject : DeviceSymbolInstanceInProject? 
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

  override var prop : EBSelection < DeviceSymbolInstanceInProject? > {
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

  override var propval : DeviceSymbolInstanceInProject? { return self.mInternalValue }

  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    ReadWriteObject_DeviceSymbolInstanceInProject
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class ReadWriteObject_DeviceSymbolInstanceInProject : ReadOnlyObject_DeviceSymbolInstanceInProject {

  //····················································································································
 
  func setProp (_ inValue : DeviceSymbolInstanceInProject?) { } // Abstract method
  
  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    Proxy: ProxyObject_DeviceSymbolInstanceInProject
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class ProxyObject_DeviceSymbolInstanceInProject : ReadWriteObject_DeviceSymbolInstanceInProject {

  //····················································································································

  private var mModel : ReadWriteObject_DeviceSymbolInstanceInProject? = nil

  //····················································································································

  func setModel (_ inModel : ReadWriteObject_DeviceSymbolInstanceInProject?) {
    if self.mModel !== inModel {
      self.mModel?.detachClient (self)
      self.mModel = inModel
      self.mModel?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newModel : DeviceSymbolInstanceInProject?
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

  override func setProp (_ inValue : DeviceSymbolInstanceInProject?) {
    self.mModel?.setProp (inValue)
  }

  //····················································································································

  override var prop : EBSelection < DeviceSymbolInstanceInProject? > {
    if let model = self.mModel {
      return model.prop
    }else{
      return .empty
    }
  }

  //····················································································································

  override var propval : DeviceSymbolInstanceInProject? {
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
//    StoredObject_DeviceSymbolInstanceInProject 
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class StoredObject_DeviceSymbolInstanceInProject : ReadWriteObject_DeviceSymbolInstanceInProject, EBSignatureObserverProtocol {

  //····················································································································
  //   Undo manager
  //····················································································································

  weak var ebUndoManager : EBUndoManager? = nil // SOULD BE WEAK

 //····················································································································
  //   Opposite relationship management
  //····················································································································

  private var mSetOppositeRelationship : Optional < (_ inManagedObject : DeviceSymbolInstanceInProject) -> Void > = nil
  private var mResetOppositeRelationship : Optional < (_ inManagedObject : DeviceSymbolInstanceInProject) -> Void > = nil

  //····················································································································

  func setOppositeRelationShipFunctions (setter inSetter : @escaping (_ inManagedObject : DeviceSymbolInstanceInProject) -> Void,
                                         resetter inResetter : @escaping (_ inManagedObject : DeviceSymbolInstanceInProject) -> Void) {
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

  override func notifyModelDidChangeFrom (oldValue inOldValue : DeviceSymbolInstanceInProject?) {
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

  @objc func performUndo (_ oldValue : DeviceSymbolInstanceInProject?) {
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

  override var prop : EBSelection < DeviceSymbolInstanceInProject? > {
    if let object = self.mInternalValue {
      return .single (object)
    }else{
      return .empty
    }
  }

  //····················································································································

  override func setProp (_ inValue : DeviceSymbolInstanceInProject?) { self.mInternalValue = inValue }

  //····················································································································

  override var propval : DeviceSymbolInstanceInProject? { return self.mInternalValue }

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

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

