//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------
//    ReadOnlyObject_MergerBoardInstance 
//----------------------------------------------------------------------------------------------------------------------

class ReadOnlyObject_MergerBoardInstance : ReadOnlyAbstractObjectProperty <MergerBoardInstance> {

  //····················································································································

  internal override func notifyModelDidChangeFrom (oldValue inOldValue : MergerBoardInstance?) {
    super.notifyModelDidChangeFrom (oldValue: inOldValue)
  //--- Remove observers from removed objects
    inOldValue?.x_property.removeEBObserversFrom (&self.mObserversOf_x) // Stored property
    inOldValue?.y_property.removeEBObserversFrom (&self.mObserversOf_y) // Stored property
    inOldValue?.instanceRotation_property.removeEBObserversFrom (&self.mObserversOf_instanceRotation) // Stored property
    inOldValue?.instanceRect_property.removeEBObserversFrom (&self.mObserversOf_instanceRect) // Transient property
    inOldValue?.modelName_property.removeEBObserversFrom (&self.mObserversOf_modelName) // Transient property
    inOldValue?.boardLimitWidth_property.removeEBObserversFrom (&self.mObserversOf_boardLimitWidth) // Transient property
    inOldValue?.selectionDisplay_property.removeEBObserversFrom (&self.mObserversOf_selectionDisplay) // Transient property
    inOldValue?.objectDisplay_property.removeEBObserversFrom (&self.mObserversOf_objectDisplay) // Transient property
  //--- Add observers to added objects
    self.mInternalValue?.x_property.addEBObserversFrom (&self.mObserversOf_x) // Stored property
    self.mInternalValue?.y_property.addEBObserversFrom (&self.mObserversOf_y) // Stored property
    self.mInternalValue?.instanceRotation_property.addEBObserversFrom (&self.mObserversOf_instanceRotation) // Stored property
    self.mInternalValue?.instanceRect_property.addEBObserversFrom (&self.mObserversOf_instanceRect) // Transient property
    self.mInternalValue?.modelName_property.addEBObserversFrom (&self.mObserversOf_modelName) // Transient property
    self.mInternalValue?.boardLimitWidth_property.addEBObserversFrom (&self.mObserversOf_boardLimitWidth) // Transient property
    self.mInternalValue?.selectionDisplay_property.addEBObserversFrom (&self.mObserversOf_selectionDisplay) // Transient property
    self.mInternalValue?.objectDisplay_property.addEBObserversFrom (&self.mObserversOf_objectDisplay) // Transient property
  }

  //····················································································································
  //   Observers of 'x' stored property
  //····················································································································

  private var mObserversOf_x = EBWeakEventSet ()

  //····················································································································

