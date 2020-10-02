//----------------------------------------------------------------------------------------------------------------------
//  THIS FILE IS GENERATED BY EASY BINDINGS, DO NOT MODIFY IT
//----------------------------------------------------------------------------------------------------------------------

import Cocoa

//----------------------------------------------------------------------------------------------------------------------
//    ReadOnlyObject_ComponentSymbolInProject 
//----------------------------------------------------------------------------------------------------------------------

class ReadOnlyObject_ComponentSymbolInProject : ReadOnlyAbstractObjectProperty <ComponentSymbolInProject> {

  //····················································································································

  internal override func notifyModelDidChangeFrom (oldValue inOldValue : ComponentSymbolInProject?) {
    super.notifyModelDidChangeFrom (oldValue: inOldValue)
  //--- Remove observers from removed objects
    inOldValue?.mCenterX_property.removeEBObserver (self.mCenterX_property) // Stored property
    inOldValue?.mCenterY_property.removeEBObserver (self.mCenterY_property) // Stored property
    inOldValue?.mRotation_property.removeEBObserver (self.mRotation_property) // Stored property
    inOldValue?.mMirror_property.removeEBObserver (self.mMirror_property) // Stored property
    inOldValue?.mSymbolInstanceName_property.removeEBObserver (self.mSymbolInstanceName_property) // Stored property
    inOldValue?.mSymbolTypeName_property.removeEBObserver (self.mSymbolTypeName_property) // Stored property
    inOldValue?.mDisplayComponentNameOffsetX_property.removeEBObserver (self.mDisplayComponentNameOffsetX_property) // Stored property
    inOldValue?.mDisplayComponentNameOffsetY_property.removeEBObserver (self.mDisplayComponentNameOffsetY_property) // Stored property
    inOldValue?.mDisplayComponentValue_property.removeEBObserver (self.mDisplayComponentValue_property) // Stored property
    inOldValue?.mDisplayComponentValueOffsetX_property.removeEBObserver (self.mDisplayComponentValueOffsetX_property) // Stored property
    inOldValue?.mDisplayComponentValueOffsetY_property.removeEBObserver (self.mDisplayComponentValueOffsetY_property) // Stored property
    inOldValue?.componentName_property.removeEBObserver (self.componentName_property) // Transient property
    inOldValue?.deviceName_property.removeEBObserver (self.deviceName_property) // Transient property
    inOldValue?.symbolInfo_property.removeEBObserver (self.symbolInfo_property) // Transient property
    inOldValue?.pinPadAssignments_property.removeEBObserver (self.pinPadAssignments_property) // Transient property
    inOldValue?.objectDisplay_property.removeEBObserver (self.objectDisplay_property) // Transient property
    inOldValue?.selectionDisplay_property.removeEBObserver (self.selectionDisplay_property) // Transient property
    inOldValue?.symbolInSchematic_property.removeEBObserver (self.symbolInSchematic_property) // Transient property
  //--- Add observers to added objects
    self.mInternalValue?.mCenterX_property.addEBObserver (self.mCenterX_property) // Stored property
    self.mInternalValue?.mCenterY_property.addEBObserver (self.mCenterY_property) // Stored property
    self.mInternalValue?.mRotation_property.addEBObserver (self.mRotation_property) // Stored property
    self.mInternalValue?.mMirror_property.addEBObserver (self.mMirror_property) // Stored property
    self.mInternalValue?.mSymbolInstanceName_property.addEBObserver (self.mSymbolInstanceName_property) // Stored property
    self.mInternalValue?.mSymbolTypeName_property.addEBObserver (self.mSymbolTypeName_property) // Stored property
    self.mInternalValue?.mDisplayComponentNameOffsetX_property.addEBObserver (self.mDisplayComponentNameOffsetX_property) // Stored property
    self.mInternalValue?.mDisplayComponentNameOffsetY_property.addEBObserver (self.mDisplayComponentNameOffsetY_property) // Stored property
    self.mInternalValue?.mDisplayComponentValue_property.addEBObserver (self.mDisplayComponentValue_property) // Stored property
    self.mInternalValue?.mDisplayComponentValueOffsetX_property.addEBObserver (self.mDisplayComponentValueOffsetX_property) // Stored property
    self.mInternalValue?.mDisplayComponentValueOffsetY_property.addEBObserver (self.mDisplayComponentValueOffsetY_property) // Stored property
    self.mInternalValue?.componentName_property.addEBObserver (self.componentName_property) // Transient property
    self.mInternalValue?.deviceName_property.addEBObserver (self.deviceName_property) // Transient property
    self.mInternalValue?.symbolInfo_property.addEBObserver (self.symbolInfo_property) // Transient property
    self.mInternalValue?.pinPadAssignments_property.addEBObserver (self.pinPadAssignments_property) // Transient property
    self.mInternalValue?.objectDisplay_property.addEBObserver (self.objectDisplay_property) // Transient property
    self.mInternalValue?.selectionDisplay_property.addEBObserver (self.selectionDisplay_property) // Transient property
    self.mInternalValue?.symbolInSchematic_property.addEBObserver (self.symbolInSchematic_property) // Transient property
  }

