//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------
//    ReadOnlyObject_PackageModelImageDoublePoint 
//----------------------------------------------------------------------------------------------------------------------

class ReadOnlyObject_PackageModelImageDoublePoint : ReadOnlyAbstractObjectProperty <PackageModelImageDoublePoint> {

  //····················································································································

  internal override func notifyModelDidChangeFrom (oldValue inOldValue : PackageModelImageDoublePoint?) {
    super.notifyModelDidChangeFrom (oldValue: inOldValue)
  //--- Remove observers from removed objects
    if let oldValue = inOldValue {
      oldValue.mFirstX_property.removeEBObserversFrom (&self.mObserversOf_mFirstX) // Stored property
      oldValue.mFirstY_property.removeEBObserversFrom (&self.mObserversOf_mFirstY) // Stored property
      oldValue.mFirstColor_property.removeEBObserversFrom (&self.mObserversOf_mFirstColor) // Stored property
      oldValue.mSecondDx_property.removeEBObserversFrom (&self.mObserversOf_mSecondDx) // Stored property
      oldValue.mSecondDy_property.removeEBObserversFrom (&self.mObserversOf_mSecondDy) // Stored property
      oldValue.mSecondColor_property.removeEBObserversFrom (&self.mObserversOf_mSecondColor) // Stored property
      oldValue.objectDisplay_property.removeEBObserversFrom (&self.mObserversOf_objectDisplay) // Transient property
      oldValue.selectionDisplay_property.removeEBObserversFrom (&self.mObserversOf_selectionDisplay) // Transient property
    }
  //--- Add observers to added objects
    if let newValue = self.mInternalValue {
      newValue.mFirstX_property.addEBObserversFrom (&self.mObserversOf_mFirstX) // Stored property
      newValue.mFirstY_property.addEBObserversFrom (&self.mObserversOf_mFirstY) // Stored property
      newValue.mFirstColor_property.addEBObserversFrom (&self.mObserversOf_mFirstColor) // Stored property
      newValue.mSecondDx_property.addEBObserversFrom (&self.mObserversOf_mSecondDx) // Stored property
      newValue.mSecondDy_property.addEBObserversFrom (&self.mObserversOf_mSecondDy) // Stored property
      newValue.mSecondColor_property.addEBObserversFrom (&self.mObserversOf_mSecondColor) // Stored property
      newValue.objectDisplay_property.addEBObserversFrom (&self.mObserversOf_objectDisplay) // Transient property
      newValue.selectionDisplay_property.addEBObserversFrom (&self.mObserversOf_selectionDisplay) // Transient property
    }
  }

  //····················································································································
  //   Observers of 'mFirstX' stored property
  //····················································································································

//  private final var mFirstX_property = EBGenericPropertyProxy <Int> ()

  private final var mObserversOf_mFirstX = EBWeakEventSet ()

  //····················································································································

