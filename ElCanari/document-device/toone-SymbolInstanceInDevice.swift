//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    ReadOnlyObject_SymbolInstanceInDevice 
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class ReadOnlyObject_SymbolInstanceInDevice : ReadOnlyAbstractObjectProperty <SymbolInstanceInDevice> {

  //····················································································································

  internal override func notifyModelDidChangeFrom (oldValue inOldValue : SymbolInstanceInDevice?) {
    super.notifyModelDidChangeFrom (oldValue: inOldValue)
  //--- Remove observers from removed objects
    inOldValue?.mInstanceName_property.removeEBObserversFrom (&self.mObserversOf_mInstanceName) // Stored property
    inOldValue?.mX_property.removeEBObserversFrom (&self.mObserversOf_mX) // Stored property
    inOldValue?.mY_property.removeEBObserversFrom (&self.mObserversOf_mY) // Stored property
    inOldValue?.symbolQualifiedName_property.removeEBObserversFrom (&self.mObserversOf_symbolQualifiedName) // Transient property
    inOldValue?.symbolTypeName_property.removeEBObserversFrom (&self.mObserversOf_symbolTypeName) // Transient property
    inOldValue?.selectionDisplay_property.removeEBObserversFrom (&self.mObserversOf_selectionDisplay) // Transient property
    inOldValue?.unconnectedPins_property.removeEBObserversFrom (&self.mObserversOf_unconnectedPins) // Transient property
    inOldValue?.objectDisplay_property.removeEBObserversFrom (&self.mObserversOf_objectDisplay) // Transient property
  //--- Add observers to added objects
    self.mInternalValue?.mInstanceName_property.addEBObserversFrom (&self.mObserversOf_mInstanceName) // Stored property
    self.mInternalValue?.mX_property.addEBObserversFrom (&self.mObserversOf_mX) // Stored property
    self.mInternalValue?.mY_property.addEBObserversFrom (&self.mObserversOf_mY) // Stored property
    self.mInternalValue?.symbolQualifiedName_property.addEBObserversFrom (&self.mObserversOf_symbolQualifiedName) // Transient property
    self.mInternalValue?.symbolTypeName_property.addEBObserversFrom (&self.mObserversOf_symbolTypeName) // Transient property
    self.mInternalValue?.selectionDisplay_property.addEBObserversFrom (&self.mObserversOf_selectionDisplay) // Transient property
    self.mInternalValue?.unconnectedPins_property.addEBObserversFrom (&self.mObserversOf_unconnectedPins) // Transient property
    self.mInternalValue?.objectDisplay_property.addEBObserversFrom (&self.mObserversOf_objectDisplay) // Transient property
  }

  //····················································································································
  //   Observers of 'mInstanceName' stored property
  //····················································································································

  private var mObserversOf_mInstanceName = EBWeakEventSet ()

  //····················································································································

  var mInstanceName_property_selection : EBSelection <String?> {
    if let model = self.propval {
      switch (model.mInstanceName_property_selection) {
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

  final func addEBObserverOf_mInstanceName (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_mInstanceName.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
       v?.mInstanceName_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_mInstanceName (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_mInstanceName.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.mInstanceName_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································

  final func addEBObserversOf_mInstanceName_toElementsOfSet (_ inSet : Set<SymbolInstanceInDevice>) {
    for managedObject in inSet {
      self.mObserversOf_mInstanceName.apply { (_ observer : EBEvent) in
        managedObject.mInstanceName_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_mInstanceName_fromElementsOfSet (_ inSet : Set<SymbolInstanceInDevice>) {
    self.mObserversOf_mInstanceName.apply { (_ observer : EBEvent) in
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.mInstanceName_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'mX' stored property
  //····················································································································

  private var mObserversOf_mX = EBWeakEventSet ()

  //····················································································································

  var mX_property_selection : EBSelection <Int?> {
    if let model = self.propval {
      switch (model.mX_property_selection) {
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

  final func addEBObserverOf_mX (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_mX.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
       v?.mX_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_mX (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_mX.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.mX_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································

  final func addEBObserversOf_mX_toElementsOfSet (_ inSet : Set<SymbolInstanceInDevice>) {
    for managedObject in inSet {
      self.mObserversOf_mX.apply { (_ observer : EBEvent) in
        managedObject.mX_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_mX_fromElementsOfSet (_ inSet : Set<SymbolInstanceInDevice>) {
    self.mObserversOf_mX.apply { (_ observer : EBEvent) in
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.mX_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'mY' stored property
  //····················································································································

  private var mObserversOf_mY = EBWeakEventSet ()

  //····················································································································

  var mY_property_selection : EBSelection <Int?> {
    if let model = self.propval {
      switch (model.mY_property_selection) {
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

  final func addEBObserverOf_mY (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_mY.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
       v?.mY_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_mY (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_mY.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.mY_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································

  final func addEBObserversOf_mY_toElementsOfSet (_ inSet : Set<SymbolInstanceInDevice>) {
    for managedObject in inSet {
      self.mObserversOf_mY.apply { (_ observer : EBEvent) in
        managedObject.mY_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_mY_fromElementsOfSet (_ inSet : Set<SymbolInstanceInDevice>) {
    self.mObserversOf_mY.apply { (_ observer : EBEvent) in
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.mY_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'symbolQualifiedName' transient property
  //····················································································································

  private var mObserversOf_symbolQualifiedName = EBWeakEventSet ()

  //····················································································································

  var symbolQualifiedName_property_selection : EBSelection <String?> {
    if let model = self.propval {
      switch (model.symbolQualifiedName_property_selection) {
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

  final func addEBObserverOf_symbolQualifiedName (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_symbolQualifiedName.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.symbolQualifiedName_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_symbolQualifiedName (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_symbolQualifiedName.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.symbolQualifiedName_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································

  final func addEBObserversOf_symbolQualifiedName_toElementsOfSet (_ inSet : Set<SymbolInstanceInDevice>) {
    for managedObject in inSet {
      self.mObserversOf_symbolQualifiedName.apply { (_ observer : EBEvent) in
        managedObject.symbolQualifiedName_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_symbolQualifiedName_fromElementsOfSet (_ inSet : Set<SymbolInstanceInDevice>) {
    for managedObject in inSet {
      self.mObserversOf_symbolQualifiedName.apply { (_ observer : EBEvent) in
        managedObject.symbolQualifiedName_property.removeEBObserver (observer)
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

  final func addEBObserversOf_symbolTypeName_toElementsOfSet (_ inSet : Set<SymbolInstanceInDevice>) {
    for managedObject in inSet {
      self.mObserversOf_symbolTypeName.apply { (_ observer : EBEvent) in
        managedObject.symbolTypeName_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_symbolTypeName_fromElementsOfSet (_ inSet : Set<SymbolInstanceInDevice>) {
    for managedObject in inSet {
      self.mObserversOf_symbolTypeName.apply { (_ observer : EBEvent) in
        managedObject.symbolTypeName_property.removeEBObserver (observer)
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

  final func addEBObserversOf_selectionDisplay_toElementsOfSet (_ inSet : Set<SymbolInstanceInDevice>) {
    for managedObject in inSet {
      self.mObserversOf_selectionDisplay.apply { (_ observer : EBEvent) in
        managedObject.selectionDisplay_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_selectionDisplay_fromElementsOfSet (_ inSet : Set<SymbolInstanceInDevice>) {
    for managedObject in inSet {
      self.mObserversOf_selectionDisplay.apply { (_ observer : EBEvent) in
        managedObject.selectionDisplay_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'unconnectedPins' transient property
  //····················································································································

  private var mObserversOf_unconnectedPins = EBWeakEventSet ()

  //····················································································································

  var unconnectedPins_property_selection : EBSelection <UnconnectedSymbolPinsInDevice?> {
    if let model = self.propval {
      switch (model.unconnectedPins_property_selection) {
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

  final func addEBObserverOf_unconnectedPins (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_unconnectedPins.insert (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.unconnectedPins_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_unconnectedPins (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_unconnectedPins.remove (inObserver)
    switch prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.unconnectedPins_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································

  final func addEBObserversOf_unconnectedPins_toElementsOfSet (_ inSet : Set<SymbolInstanceInDevice>) {
    for managedObject in inSet {
      self.mObserversOf_unconnectedPins.apply { (_ observer : EBEvent) in
        managedObject.unconnectedPins_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_unconnectedPins_fromElementsOfSet (_ inSet : Set<SymbolInstanceInDevice>) {
    for managedObject in inSet {
      self.mObserversOf_unconnectedPins.apply { (_ observer : EBEvent) in
        managedObject.unconnectedPins_property.removeEBObserver (observer)
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

  final func addEBObserversOf_objectDisplay_toElementsOfSet (_ inSet : Set<SymbolInstanceInDevice>) {
    for managedObject in inSet {
      self.mObserversOf_objectDisplay.apply { (_ observer : EBEvent) in
        managedObject.objectDisplay_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_objectDisplay_fromElementsOfSet (_ inSet : Set<SymbolInstanceInDevice>) {
    for managedObject in inSet {
      self.mObserversOf_objectDisplay.apply { (_ observer : EBEvent) in
        managedObject.objectDisplay_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observable toMany property: mPinInstances
  //····················································································································

  private var mObserversOf_mPinInstances = EBWeakEventSet ()

  //····················································································································

  var mPinInstances_property_selection : EBSelection <[SymbolPinInstanceInDevice]> {
    if let model = self.propval {
      switch (model.mPinInstances_property_selection) {
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

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    TransientObject SymbolInstanceInDevice
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class TransientObject_SymbolInstanceInDevice : ReadOnlyObject_SymbolInstanceInDevice {

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

  override var prop : EBSelection < SymbolInstanceInDevice? > {
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

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    ReadWriteObject_SymbolInstanceInDevice
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class ReadWriteObject_SymbolInstanceInDevice : ReadOnlyObject_SymbolInstanceInDevice {

  //····················································································································
 
  func setProp (_ inValue : SymbolInstanceInDevice?) { } // Abstract method
  
  //····················································································································

}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//    Proxy: ProxyObject_SymbolInstanceInDevice
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

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

  override func setProp (_ inValue : SymbolInstanceInDevice?) {
    self.mModel?.setProp (inValue)
  }

  //····················································································································

  override var prop : EBSelection < SymbolInstanceInDevice? > {
    if let model = self.mModel {
      return model.prop
    }else{
      return .empty
    }
  }

  //····················································································································

  override var propval : SymbolInstanceInDevice? {
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
//    StoredObject_SymbolInstanceInDevice 
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

final class StoredObject_SymbolInstanceInDevice : ReadWriteObject_SymbolInstanceInDevice, EBSignatureObserverProtocol {

  //····················································································································
  //   Undo manager
  //····················································································································

  weak var ebUndoManager : EBUndoManager? = nil // SOULD BE WEAK

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

  override func notifyModelDidChangeFrom (oldValue inOldValue : SymbolInstanceInDevice?) {
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

  @objc func performUndo (_ oldValue : SymbolInstanceInDevice?) {
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

  override var prop : EBSelection < SymbolInstanceInDevice? > {
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