  //····················································································································
  //   init
  //····················································································································

  override init () {
    super.init ()
    self.mCenterX_property.mReadModelFunction = { [weak self] in self?.mInternalValue?.mCenterX_property.prop ?? .empty }
    self.mCenterX_property.mWriteModelFunction = { [weak self] (inValue : Int) in self?.mInternalValue?.mCenterX_property.setProp (inValue) }
    self.mCenterY_property.mReadModelFunction = { [weak self] in self?.mInternalValue?.mCenterY_property.prop ?? .empty }
    self.mCenterY_property.mWriteModelFunction = { [weak self] (inValue : Int) in self?.mInternalValue?.mCenterY_property.setProp (inValue) }
    self.mRotation_property.mReadModelFunction = { [weak self] in self?.mInternalValue?.mRotation_property.prop ?? .empty }
    self.mRotation_property.mWriteModelFunction = { [weak self] (inValue : QuadrantRotation) in self?.mInternalValue?.mRotation_property.setProp (inValue) }
    self.mMirror_property.mReadModelFunction = { [weak self] in self?.mInternalValue?.mMirror_property.prop ?? .empty }
    self.mMirror_property.mWriteModelFunction = { [weak self] (inValue : Bool) in self?.mInternalValue?.mMirror_property.setProp (inValue) }
    self.mSymbolInstanceName_property.mReadModelFunction = { [weak self] in self?.mInternalValue?.mSymbolInstanceName_property.prop ?? .empty }
    self.mSymbolInstanceName_property.mWriteModelFunction = { [weak self] (inValue : String) in self?.mInternalValue?.mSymbolInstanceName_property.setProp (inValue) }
    self.mSymbolTypeName_property.mReadModelFunction = { [weak self] in self?.mInternalValue?.mSymbolTypeName_property.prop ?? .empty }
    self.mSymbolTypeName_property.mWriteModelFunction = { [weak self] (inValue : String) in self?.mInternalValue?.mSymbolTypeName_property.setProp (inValue) }
    self.mDisplayComponentNameOffsetX_property.mReadModelFunction = { [weak self] in self?.mInternalValue?.mDisplayComponentNameOffsetX_property.prop ?? .empty }
    self.mDisplayComponentNameOffsetX_property.mWriteModelFunction = { [weak self] (inValue : Int) in self?.mInternalValue?.mDisplayComponentNameOffsetX_property.setProp (inValue) }
    self.mDisplayComponentNameOffsetY_property.mReadModelFunction = { [weak self] in self?.mInternalValue?.mDisplayComponentNameOffsetY_property.prop ?? .empty }
    self.mDisplayComponentNameOffsetY_property.mWriteModelFunction = { [weak self] (inValue : Int) in self?.mInternalValue?.mDisplayComponentNameOffsetY_property.setProp (inValue) }
    self.mDisplayComponentValue_property.mReadModelFunction = { [weak self] in self?.mInternalValue?.mDisplayComponentValue_property.prop ?? .empty }
    self.mDisplayComponentValue_property.mWriteModelFunction = { [weak self] (inValue : Bool) in self?.mInternalValue?.mDisplayComponentValue_property.setProp (inValue) }
    self.mDisplayComponentValueOffsetX_property.mReadModelFunction = { [weak self] in self?.mInternalValue?.mDisplayComponentValueOffsetX_property.prop ?? .empty }
    self.mDisplayComponentValueOffsetX_property.mWriteModelFunction = { [weak self] (inValue : Int) in self?.mInternalValue?.mDisplayComponentValueOffsetX_property.setProp (inValue) }
    self.mDisplayComponentValueOffsetY_property.mReadModelFunction = { [weak self] in self?.mInternalValue?.mDisplayComponentValueOffsetY_property.prop ?? .empty }
    self.mDisplayComponentValueOffsetY_property.mWriteModelFunction = { [weak self] (inValue : Int) in self?.mInternalValue?.mDisplayComponentValueOffsetY_property.setProp (inValue) }
    self.componentName_property.mReadModelFunction = { [weak self] in self?.mInternalValue?.componentName_property.prop ?? .empty }
    self.deviceName_property.mReadModelFunction = { [weak self] in self?.mInternalValue?.deviceName_property.prop ?? .empty }
    self.symbolInfo_property.mReadModelFunction = { [weak self] in self?.mInternalValue?.symbolInfo_property.prop ?? .empty }
    self.pinPadAssignments_property.mReadModelFunction = { [weak self] in self?.mInternalValue?.pinPadAssignments_property.prop ?? .empty }
    self.objectDisplay_property.mReadModelFunction = { [weak self] in self?.mInternalValue?.objectDisplay_property.prop ?? .empty }
    self.selectionDisplay_property.mReadModelFunction = { [weak self] in self?.mInternalValue?.selectionDisplay_property.prop ?? .empty }
    self.symbolInSchematic_property.mReadModelFunction = { [weak self] in self?.mInternalValue?.symbolInSchematic_property.prop ?? .empty }
  }