  final var mFirstX_property_selection : EBSelection <Int?> {
    if let model = self.propval {
      switch (model.mFirstX_property_selection) {
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

  final func addEBObserverOf_mFirstX (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_mFirstX.insert (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
       v?.mFirstX_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_mFirstX (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_mFirstX.remove (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.mFirstX_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································
  //   Observers of 'mFirstY' stored property
  //····················································································································

//  private final var mFirstY_property = EBGenericPropertyProxy <Int> ()

  private final var mObserversOf_mFirstY = EBWeakEventSet ()

  //····················································································································

  final var mFirstY_property_selection : EBSelection <Int?> {
    if let model = self.propval {
      switch (model.mFirstY_property_selection) {
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

  final func addEBObserverOf_mFirstY (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_mFirstY.insert (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
       v?.mFirstY_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_mFirstY (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_mFirstY.remove (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.mFirstY_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································
  //   Observers of 'mFirstColor' stored property
  //····················································································································

//  private final var mFirstColor_property = EBGenericPropertyProxy <NSColor> ()

  private final var mObserversOf_mFirstColor = EBWeakEventSet ()

  //····················································································································

  final var mFirstColor_property_selection : EBSelection <NSColor?> {
    if let model = self.propval {
      switch (model.mFirstColor_property_selection) {
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

  final func addEBObserverOf_mFirstColor (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_mFirstColor.insert (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
       v?.mFirstColor_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_mFirstColor (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_mFirstColor.remove (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.mFirstColor_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································
  //   Observers of 'mSecondDx' stored property
  //····················································································································

//  private final var mSecondDx_property = EBGenericPropertyProxy <Int> ()

  private final var mObserversOf_mSecondDx = EBWeakEventSet ()

  //····················································································································

  final var mSecondDx_property_selection : EBSelection <Int?> {
    if let model = self.propval {
      switch (model.mSecondDx_property_selection) {
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

  final func addEBObserverOf_mSecondDx (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_mSecondDx.insert (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
       v?.mSecondDx_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_mSecondDx (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_mSecondDx.remove (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.mSecondDx_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································
  //   Observers of 'mSecondDy' stored property
  //····················································································································

//  private final var mSecondDy_property = EBGenericPropertyProxy <Int> ()

  private final var mObserversOf_mSecondDy = EBWeakEventSet ()

  //····················································································································

  final var mSecondDy_property_selection : EBSelection <Int?> {
    if let model = self.propval {
      switch (model.mSecondDy_property_selection) {
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

  final func addEBObserverOf_mSecondDy (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_mSecondDy.insert (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
       v?.mSecondDy_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_mSecondDy (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_mSecondDy.remove (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.mSecondDy_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································
  //   Observers of 'mSecondColor' stored property
  //····················································································································

//  private final var mSecondColor_property = EBGenericPropertyProxy <NSColor> ()

  private final var mObserversOf_mSecondColor = EBWeakEventSet ()

  //····················································································································

  final var mSecondColor_property_selection : EBSelection <NSColor?> {
    if let model = self.propval {
      switch (model.mSecondColor_property_selection) {
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

  final func addEBObserverOf_mSecondColor (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_mSecondColor.insert (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
       v?.mSecondColor_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_mSecondColor (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_mSecondColor.remove (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.mSecondColor_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································
  //   Observers of 'objectDisplay' transient property
  //····················································································································

  private final var mObserversOf_objectDisplay = EBWeakEventSet ()

  //····················································································································

  final var objectDisplay_property_selection : EBSelection <EBShape?> {
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
    switch self.selection {
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
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.objectDisplay_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································

  final func addEBObserversOf_objectDisplay_toElementsOfSet (_ inSet : Set<PackageModelImageDoublePoint>) {
    for managedObject in inSet {
      self.mObserversOf_objectDisplay.apply { (_ observer : EBEvent) in
        managedObject.objectDisplay_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_objectDisplay_fromElementsOfSet (_ inSet : Set<PackageModelImageDoublePoint>) {
    for managedObject in inSet {
      self.mObserversOf_objectDisplay.apply { (_ observer : EBEvent) in
        managedObject.objectDisplay_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'selectionDisplay' transient property
  //····················································································································

  private final var mObserversOf_selectionDisplay = EBWeakEventSet ()

  //····················································································································

  final var selectionDisplay_property_selection : EBSelection <EBShape?> {
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
    switch self.selection {
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
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.selectionDisplay_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································

  final func addEBObserversOf_selectionDisplay_toElementsOfSet (_ inSet : Set<PackageModelImageDoublePoint>) {
    for managedObject in inSet {
      self.mObserversOf_selectionDisplay.apply { (_ observer : EBEvent) in
        managedObject.selectionDisplay_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_selectionDisplay_fromElementsOfSet (_ inSet : Set<PackageModelImageDoublePoint>) {
    for managedObject in inSet {
      self.mObserversOf_selectionDisplay.apply { (_ observer : EBEvent) in
        managedObject.selectionDisplay_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   INIT 
  //····················································································································

 // override init () {
//    super.init ()
  //--- Configure mFirstX simple stored property
 /*   self.mFirstX_property.mReadModelFunction = { [weak self] in
      if let selection = self?.mInternalValue?.mFirstX_property.selection {
        return selection
      }else{
        return .empty
      }
    }
    self.mFirstX_property.mWriteModelFunction = { [weak self] in
      self?.mInternalValue?.mFirstX_property.setProp ($0)
    }
    self.none_property.addEBObserver (self.mFirstX_property) */
  //--- Configure mFirstY simple stored property
 /*   self.mFirstY_property.mReadModelFunction = { [weak self] in
      if let selection = self?.mInternalValue?.mFirstY_property.selection {
        return selection
      }else{
        return .empty
      }
    }
    self.mFirstY_property.mWriteModelFunction = { [weak self] in
      self?.mInternalValue?.mFirstY_property.setProp ($0)
    }
    self.none_property.addEBObserver (self.mFirstY_property) */
  //--- Configure mFirstColor simple stored property
 /*   self.mFirstColor_property.mReadModelFunction = { [weak self] in
      if let selection = self?.mInternalValue?.mFirstColor_property.selection {
        return selection
      }else{
        return .empty
      }
    }
    self.mFirstColor_property.mWriteModelFunction = { [weak self] in
      self?.mInternalValue?.mFirstColor_property.setProp ($0)
    }
    self.none_property.addEBObserver (self.mFirstColor_property) */
  //--- Configure mSecondDx simple stored property
 /*   self.mSecondDx_property.mReadModelFunction = { [weak self] in
      if let selection = self?.mInternalValue?.mSecondDx_property.selection {
        return selection
      }else{
        return .empty
      }
    }
    self.mSecondDx_property.mWriteModelFunction = { [weak self] in
      self?.mInternalValue?.mSecondDx_property.setProp ($0)
    }
    self.none_property.addEBObserver (self.mSecondDx_property) */
  //--- Configure mSecondDy simple stored property
 /*   self.mSecondDy_property.mReadModelFunction = { [weak self] in
      if let selection = self?.mInternalValue?.mSecondDy_property.selection {
        return selection
      }else{
        return .empty
      }
    }
    self.mSecondDy_property.mWriteModelFunction = { [weak self] in
      self?.mInternalValue?.mSecondDy_property.setProp ($0)
    }
    self.none_property.addEBObserver (self.mSecondDy_property) */
  //--- Configure mSecondColor simple stored property
 /*   self.mSecondColor_property.mReadModelFunction = { [weak self] in
      if let selection = self?.mInternalValue?.mSecondColor_property.selection {
        return selection
      }else{
        return .empty
      }
    }
    self.mSecondColor_property.mWriteModelFunction = { [weak self] in
      self?.mInternalValue?.mSecondColor_property.setProp ($0)
    }
    self.none_property.addEBObserver (self.mSecondColor_property) */
 // }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//   TransientObject PackageModelImageDoublePoint
//----------------------------------------------------------------------------------------------------------------------

final class TransientObject_PackageModelImageDoublePoint : ReadOnlyObject_PackageModelImageDoublePoint {

  //····················································································································
  //   Data provider
  //····················································································································

  private var mDataProvider : ReadOnlyObject_PackageModelImageDoublePoint? = nil
  private var mTransientKind : PropertyKind = .empty

  //····················································································································

  func setDataProvider (_ inProvider : ReadOnlyObject_PackageModelImageDoublePoint?) {
    if self.mDataProvider !== inProvider {
      self.mDataProvider?.detachClient (self)
      self.mDataProvider = inProvider
      self.mDataProvider?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newObject : PackageModelImageDoublePoint? 
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

  override var selection : EBSelection < PackageModelImageDoublePoint? > {
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

  override var propval : PackageModelImageDoublePoint? { return self.mInternalValue }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//    ReadWriteObject_PackageModelImageDoublePoint
//----------------------------------------------------------------------------------------------------------------------

class ReadWriteObject_PackageModelImageDoublePoint : ReadOnlyObject_PackageModelImageDoublePoint {

  //····················································································································
 
  func setProp (_ inValue : PackageModelImageDoublePoint?) { } // Abstract method
  
  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//    Proxy: ProxyObject_PackageModelImageDoublePoint
//----------------------------------------------------------------------------------------------------------------------

final class ProxyObject_PackageModelImageDoublePoint : ReadWriteObject_PackageModelImageDoublePoint {

  //····················································································································

  private var mModel : ReadWriteObject_PackageModelImageDoublePoint? = nil

  //····················································································································

  func setModel (_ inModel : ReadWriteObject_PackageModelImageDoublePoint?) {
    if self.mModel !== inModel {
      self.mModel?.detachClient (self)
      self.mModel = inModel
      self.mModel?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newModel : PackageModelImageDoublePoint?
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

  override func setProp (_ inValue : PackageModelImageDoublePoint?) {
    self.mModel?.setProp (inValue)
  }

  //····················································································································

  override var selection : EBSelection < PackageModelImageDoublePoint? > {
    if let model = self.mModel {
      return model.selection
    }else{
      return .empty
    }
  }

  //····················································································································

  override var propval : PackageModelImageDoublePoint? {
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
//    StoredObject_PackageModelImageDoublePoint 
//----------------------------------------------------------------------------------------------------------------------

final class StoredObject_PackageModelImageDoublePoint : ReadWriteObject_PackageModelImageDoublePoint, EBSignatureObserverProtocol, EBObservableObjectProtocol {

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

  private var mSetOppositeRelationship : Optional < (_ inManagedObject : PackageModelImageDoublePoint) -> Void > = nil
  private var mResetOppositeRelationship : Optional < (_ inManagedObject : PackageModelImageDoublePoint) -> Void > = nil

  //····················································································································

  func setOppositeRelationShipFunctions (setter inSetter : @escaping (_ inManagedObject : PackageModelImageDoublePoint) -> Void,
                                         resetter inResetter : @escaping (_ inManagedObject : PackageModelImageDoublePoint) -> Void) {
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

  override func notifyModelDidChangeFrom (oldValue inOldValue : PackageModelImageDoublePoint?) {
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

  override var selection : EBSelection < PackageModelImageDoublePoint? > {
    if let object = self.mInternalValue {
      return .single (object)
    }else{
      return .empty
    }
  }

  //····················································································································

  override func setProp (_ inValue : PackageModelImageDoublePoint?) { self.mInternalValue = inValue }

  //····················································································································

  override var propval : PackageModelImageDoublePoint? { return self.mInternalValue }

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