  var x_property_selection : EBSelection <Int?> {
    if let model = self.propval {
      switch (model.x_property_selection) {
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

  final func addEBObserverOf_x (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_x.insert (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
       v?.x_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_x (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_x.remove (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.x_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································

  final func addEBObserversOf_x_toElementsOfSet (_ inSet : Set<MergerBoardInstance>) {
    for managedObject in inSet {
      self.mObserversOf_x.apply { (_ observer : EBEvent) in
        managedObject.x_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_x_fromElementsOfSet (_ inSet : Set<MergerBoardInstance>) {
    self.mObserversOf_x.apply { (_ observer : EBEvent) in
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.x_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'y' stored property
  //····················································································································

  private var mObserversOf_y = EBWeakEventSet ()

  //····················································································································

  var y_property_selection : EBSelection <Int?> {
    if let model = self.propval {
      switch (model.y_property_selection) {
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

  final func addEBObserverOf_y (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_y.insert (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
       v?.y_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_y (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_y.remove (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.y_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································

  final func addEBObserversOf_y_toElementsOfSet (_ inSet : Set<MergerBoardInstance>) {
    for managedObject in inSet {
      self.mObserversOf_y.apply { (_ observer : EBEvent) in
        managedObject.y_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_y_fromElementsOfSet (_ inSet : Set<MergerBoardInstance>) {
    self.mObserversOf_y.apply { (_ observer : EBEvent) in
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.y_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'instanceRotation' stored property
  //····················································································································

  private var mObserversOf_instanceRotation = EBWeakEventSet ()

  //····················································································································

  var instanceRotation_property_selection : EBSelection <QuadrantRotation?> {
    if let model = self.propval {
      switch (model.instanceRotation_property_selection) {
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

  final func addEBObserverOf_instanceRotation (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_instanceRotation.insert (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
       v?.instanceRotation_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_instanceRotation (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_instanceRotation.remove (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.instanceRotation_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································

  final func addEBObserversOf_instanceRotation_toElementsOfSet (_ inSet : Set<MergerBoardInstance>) {
    for managedObject in inSet {
      self.mObserversOf_instanceRotation.apply { (_ observer : EBEvent) in
        managedObject.instanceRotation_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_instanceRotation_fromElementsOfSet (_ inSet : Set<MergerBoardInstance>) {
    self.mObserversOf_instanceRotation.apply { (_ observer : EBEvent) in
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.instanceRotation_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'instanceRect' transient property
  //····················································································································

  private var mObserversOf_instanceRect = EBWeakEventSet ()

  //····················································································································

  var instanceRect_property_selection : EBSelection <CanariRect?> {
    if let model = self.propval {
      switch (model.instanceRect_property_selection) {
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

  final func addEBObserverOf_instanceRect (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_instanceRect.insert (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.instanceRect_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_instanceRect (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_instanceRect.remove (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.instanceRect_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································

  final func addEBObserversOf_instanceRect_toElementsOfSet (_ inSet : Set<MergerBoardInstance>) {
    for managedObject in inSet {
      self.mObserversOf_instanceRect.apply { (_ observer : EBEvent) in
        managedObject.instanceRect_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_instanceRect_fromElementsOfSet (_ inSet : Set<MergerBoardInstance>) {
    for managedObject in inSet {
      self.mObserversOf_instanceRect.apply { (_ observer : EBEvent) in
        managedObject.instanceRect_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'modelName' transient property
  //····················································································································

  private var mObserversOf_modelName = EBWeakEventSet ()

  //····················································································································

  var modelName_property_selection : EBSelection <String?> {
    if let model = self.propval {
      switch (model.modelName_property_selection) {
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

  final func addEBObserverOf_modelName (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_modelName.insert (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.modelName_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_modelName (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_modelName.remove (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.modelName_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································

  final func addEBObserversOf_modelName_toElementsOfSet (_ inSet : Set<MergerBoardInstance>) {
    for managedObject in inSet {
      self.mObserversOf_modelName.apply { (_ observer : EBEvent) in
        managedObject.modelName_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_modelName_fromElementsOfSet (_ inSet : Set<MergerBoardInstance>) {
    for managedObject in inSet {
      self.mObserversOf_modelName.apply { (_ observer : EBEvent) in
        managedObject.modelName_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observers of 'boardLimitWidth' transient property
  //····················································································································

  private var mObserversOf_boardLimitWidth = EBWeakEventSet ()

  //····················································································································

  var boardLimitWidth_property_selection : EBSelection <Int?> {
    if let model = self.propval {
      switch (model.boardLimitWidth_property_selection) {
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

  final func addEBObserverOf_boardLimitWidth (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_boardLimitWidth.insert (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.boardLimitWidth_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_boardLimitWidth (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_boardLimitWidth.remove (inObserver)
    switch self.selection {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.boardLimitWidth_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································

  final func addEBObserversOf_boardLimitWidth_toElementsOfSet (_ inSet : Set<MergerBoardInstance>) {
    for managedObject in inSet {
      self.mObserversOf_boardLimitWidth.apply { (_ observer : EBEvent) in
        managedObject.boardLimitWidth_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_boardLimitWidth_fromElementsOfSet (_ inSet : Set<MergerBoardInstance>) {
    for managedObject in inSet {
      self.mObserversOf_boardLimitWidth.apply { (_ observer : EBEvent) in
        managedObject.boardLimitWidth_property.removeEBObserver (observer)
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

  final func addEBObserversOf_selectionDisplay_toElementsOfSet (_ inSet : Set<MergerBoardInstance>) {
    for managedObject in inSet {
      self.mObserversOf_selectionDisplay.apply { (_ observer : EBEvent) in
        managedObject.selectionDisplay_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_selectionDisplay_fromElementsOfSet (_ inSet : Set<MergerBoardInstance>) {
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

  final func addEBObserversOf_objectDisplay_toElementsOfSet (_ inSet : Set<MergerBoardInstance>) {
    for managedObject in inSet {
      self.mObserversOf_objectDisplay.apply { (_ observer : EBEvent) in
        managedObject.objectDisplay_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_objectDisplay_fromElementsOfSet (_ inSet : Set<MergerBoardInstance>) {
    for managedObject in inSet {
      self.mObserversOf_objectDisplay.apply { (_ observer : EBEvent) in
        managedObject.objectDisplay_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//   TransientObject MergerBoardInstance
//----------------------------------------------------------------------------------------------------------------------

final class TransientObject_MergerBoardInstance : ReadOnlyObject_MergerBoardInstance {

  //····················································································································
  //   Data provider
  //····················································································································

  private var mDataProvider : ReadOnlyObject_MergerBoardInstance? = nil
  private var mTransientKind : PropertyKind = .empty

  //····················································································································

  func setDataProvider (_ inProvider : ReadOnlyObject_MergerBoardInstance?) {
    if self.mDataProvider !== inProvider {
      self.mDataProvider?.detachClient (self)
      self.mDataProvider = inProvider
      self.mDataProvider?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newObject : MergerBoardInstance? 
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

  override var selection : EBSelection < MergerBoardInstance? > {
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

  override var propval : MergerBoardInstance? { return self.mInternalValue }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//    ReadWriteObject_MergerBoardInstance
//----------------------------------------------------------------------------------------------------------------------

class ReadWriteObject_MergerBoardInstance : ReadOnlyObject_MergerBoardInstance {

  //····················································································································
 
  func setProp (_ inValue : MergerBoardInstance?) { } // Abstract method
  
  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//    Proxy: ProxyObject_MergerBoardInstance
//----------------------------------------------------------------------------------------------------------------------

final class ProxyObject_MergerBoardInstance : ReadWriteObject_MergerBoardInstance {

  //····················································································································

  private var mModel : ReadWriteObject_MergerBoardInstance? = nil

  //····················································································································

  func setModel (_ inModel : ReadWriteObject_MergerBoardInstance?) {
    if self.mModel !== inModel {
      self.mModel?.detachClient (self)
      self.mModel = inModel
      self.mModel?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newModel : MergerBoardInstance?
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

  override func setProp (_ inValue : MergerBoardInstance?) {
    self.mModel?.setProp (inValue)
  }

  //····················································································································

  override var selection : EBSelection < MergerBoardInstance? > {
    if let model = self.mModel {
      return model.selection
    }else{
      return .empty
    }
  }

  //····················································································································

  override var propval : MergerBoardInstance? {
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
//    StoredObject_MergerBoardInstance 
//----------------------------------------------------------------------------------------------------------------------

final class StoredObject_MergerBoardInstance : ReadWriteObject_MergerBoardInstance, EBSignatureObserverProtocol, EBObservableObjectProtocol {

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

  private var mSetOppositeRelationship : Optional < (_ inManagedObject : MergerBoardInstance) -> Void > = nil
  private var mResetOppositeRelationship : Optional < (_ inManagedObject : MergerBoardInstance) -> Void > = nil

  //····················································································································

  func setOppositeRelationShipFunctions (setter inSetter : @escaping (_ inManagedObject : MergerBoardInstance) -> Void,
                                         resetter inResetter : @escaping (_ inManagedObject : MergerBoardInstance) -> Void) {
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

  override func notifyModelDidChangeFrom (oldValue inOldValue : MergerBoardInstance?) {
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

  override var selection : EBSelection < MergerBoardInstance? > {
    if let object = self.mInternalValue {
      return .single (object)
    }else{
      return .empty
    }
  }

  //····················································································································

  override func setProp (_ inValue : MergerBoardInstance?) { self.mInternalValue = inValue }

  //····················································································································

  override var propval : MergerBoardInstance? { return self.mInternalValue }

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