  //····················································································································
  //   Proxy of 'mCenterX' stored property
  //····················································································································

  let mCenterX_property = EBPropertyProxy_Int ()

  var mCenterX_property_selection : EBSelection <Int> {
    switch (self.mCenterX_property.prop) {
    case .empty :
      return .empty
    case .multiple :
      return .multiple
    case .single (let v) :
      return .single (v)
    }
  }

  //····················································································································
  //   Proxy of 'mCenterY' stored property
  //····················································································································

  let mCenterY_property = EBPropertyProxy_Int ()

  var mCenterY_property_selection : EBSelection <Int> {
    switch (self.mCenterY_property.prop) {
    case .empty :
      return .empty
    case .multiple :
      return .multiple
    case .single (let v) :
      return .single (v)
    }
  }

  //····················································································································
  //   Proxy of 'mRotation' stored property
  //····················································································································

  let mRotation_property = EBPropertyProxy_QuadrantRotation ()

  var mRotation_property_selection : EBSelection <QuadrantRotation> {
    switch (self.mRotation_property.prop) {
    case .empty :
      return .empty
    case .multiple :
      return .multiple
    case .single (let v) :
      return .single (v)
    }
  }

  //····················································································································
  //   Proxy of 'mMirror' stored property
  //····················································································································

  let mMirror_property = EBPropertyProxy_Bool ()

  var mMirror_property_selection : EBSelection <Bool> {
    switch (self.mMirror_property.prop) {
    case .empty :
      return .empty
    case .multiple :
      return .multiple
    case .single (let v) :
      return .single (v)
    }
  }

  //····················································································································
  //   Proxy of 'mSymbolInstanceName' stored property
  //····················································································································

  let mSymbolInstanceName_property = EBPropertyProxy_String ()

  var mSymbolInstanceName_property_selection : EBSelection <String> {
    switch (self.mSymbolInstanceName_property.prop) {
    case .empty :
      return .empty
    case .multiple :
      return .multiple
    case .single (let v) :
      return .single (v)
    }
  }

  //····················································································································
  //   Proxy of 'mSymbolTypeName' stored property
  //····················································································································

  let mSymbolTypeName_property = EBPropertyProxy_String ()

  var mSymbolTypeName_property_selection : EBSelection <String> {
    switch (self.mSymbolTypeName_property.prop) {
    case .empty :
      return .empty
    case .multiple :
      return .multiple
    case .single (let v) :
      return .single (v)
    }
  }

  //····················································································································
  //   Proxy of 'mDisplayComponentNameOffsetX' stored property
  //····················································································································

  let mDisplayComponentNameOffsetX_property = EBPropertyProxy_Int ()

  var mDisplayComponentNameOffsetX_property_selection : EBSelection <Int> {
    switch (self.mDisplayComponentNameOffsetX_property.prop) {
    case .empty :
      return .empty
    case .multiple :
      return .multiple
    case .single (let v) :
      return .single (v)
    }
  }

  //····················································································································
  //   Proxy of 'mDisplayComponentNameOffsetY' stored property
  //····················································································································

  let mDisplayComponentNameOffsetY_property = EBPropertyProxy_Int ()

  var mDisplayComponentNameOffsetY_property_selection : EBSelection <Int> {
    switch (self.mDisplayComponentNameOffsetY_property.prop) {
    case .empty :
      return .empty
    case .multiple :
      return .multiple
    case .single (let v) :
      return .single (v)
    }
  }

  //····················································································································
  //   Proxy of 'mDisplayComponentValue' stored property
  //····················································································································

  let mDisplayComponentValue_property = EBPropertyProxy_Bool ()

  var mDisplayComponentValue_property_selection : EBSelection <Bool> {
    switch (self.mDisplayComponentValue_property.prop) {
    case .empty :
      return .empty
    case .multiple :
      return .multiple
    case .single (let v) :
      return .single (v)
    }
  }

  //····················································································································
  //   Proxy of 'mDisplayComponentValueOffsetX' stored property
  //····················································································································

  let mDisplayComponentValueOffsetX_property = EBPropertyProxy_Int ()

  var mDisplayComponentValueOffsetX_property_selection : EBSelection <Int> {
    switch (self.mDisplayComponentValueOffsetX_property.prop) {
    case .empty :
      return .empty
    case .multiple :
      return .multiple
    case .single (let v) :
      return .single (v)
    }
  }

  //····················································································································
  //   Proxy of 'mDisplayComponentValueOffsetY' stored property
  //····················································································································

  let mDisplayComponentValueOffsetY_property = EBPropertyProxy_Int ()

  var mDisplayComponentValueOffsetY_property_selection : EBSelection <Int> {
    switch (self.mDisplayComponentValueOffsetY_property.prop) {
    case .empty :
      return .empty
    case .multiple :
      return .multiple
    case .single (let v) :
      return .single (v)
    }
  }

  //····················································································································
  //   Observers of 'componentValueProxy' proxy property
  //····················································································································

  private var mObserversOf_componentValueProxy = EBWeakEventSet ()

  //····················································································································

  var componentValueProxy_property_selection : EBSelection <String> {
    if let model = self.propval {
      switch (model.componentValueProxy_property_selection) {
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

  final func addEBObserverOf_componentValueProxy (_ inObserver : EBEvent) {
    self.addEBObserver (inObserver)
    self.mObserversOf_componentValueProxy.insert (inObserver)
    switch self.prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.componentValueProxy_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_componentValueProxy (_ inObserver : EBEvent) {
    self.removeEBObserver (inObserver)
    self.mObserversOf_componentValueProxy.remove (inObserver)
    switch self.prop {
    case .empty, .multiple :
      break
    case .single (let v) :
      v?.componentValueProxy_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································

  final func addEBObserversOf_componentValueProxy_toElementsOfSet (_ inSet : Set<ComponentSymbolInProject>) {
    for managedObject in inSet {
      self.mObserversOf_componentValueProxy.apply { (_ observer : EBEvent) in
        managedObject.componentValueProxy_property.addEBObserver (observer)
      }
    }
  }

  //····················································································································

  final func removeEBObserversOf_componentValueProxy_fromElementsOfSet (_ inSet : Set<ComponentSymbolInProject>) {
    self.mObserversOf_componentValueProxy.apply { (_ observer : EBEvent) in
      observer.postEvent ()
      for managedObject in inSet {
        managedObject.componentValueProxy_property.removeEBObserver (observer)
      }
    }
  }

  //····················································································································
  //   Observer of 'componentName' transient property
  //····················································································································

  let componentName_property = EBTransientProperty_String ()

  var componentName_property_selection : EBSelection <String> {
    switch (self.componentName_property.prop) {
    case .empty :
      return .empty
    case .multiple :
      return .multiple
    case .single (let v) :
      return .single (v)
    }
  }

  //····················································································································
  //   Observer of 'deviceName' transient property
  //····················································································································

  let deviceName_property = EBTransientProperty_String ()

  var deviceName_property_selection : EBSelection <String> {
    switch (self.deviceName_property.prop) {
    case .empty :
      return .empty
    case .multiple :
      return .multiple
    case .single (let v) :
      return .single (v)
    }
  }

  //····················································································································
  //   Observer of 'symbolInfo' transient property
  //····················································································································

  let symbolInfo_property = EBTransientProperty_ComponentSymbolInfo ()

  var symbolInfo_property_selection : EBSelection <ComponentSymbolInfo> {
    switch (self.symbolInfo_property.prop) {
    case .empty :
      return .empty
    case .multiple :
      return .multiple
    case .single (let v) :
      return .single (v)
    }
  }

  //····················································································································
  //   Observer of 'pinPadAssignments' transient property
  //····················································································································

  let pinPadAssignments_property = EBTransientProperty_ThreeStringArray ()

  var pinPadAssignments_property_selection : EBSelection <ThreeStringArray> {
    switch (self.pinPadAssignments_property.prop) {
    case .empty :
      return .empty
    case .multiple :
      return .multiple
    case .single (let v) :
      return .single (v)
    }
  }

  //····················································································································
  //   Observer of 'objectDisplay' transient property
  //····················································································································

  let objectDisplay_property = EBTransientProperty_EBShape ()

  var objectDisplay_property_selection : EBSelection <EBShape> {
    switch (self.objectDisplay_property.prop) {
    case .empty :
      return .empty
    case .multiple :
      return .multiple
    case .single (let v) :
      return .single (v)
    }
  }

  //····················································································································
  //   Observer of 'selectionDisplay' transient property
  //····················································································································

  let selectionDisplay_property = EBTransientProperty_EBShape ()

  var selectionDisplay_property_selection : EBSelection <EBShape> {
    switch (self.selectionDisplay_property.prop) {
    case .empty :
      return .empty
    case .multiple :
      return .multiple
    case .single (let v) :
      return .single (v)
    }
  }

  //····················································································································
  //   Observer of 'symbolInSchematic' transient property
  //····················································································································

  let symbolInSchematic_property = EBTransientProperty_Bool ()

  var symbolInSchematic_property_selection : EBSelection <Bool> {
    switch (self.symbolInSchematic_property.prop) {
    case .empty :
      return .empty
    case .multiple :
      return .multiple
    case .single (let v) :
      return .single (v)
    }
  }

  //····················································································································
  //   Observable toMany property: mPoints
  //····················································································································

  private var mObserversOf_mPoints = EBWeakEventSet ()

  //····················································································································

  var mPoints_property_selection : EBSelection <[PointInSchematic]> {
    if let model = self.propval {
      switch (model.mPoints_property_selection) {
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

  final func addEBObserverOf_mPoints (_ inObserver : EBEvent) {
    self.mObserversOf_mPoints.insert (inObserver)
    if let object = self.propval {
      object.mPoints_property.addEBObserver (inObserver)
    }
  }

  //····················································································································

  final func removeEBObserverOf_mPoints (_ inObserver : EBEvent) {
    self.mObserversOf_mPoints.remove (inObserver)
    if let object = self.propval {
      object.mPoints_property.removeEBObserver (inObserver)
    }
  }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//    TransientObject ComponentSymbolInProject
//----------------------------------------------------------------------------------------------------------------------

class TransientObject_ComponentSymbolInProject : ReadOnlyObject_ComponentSymbolInProject {

  //····················································································································
  //   Data provider
  //····················································································································

  private var mDataProvider : ReadOnlyObject_ComponentSymbolInProject? = nil
  private var mTransientKind : PropertyKind = .empty

  //····················································································································

  func setDataProvider (_ inProvider : ReadOnlyObject_ComponentSymbolInProject?) {
    if self.mDataProvider !== inProvider {
      self.mDataProvider?.detachClient (self)
      self.mDataProvider = inProvider
      self.mDataProvider?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newObject : ComponentSymbolInProject? 
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

  override var prop : EBSelection < ComponentSymbolInProject? > {
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

  override var propval : ComponentSymbolInProject? { return self.mInternalValue }

  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//    ReadWriteObject_ComponentSymbolInProject
//----------------------------------------------------------------------------------------------------------------------

class ReadWriteObject_ComponentSymbolInProject : ReadOnlyObject_ComponentSymbolInProject {

  //····················································································································
 
  func setProp (_ inValue : ComponentSymbolInProject?) { } // Abstract method
  
  //····················································································································

}

//----------------------------------------------------------------------------------------------------------------------
//    Proxy: ProxyObject_ComponentSymbolInProject
//----------------------------------------------------------------------------------------------------------------------

final class ProxyObject_ComponentSymbolInProject : ReadWriteObject_ComponentSymbolInProject {

  //····················································································································

  private var mModel : ReadWriteObject_ComponentSymbolInProject? = nil

  //····················································································································

  func setModel (_ inModel : ReadWriteObject_ComponentSymbolInProject?) {
    if self.mModel !== inModel {
      self.mModel?.detachClient (self)
      self.mModel = inModel
      self.mModel?.attachClient (self)
    }
  }

  //····················································································································

  override func notifyModelDidChange () {
    let newModel : ComponentSymbolInProject?
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

  override func setProp (_ inValue : ComponentSymbolInProject?) {
    self.mModel?.setProp (inValue)
  }

  //····················································································································

  override var prop : EBSelection < ComponentSymbolInProject? > {
    if let model = self.mModel {
      return model.prop
    }else{
      return .empty
    }
  }

  //····················································································································

  override var propval : ComponentSymbolInProject? {
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
//    StoredObject_ComponentSymbolInProject 
//----------------------------------------------------------------------------------------------------------------------

final class StoredObject_ComponentSymbolInProject : ReadWriteObject_ComponentSymbolInProject, EBSignatureObserverProtocol, EBObservableObjectProtocol {

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

  private var mSetOppositeRelationship : Optional < (_ inManagedObject : ComponentSymbolInProject) -> Void > = nil
  private var mResetOppositeRelationship : Optional < (_ inManagedObject : ComponentSymbolInProject) -> Void > = nil

  //····················································································································

  func setOppositeRelationShipFunctions (setter inSetter : @escaping (_ inManagedObject : ComponentSymbolInProject) -> Void,
                                         resetter inResetter : @escaping (_ inManagedObject : ComponentSymbolInProject) -> Void) {
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

  override func notifyModelDidChangeFrom (oldValue inOldValue : ComponentSymbolInProject?) {
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

  override var prop : EBSelection < ComponentSymbolInProject? > {
    if let object = self.mInternalValue {
      return .single (object)
    }else{
      return .empty
    }
  }

  //····················································································································

  override func setProp (_ inValue : ComponentSymbolInProject?) { self.mInternalValue = inValue }

  //····················································································································

  override var propval : ComponentSymbolInProject? { return self.mInternalValue }

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

